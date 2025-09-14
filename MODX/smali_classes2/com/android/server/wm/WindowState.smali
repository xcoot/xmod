.class public final Lcom/android/server/wm/WindowState;
.super Lcom/android/server/wm/WindowContainer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$WindowState;
.implements Lcom/android/server/wm/InputTarget;


# static fields
.field public static final MINIMUM_VISIBLE_WIDTH_IN_DP:I

.field public static final RESIZE_HANDLE_WIDTH_IN_DP:I

.field public static final sTmpSB:Ljava/lang/StringBuilder;

.field public static final sWindowSubLayerComparator:Lcom/android/server/wm/WindowState$1;


# instance fields
.field public final mAboveInsetsState:Landroid/view/InsetsState;

.field public mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mAnimatingExit:Z

.field public mAppFreezing:Z

.field public final mAppOp:I

.field public mAppOpVisibility:Z

.field public final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field public final mBaseLayer:I

.field public final mChildDimmingDialogs:Landroid/util/ArraySet;

.field public final mClient:Landroid/view/IWindow;

.field public mCompatScale:F

.field public final mContext:Landroid/content/Context;

.field public final mCreateTime:J

.field public mDestroying:Z

.field public mDisableFlags:I

.field public mDisableHideSViewOnce:Z

.field public mDragResizing:Z

.field public mDragResizingChangeReported:Z

.field public final mDrawHandlers:Ljava/util/List;

.field public mDrawLock:Landroid/os/PowerManager$WakeLock;

.field public mDrawnStateEvaluated:Z

.field public final mExclusionRects:Ljava/util/List;

.field public mFocusCallbacks:Landroid/os/RemoteCallbackList;

.field public mForceHideNonSystemOverlayWindow:Z

.field public final mForceSeamlesslyRotate:Z

.field public mFrameRateSelectionPriority:I

.field public final mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

.field public mFrozenInsetsState:Landroid/view/InsetsState;

.field public final mGivenContentInsets:Landroid/graphics/Rect;

.field public mGivenInsetsPending:Z

.field public final mGivenTouchableRegion:Landroid/graphics/Region;

.field public final mGivenVisibleInsets:Landroid/graphics/Rect;

.field public mGlobalScale:F

.field public mHScale:F

.field public mHasSurface:Z

.field public mHaveFrame:Z

.field public mHidden:Z

.field public mHiddenWhileProfileLockedState:Z

.field public mHiddenWhileSuspended:Z

.field public final mIgnoreHideNonSystemOverlayWindow:Z

.field public mImeInsetsConsumed:Z

.field public mInRelayout:Z

.field public mInputChannel:Landroid/view/InputChannel;

.field public mInputChannelToken:Landroid/os/IBinder;

.field public final mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

.field public mInvGlobalScale:F

.field public final mIsChildWindow:Z

.field public mIsDimming:Z

.field public mIsDisplayCutoutModeChanged:Z

.field public final mIsFloatingLayer:Z

.field public final mIsImWindow:Z

.field public mIsSurfacePositionPaused:Z

.field public mIsTspNoteMode:Z

.field public final mIsWallpaper:Z

.field public final mKeepClearAreas:Ljava/util/List;

.field public mKeyInterceptionInfo:Lcom/android/internal/policy/KeyInterceptionInfo;

.field public mKeyguardWallpaperTouchAllowed:Z

.field public mLastConfigReportedToClient:Z

.field public final mLastExclusionLogUptimeMillis:[J

.field public mLastFreezeDuration:I

.field public final mLastGrantedExclusionHeight:[I

.field public mLastHScale:F

.field public final mLastReportedActiveControls:Landroid/view/InsetsSourceControl$Array;

.field public final mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field public final mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field public final mLastReportedFrames:Landroid/window/ClientWindowFrames;

.field public final mLastReportedInsetsState:Landroid/view/InsetsState;

.field public final mLastRequestedExclusionHeight:[I

.field public mLastRequestedHeight:I

.field public mLastRequestedWidth:I

.field public mLastShownChangedReported:Z

.field public final mLastSurfaceInsets:Landroid/graphics/Rect;

.field public mLastTitle:Ljava/lang/CharSequence;

.field public mLastVScale:F

.field public final mLayoutAttached:Z

.field public mLayoutNeeded:Z

.field public mLayoutSeq:I

.field public mLayoutWithIme:Z

.field public mLegacyPolicyVisibilityAfterAnim:Z

.field public mLetterboxDirection:I

.field public mMergedLocalInsetsSources:Landroid/util/SparseArray;

.field public final mMinimizedInsets:Landroid/graphics/Rect;

.field public mMovedByResize:Z

.field public mObscured:Z

.field public mOnBackInvokedCallbackInfo:Landroid/window/OnBackInvokedCallbackInfo;

.field public mOrientationChangeRedrawRequestTime:J

.field public mOrientationChangeTimedOut:Z

.field public mOrientationChanging:Z

.field public mOriginalDimAmount:F

.field public mOriginalDimBehind:I

.field public mOriginalDimDuration:J

.field public mOriginalLayoutInDisplayCutoutMode:I

.field public final mOverrideScale:F

.field public final mOwnerCanAddInternalSystemWindow:Z

.field public final mOwnerUid:I

.field public mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

.field public mPermanentlyHidden:Z

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public mPolicyVisibility:I

.field public mPopOverDimmerNeeded:Z

.field public mPrepareSyncSeqId:I

.field public mRedrawForSyncReported:Z

.field public mRelayoutCalled:Z

.field public mRelayoutSeq:I

.field public mRemoveOnExit:Z

.field public mRemoved:Z

.field public mRequestedHeight:I

.field public mRequestedVisibleTypes:I

.field public mRequestedWidth:I

.field public mRestrictionPolicy:Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

.field public final mSeamlessRotationFinishedConsumer:Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;

.field public mSeamlesslyRotated:Z

.field public final mSession:Lcom/android/server/wm/Session;

.field public final mSetSurfacePositionConsumer:Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;

.field public final mShouldHideSViewOnce:Z

.field public mShouldScaleWallpaper:Z

.field public final mShowUserId:I

.field public mSkipExitAnimation:Z

.field public mStartingData:Lcom/android/server/wm/StartingData;

.field public mStringNameCache:Ljava/lang/String;

.field public final mSubLayer:I

.field public mSurfacePlacementNeeded:Z

.field public final mSurfacePosition:Landroid/graphics/Point;

.field public mSurfaceTranslationY:I

.field public mSyncSeqId:I

.field public final mTapExcludeRegion:Landroid/graphics/Region;

.field public final mTempConfiguration:Landroid/content/res/Configuration;

.field public final mTmpMatrix:Landroid/graphics/Matrix;

.field public final mTmpMatrixArray:[F

.field public final mTmpPoint:Landroid/graphics/Point;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpRegion:Landroid/graphics/Region;

.field public final mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mToken:Lcom/android/server/wm/WindowToken;

.field public mTouchableInsets:I

.field public mTspDeadzone:Landroid/os/Bundle;

.field public final mUnrestrictedKeepClearAreas:Ljava/util/List;

.field public mVScale:F

.field public mViewVisibility:I

.field public mWaitToHandleResizing:Z

.field public mWallpaperDisplayOffsetX:I

.field public mWallpaperDisplayOffsetY:I

.field public mWallpaperScale:F

.field public mWallpaperX:F

.field public mWallpaperXStep:F

.field public mWallpaperY:F

.field public mWallpaperYStep:F

.field public mWallpaperZoomOut:F

.field public mWasExiting:Z

.field public final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field public final mWindowFrames:Lcom/android/server/wm/WindowFrames;

.field public final mWindowId:Lcom/android/server/wm/WindowState$WindowId;

.field public mWindowRemovalAllowed:Z

.field public mXOffset:I

.field public mYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x30

    .line 9
    .line 10
    :goto_0
    sput v0, Lcom/android/server/wm/WindowState;->MINIMUM_VISIBLE_WIDTH_IN_DP:I

    .line 11
    .line 12
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_TASK_POSITIONER:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/16 v0, 0x1e

    .line 19
    .line 20
    :goto_1
    sput v0, Lcom/android/server/wm/WindowState;->RESIZE_HANDLE_WIDTH_IN_DP:I

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    .line 28
    .line 29
    new-instance v0, Lcom/android/server/wm/WindowState$1;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/android/server/wm/WindowState;->sWindowSubLayerComparator:Lcom/android/server/wm/WindowState$1;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;ILandroid/view/WindowManager$LayoutParams;IIIZ)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    move-object/from16 v4, p7

    .line 10
    .line 11
    move/from16 v5, p11

    .line 12
    .line 13
    const-string v6, "com.sec.android.sdk.cover.MODE"

    .line 14
    .line 15
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 16
    .line 17
    .line 18
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 19
    .line 20
    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 24
    .line 25
    const/4 v8, 0x3

    .line 26
    iput v8, v1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 27
    .line 28
    const/4 v9, 0x1

    .line 29
    iput-boolean v9, v1, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 30
    .line 31
    iput-boolean v9, v1, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 32
    .line 33
    iput-boolean v9, v1, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 34
    .line 35
    iput-boolean v9, v1, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 36
    .line 37
    iput-boolean v9, v1, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v10

    .line 43
    iput-wide v10, v1, Lcom/android/server/wm/WindowState;->mCreateTime:J

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    iput v10, v1, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 47
    .line 48
    iput v10, v1, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    .line 49
    .line 50
    const/4 v11, -0x1

    .line 51
    iput v11, v1, Lcom/android/server/wm/WindowState;->mRelayoutSeq:I

    .line 52
    .line 53
    iput v11, v1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 54
    .line 55
    new-instance v12, Landroid/util/MergedConfiguration;

    .line 56
    .line 57
    invoke-direct {v12}, Landroid/util/MergedConfiguration;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 61
    .line 62
    new-instance v12, Landroid/window/ClientWindowFrames;

    .line 63
    .line 64
    invoke-direct {v12}, Landroid/window/ClientWindowFrames;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mLastReportedFrames:Landroid/window/ClientWindowFrames;

    .line 68
    .line 69
    new-instance v12, Landroid/view/InsetsState;

    .line 70
    .line 71
    invoke-direct {v12}, Landroid/view/InsetsState;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mLastReportedInsetsState:Landroid/view/InsetsState;

    .line 75
    .line 76
    new-instance v12, Landroid/view/InsetsSourceControl$Array;

    .line 77
    .line 78
    invoke-direct {v12}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mLastReportedActiveControls:Landroid/view/InsetsSourceControl$Array;

    .line 82
    .line 83
    new-instance v12, Landroid/content/res/Configuration;

    .line 84
    .line 85
    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 89
    .line 90
    new-instance v12, Landroid/graphics/Rect;

    .line 91
    .line 92
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 96
    .line 97
    new-instance v12, Landroid/graphics/Rect;

    .line 98
    .line 99
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 103
    .line 104
    new-instance v12, Landroid/graphics/Region;

    .line 105
    .line 106
    invoke-direct {v12}, Landroid/graphics/Region;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 110
    .line 111
    new-instance v12, Landroid/graphics/Rect;

    .line 112
    .line 113
    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mMinimizedInsets:Landroid/graphics/Rect;

    .line 117
    .line 118
    iput v10, v1, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 119
    .line 120
    const/high16 v12, 0x3f800000    # 1.0f

    .line 121
    .line 122
    iput v12, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 123
    .line 124
    iput v12, v1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 125
    .line 126
    iput v12, v1, Lcom/android/server/wm/WindowState;->mCompatScale:F

    .line 127
    .line 128
    iput v12, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 129
    .line 130
    iput v12, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 131
    .line 132
    iput v12, v1, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 133
    .line 134
    iput v12, v1, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 135
    .line 136
    iput v10, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 137
    .line 138
    iput v10, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 139
    .line 140
    iput v12, v1, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    .line 141
    .line 142
    new-instance v12, Landroid/graphics/Matrix;

    .line 143
    .line 144
    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 148
    .line 149
    const/16 v12, 0x9

    .line 150
    .line 151
    new-array v12, v12, [F

    .line 152
    .line 153
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    .line 154
    .line 155
    new-instance v12, Lcom/android/server/wm/WindowFrames;

    .line 156
    .line 157
    invoke-direct {v12}, Lcom/android/server/wm/WindowFrames;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 161
    .line 162
    new-instance v12, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    .line 168
    .line 169
    new-instance v12, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    .line 175
    .line 176
    new-instance v12, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    .line 182
    .line 183
    filled-new-array {v10, v10}, [I

    .line 184
    .line 185
    .line 186
    move-result-object v12

    .line 187
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    .line 188
    .line 189
    filled-new-array {v10, v10}, [I

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    .line 194
    .line 195
    const/4 v12, 0x2

    .line 196
    new-array v13, v12, [J

    .line 197
    .line 198
    fill-array-data v13, :array_0

    .line 199
    .line 200
    .line 201
    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    .line 202
    .line 203
    const/high16 v13, -0x40800000    # -1.0f

    .line 204
    .line 205
    iput v13, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 206
    .line 207
    iput v13, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 208
    .line 209
    iput v13, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 210
    .line 211
    iput v13, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 212
    .line 213
    iput v13, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 214
    .line 215
    const/high16 v13, -0x80000000

    .line 216
    .line 217
    iput v13, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 218
    .line 219
    iput v13, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 220
    .line 221
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 222
    .line 223
    new-instance v13, Landroid/graphics/Rect;

    .line 224
    .line 225
    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 226
    .line 227
    .line 228
    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 229
    .line 230
    new-instance v13, Landroid/graphics/Point;

    .line 231
    .line 232
    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 233
    .line 234
    .line 235
    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    .line 236
    .line 237
    new-instance v13, Landroid/graphics/Region;

    .line 238
    .line 239
    invoke-direct {v13}, Landroid/graphics/Region;-><init>()V

    .line 240
    .line 241
    .line 242
    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mTmpRegion:Landroid/graphics/Region;

    .line 243
    .line 244
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 245
    .line 246
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    .line 247
    .line 248
    new-instance v13, Landroid/view/InsetsState;

    .line 249
    .line 250
    invoke-direct {v13}, Landroid/view/InsetsState;-><init>()V

    .line 251
    .line 252
    .line 253
    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    .line 254
    .line 255
    const/4 v13, 0x0

    .line 256
    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    .line 257
    .line 258
    new-instance v14, Landroid/graphics/Rect;

    .line 259
    .line 260
    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 261
    .line 262
    .line 263
    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    .line 264
    .line 265
    new-instance v15, Landroid/graphics/Point;

    .line 266
    .line 267
    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 268
    .line 269
    .line 270
    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 271
    .line 272
    new-instance v15, Landroid/graphics/Region;

    .line 273
    .line 274
    invoke-direct {v15}, Landroid/graphics/Region;-><init>()V

    .line 275
    .line 276
    .line 277
    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    .line 278
    .line 279
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 280
    .line 281
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    .line 282
    .line 283
    .line 284
    move-result v15

    .line 285
    iput v15, v1, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 286
    .line 287
    iput v11, v1, Lcom/android/server/wm/WindowState;->mFrameRateSelectionPriority:I

    .line 288
    .line 289
    new-instance v15, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    .line 290
    .line 291
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 292
    .line 293
    .line 294
    const/4 v8, 0x0

    .line 295
    invoke-virtual {v15, v10, v10, v8}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->update(IIF)Z

    .line 296
    .line 297
    .line 298
    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    .line 299
    .line 300
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mIsDisplayCutoutModeChanged:Z

    .line 301
    .line 302
    new-instance v8, Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .line 306
    .line 307
    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 308
    .line 309
    new-instance v8, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;

    .line 310
    .line 311
    invoke-direct {v8, v1, v10}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowState;I)V

    .line 312
    .line 313
    .line 314
    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mSeamlessRotationFinishedConsumer:Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;

    .line 315
    .line 316
    new-instance v8, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;

    .line 317
    .line 318
    invoke-direct {v8, v1, v9}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowState;I)V

    .line 319
    .line 320
    .line 321
    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mSetSurfacePositionConsumer:Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;

    .line 322
    .line 323
    new-instance v8, Landroid/util/ArraySet;

    .line 324
    .line 325
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 326
    .line 327
    .line 328
    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    .line 329
    .line 330
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mIsTspNoteMode:Z

    .line 331
    .line 332
    iput v10, v1, Lcom/android/server/wm/WindowState;->mLetterboxDirection:I

    .line 333
    .line 334
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mShouldHideSViewOnce:Z

    .line 335
    .line 336
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    .line 337
    .line 338
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mKeyguardWallpaperTouchAllowed:Z

    .line 339
    .line 340
    move-object/from16 v8, p1

    .line 341
    .line 342
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 343
    .line 344
    invoke-interface {v8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v8

    .line 348
    check-cast v8, Landroid/view/SurfaceControl$Transaction;

    .line 349
    .line 350
    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 351
    .line 352
    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 353
    .line 354
    move-object/from16 v8, p3

    .line 355
    .line 356
    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 357
    .line 358
    move/from16 v8, p6

    .line 359
    .line 360
    iput v8, v1, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 361
    .line 362
    iput-object v2, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 363
    .line 364
    iget-object v8, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 365
    .line 366
    iput-object v8, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 367
    .line 368
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 369
    .line 370
    .line 371
    move-result-object v8

    .line 372
    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 373
    .line 374
    move/from16 v8, p9

    .line 375
    .line 376
    iput v8, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 377
    .line 378
    move/from16 v15, p10

    .line 379
    .line 380
    iput v15, v1, Lcom/android/server/wm/WindowState;->mShowUserId:I

    .line 381
    .line 382
    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    .line 383
    .line 384
    new-instance v15, Lcom/android/server/wm/WindowState$WindowId;

    .line 385
    .line 386
    invoke-direct {v15, v1}, Lcom/android/server/wm/WindowState$WindowId;-><init>(Lcom/android/server/wm/WindowState;)V

    .line 387
    .line 388
    .line 389
    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    .line 390
    .line 391
    invoke-virtual {v7, v4}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 392
    .line 393
    .line 394
    iget-object v15, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 395
    .line 396
    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 397
    .line 398
    .line 399
    move/from16 v14, p8

    .line 400
    .line 401
    iput v14, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 402
    .line 403
    iget-object v14, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 404
    .line 405
    iget-object v15, v14, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 406
    .line 407
    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 408
    .line 409
    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 410
    .line 411
    iput-object v14, v1, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    .line 412
    .line 413
    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    .line 414
    .line 415
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    .line 416
    .line 417
    invoke-static {}, Lcom/android/window/flags/Flags;->activityWindowInfoFlag()Z

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    if-eqz v2, :cond_0

    .line 422
    .line 423
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 424
    .line 425
    if-eqz v2, :cond_0

    .line 426
    .line 427
    new-instance v2, Landroid/window/ActivityWindowInfo;

    .line 428
    .line 429
    invoke-direct {v2}, Landroid/window/ActivityWindowInfo;-><init>()V

    .line 430
    .line 431
    .line 432
    goto :goto_0

    .line 433
    :cond_0
    move-object v2, v13

    .line 434
    :goto_0
    iput-object v2, v1, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 435
    .line 436
    new-instance v2, Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 437
    .line 438
    new-instance v13, Landroid/view/InputWindowHandle;

    .line 439
    .line 440
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 441
    .line 442
    if-eqz v12, :cond_1

    .line 443
    .line 444
    invoke-virtual {v12, v10}, Lcom/android/server/wm/ActivityRecord;->getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;

    .line 445
    .line 446
    .line 447
    move-result-object v12

    .line 448
    goto :goto_1

    .line 449
    :cond_1
    const/4 v12, 0x0

    .line 450
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 451
    .line 452
    .line 453
    move-result v11

    .line 454
    invoke-direct {v13, v12, v11}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    .line 455
    .line 456
    .line 457
    invoke-direct {v2, v13}, Lcom/android/server/wm/InputWindowHandleWrapper;-><init>(Landroid/view/InputWindowHandle;)V

    .line 458
    .line 459
    .line 460
    iput-object v2, v1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 461
    .line 462
    invoke-virtual {v2, v10}, Lcom/android/server/wm/InputWindowHandleWrapper;->setFocusable(Z)V

    .line 463
    .line 464
    .line 465
    iget v11, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 466
    .line 467
    iget v12, v13, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 468
    .line 469
    if-ne v12, v11, :cond_2

    .line 470
    .line 471
    goto :goto_2

    .line 472
    :cond_2
    iput v11, v13, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 473
    .line 474
    iput-boolean v9, v2, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 475
    .line 476
    :goto_2
    iget v11, v0, Lcom/android/server/wm/Session;->mUid:I

    .line 477
    .line 478
    iget v12, v13, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 479
    .line 480
    if-ne v12, v11, :cond_3

    .line 481
    .line 482
    goto :goto_3

    .line 483
    :cond_3
    iput v11, v13, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 484
    .line 485
    iput-boolean v9, v2, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 486
    .line 487
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v11

    .line 491
    invoke-virtual {v2, v11}, Lcom/android/server/wm/InputWindowHandleWrapper;->setName(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    iget-object v11, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 495
    .line 496
    iget-object v12, v13, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    .line 497
    .line 498
    invoke-static {v12, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v12

    .line 502
    if-eqz v12, :cond_4

    .line 503
    .line 504
    goto :goto_4

    .line 505
    :cond_4
    iput-object v11, v13, Landroid/view/InputWindowHandle;->packageName:Ljava/lang/String;

    .line 506
    .line 507
    iput-boolean v9, v2, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 508
    .line 509
    :goto_4
    iget v11, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 510
    .line 511
    iget v12, v13, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 512
    .line 513
    if-ne v12, v11, :cond_5

    .line 514
    .line 515
    goto :goto_5

    .line 516
    :cond_5
    iput v11, v13, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 517
    .line 518
    iput-boolean v9, v2, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 519
    .line 520
    :goto_5
    invoke-static {}, Lcom/android/window/flags/Flags;->surfaceTrustedOverlay()Z

    .line 521
    .line 522
    .line 523
    move-result v11

    .line 524
    if-nez v11, :cond_8

    .line 525
    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isWindowTrustedOverlay()Z

    .line 527
    .line 528
    .line 529
    move-result v11

    .line 530
    iget v12, v13, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 531
    .line 532
    const/16 v10, 0x100

    .line 533
    .line 534
    and-int/2addr v12, v10

    .line 535
    if-eqz v12, :cond_6

    .line 536
    .line 537
    move v12, v9

    .line 538
    goto :goto_6

    .line 539
    :cond_6
    const/4 v12, 0x0

    .line 540
    :goto_6
    if-ne v12, v11, :cond_7

    .line 541
    .line 542
    goto :goto_7

    .line 543
    :cond_7
    invoke-virtual {v13, v10, v11}, Landroid/view/InputWindowHandle;->setInputConfig(IZ)V

    .line 544
    .line 545
    .line 546
    iput-boolean v9, v2, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 547
    .line 548
    :cond_8
    :goto_7
    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 549
    .line 550
    const/16 v11, 0x7dc

    .line 551
    .line 552
    const/16 v12, 0x7db

    .line 553
    .line 554
    const/16 v13, 0x3e8

    .line 555
    .line 556
    if-lt v2, v13, :cond_f

    .line 557
    .line 558
    const/16 v10, 0x7cf

    .line 559
    .line 560
    if-gt v2, v10, :cond_f

    .line 561
    .line 562
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    invoke-static/range {p5 .. p5}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    mul-int/lit16 v2, v2, 0x2710

    .line 570
    .line 571
    add-int/2addr v2, v13

    .line 572
    iput v2, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 573
    .line 574
    iget v2, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 575
    .line 576
    packed-switch v2, :pswitch_data_0

    .line 577
    .line 578
    .line 579
    const/16 v10, 0x44c

    .line 580
    .line 581
    if-eq v2, v10, :cond_9

    .line 582
    .line 583
    const/4 v10, 0x0

    .line 584
    goto :goto_8

    .line 585
    :cond_9
    move v10, v9

    .line 586
    :goto_8
    if-lez v10, :cond_a

    .line 587
    .line 588
    goto :goto_9

    .line 589
    :cond_a
    const-string v10, "Unknown sub-window type: "

    .line 590
    .line 591
    const-string v13, "WindowManager"

    .line 592
    .line 593
    invoke-static {v2, v10, v13}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    const/4 v10, 0x0

    .line 597
    goto :goto_9

    .line 598
    :pswitch_0
    const/4 v10, 0x3

    .line 599
    goto :goto_9

    .line 600
    :pswitch_1
    const/4 v10, -0x1

    .line 601
    goto :goto_9

    .line 602
    :pswitch_2
    const/4 v10, 0x2

    .line 603
    goto :goto_9

    .line 604
    :pswitch_3
    const/4 v2, -0x2

    .line 605
    move v10, v2

    .line 606
    goto :goto_9

    .line 607
    :pswitch_4
    move v10, v9

    .line 608
    :goto_9
    iput v10, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 609
    .line 610
    iput-boolean v9, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 611
    .line 612
    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 613
    .line 614
    const/16 v10, 0x3eb

    .line 615
    .line 616
    if-eq v2, v10, :cond_b

    .line 617
    .line 618
    move v2, v9

    .line 619
    goto :goto_a

    .line 620
    :cond_b
    const/4 v2, 0x0

    .line 621
    :goto_a
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 622
    .line 623
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 624
    .line 625
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 626
    .line 627
    if-eq v2, v12, :cond_d

    .line 628
    .line 629
    if-ne v2, v11, :cond_c

    .line 630
    .line 631
    goto :goto_b

    .line 632
    :cond_c
    const/4 v10, 0x0

    .line 633
    goto :goto_c

    .line 634
    :cond_d
    :goto_b
    move v10, v9

    .line 635
    :goto_c
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 636
    .line 637
    const/16 v10, 0x7dd

    .line 638
    .line 639
    if-ne v2, v10, :cond_e

    .line 640
    .line 641
    move v2, v9

    .line 642
    goto :goto_d

    .line 643
    :cond_e
    const/4 v2, 0x0

    .line 644
    :goto_d
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 645
    .line 646
    goto :goto_11

    .line 647
    :cond_f
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 648
    .line 649
    .line 650
    invoke-static/range {p0 .. p0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    .line 651
    .line 652
    .line 653
    move-result v2

    .line 654
    mul-int/lit16 v2, v2, 0x2710

    .line 655
    .line 656
    add-int/2addr v2, v13

    .line 657
    iput v2, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 658
    .line 659
    const/4 v2, 0x0

    .line 660
    iput v2, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 661
    .line 662
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 663
    .line 664
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 665
    .line 666
    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 667
    .line 668
    if-eq v2, v12, :cond_11

    .line 669
    .line 670
    if-ne v2, v11, :cond_10

    .line 671
    .line 672
    goto :goto_e

    .line 673
    :cond_10
    const/4 v10, 0x0

    .line 674
    goto :goto_f

    .line 675
    :cond_11
    :goto_e
    move v10, v9

    .line 676
    :goto_f
    iput-boolean v10, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 677
    .line 678
    const/16 v10, 0x7dd

    .line 679
    .line 680
    if-ne v2, v10, :cond_12

    .line 681
    .line 682
    move v2, v9

    .line 683
    goto :goto_10

    .line 684
    :cond_12
    const/4 v2, 0x0

    .line 685
    :goto_10
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 686
    .line 687
    :goto_11
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 688
    .line 689
    if-nez v2, :cond_14

    .line 690
    .line 691
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 692
    .line 693
    if-eqz v2, :cond_13

    .line 694
    .line 695
    goto :goto_12

    .line 696
    :cond_13
    const/4 v2, 0x0

    .line 697
    goto :goto_13

    .line 698
    :cond_14
    :goto_12
    move v2, v9

    .line 699
    :goto_13
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 700
    .line 701
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 702
    .line 703
    if-eqz v2, :cond_15

    .line 704
    .line 705
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    .line 706
    .line 707
    if-eqz v2, :cond_15

    .line 708
    .line 709
    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 710
    .line 711
    const/high16 v10, 0x80000

    .line 712
    .line 713
    or-int/2addr v2, v10

    .line 714
    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 715
    .line 716
    :cond_15
    new-instance v2, Lcom/android/server/wm/WindowStateAnimator;

    .line 717
    .line 718
    invoke-direct {v2, v1}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    .line 719
    .line 720
    .line 721
    iput-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 722
    .line 723
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 724
    .line 725
    iput v10, v2, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 726
    .line 727
    const/4 v2, -0x1

    .line 728
    iput v2, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 729
    .line 730
    iput v2, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 731
    .line 732
    iput v2, v1, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 733
    .line 734
    iput v2, v1, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 735
    .line 736
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 737
    .line 738
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 739
    .line 740
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    .line 741
    .line 742
    iget-object v10, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 743
    .line 744
    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    .line 745
    .line 746
    invoke-virtual {v2, v0, v10, v9}, Lcom/android/server/wm/CompatModePackages;->getCompatScale(ILjava/lang/String;Z)F

    .line 747
    .line 748
    .line 749
    move-result v0

    .line 750
    iput v0, v1, Lcom/android/server/wm/WindowState;->mOverrideScale:F

    .line 751
    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->updateGlobalScale()V

    .line 753
    .line 754
    .line 755
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 756
    .line 757
    const/16 v2, 0x7f6

    .line 758
    .line 759
    if-ne v0, v2, :cond_16

    .line 760
    .line 761
    if-nez v5, :cond_16

    .line 762
    .line 763
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 764
    .line 765
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 766
    .line 767
    iget-object v2, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 768
    .line 769
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mIgnoreHideNonSystemOverlayWindowApps:Ljava/util/List;

    .line 770
    .line 771
    check-cast v0, Ljava/util/ArrayList;

    .line 772
    .line 773
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    if-eqz v0, :cond_16

    .line 778
    .line 779
    move v0, v9

    .line 780
    goto :goto_14

    .line 781
    :cond_16
    const/4 v0, 0x0

    .line 782
    :goto_14
    if-eqz v0, :cond_1a

    .line 783
    .line 784
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 785
    .line 786
    if-eqz v0, :cond_19

    .line 787
    .line 788
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 789
    .line 790
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 791
    .line 792
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 793
    .line 794
    .line 795
    move-result v0

    .line 796
    if-nez v0, :cond_18

    .line 797
    .line 798
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 799
    .line 800
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 801
    .line 802
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 803
    .line 804
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 805
    .line 806
    .line 807
    move-result v0

    .line 808
    if-eqz v0, :cond_17

    .line 809
    .line 810
    goto :goto_15

    .line 811
    :cond_17
    const/4 v0, 0x0

    .line 812
    goto :goto_16

    .line 813
    :cond_18
    :goto_15
    move v0, v9

    .line 814
    goto :goto_16

    .line 815
    :cond_19
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 816
    .line 817
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 818
    .line 819
    iget-object v2, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 820
    .line 821
    const-wide/16 v19, 0x0

    .line 822
    .line 823
    invoke-static/range {p9 .. p9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 824
    .line 825
    .line 826
    move-result v18

    .line 827
    move-object/from16 v16, v0

    .line 828
    .line 829
    move/from16 v17, p9

    .line 830
    .line 831
    move-object/from16 v21, v2

    .line 832
    .line 833
    invoke-virtual/range {v16 .. v21}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    if-eqz v0, :cond_17

    .line 838
    .line 839
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 840
    .line 841
    .line 842
    move-result v2

    .line 843
    if-nez v2, :cond_18

    .line 844
    .line 845
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 846
    .line 847
    .line 848
    move-result v0

    .line 849
    if-eqz v0, :cond_17

    .line 850
    .line 851
    goto :goto_15

    .line 852
    :cond_1a
    :goto_16
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIgnoreHideNonSystemOverlayWindow:Z

    .line 853
    .line 854
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 855
    .line 856
    iput v0, v1, Lcom/android/server/wm/WindowState;->mOriginalLayoutInDisplayCutoutMode:I

    .line 857
    .line 858
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 859
    .line 860
    and-int/lit8 v0, v0, 0x8

    .line 861
    .line 862
    if-eqz v0, :cond_1b

    .line 863
    .line 864
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 865
    .line 866
    iget-boolean v2, v0, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    .line 867
    .line 868
    if-eq v2, v9, :cond_1b

    .line 869
    .line 870
    iput-boolean v9, v0, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    .line 871
    .line 872
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 873
    .line 874
    if-eqz v2, :cond_1b

    .line 875
    .line 876
    const/4 v4, 0x0

    .line 877
    invoke-virtual {v2, v0, v4}, Lcom/android/server/wm/DisplayContent;->startFixedRotationTransform(Lcom/android/server/wm/WindowToken;I)V

    .line 878
    .line 879
    .line 880
    :cond_1b
    sget-boolean v0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 881
    .line 882
    if-eqz v0, :cond_1f

    .line 883
    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 885
    .line 886
    .line 887
    move-result-object v0

    .line 888
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 889
    .line 890
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 891
    .line 892
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 893
    .line 894
    if-eqz v0, :cond_1f

    .line 895
    .line 896
    :try_start_0
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    iget-object v2, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 901
    .line 902
    const/16 v4, 0x80

    .line 903
    .line 904
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 905
    .line 906
    .line 907
    move-result-object v0

    .line 908
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 909
    .line 910
    if-eqz v0, :cond_1c

    .line 911
    .line 912
    const/4 v2, 0x0

    .line 913
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 914
    .line 915
    .line 916
    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    goto :goto_17

    .line 918
    :catch_0
    move-exception v0

    .line 919
    goto :goto_18

    .line 920
    :cond_1c
    const/4 v0, 0x0

    .line 921
    :goto_17
    move v2, v0

    .line 922
    goto :goto_19

    .line 923
    :goto_18
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 924
    .line 925
    .line 926
    const/4 v2, 0x0

    .line 927
    :goto_19
    if-nez v2, :cond_1d

    .line 928
    .line 929
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 930
    .line 931
    if-eqz v0, :cond_1d

    .line 932
    .line 933
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 934
    .line 935
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 936
    .line 937
    if-eqz v0, :cond_1d

    .line 938
    .line 939
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 940
    .line 941
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 942
    .line 943
    if-ne v4, v9, :cond_1d

    .line 944
    .line 945
    const/4 v4, 0x0

    .line 946
    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 947
    .line 948
    .line 949
    move-result v2

    .line 950
    :cond_1d
    if-eqz v2, :cond_1e

    .line 951
    .line 952
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 953
    .line 954
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 955
    .line 956
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    .line 957
    .line 958
    .line 959
    move-result v0

    .line 960
    const/4 v2, 0x2

    .line 961
    if-ne v0, v2, :cond_1f

    .line 962
    .line 963
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 968
    .line 969
    packed-switch v0, :pswitch_data_1

    .line 970
    .line 971
    .line 972
    const/4 v2, 0x0

    .line 973
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mShouldHideSViewOnce:Z

    .line 974
    .line 975
    iput-boolean v9, v1, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    .line 976
    .line 977
    goto :goto_1a

    .line 978
    :pswitch_5
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDisableHideSViewOnce:Z

    .line 979
    .line 980
    xor-int/2addr v0, v9

    .line 981
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mShouldHideSViewOnce:Z

    .line 982
    .line 983
    :cond_1f
    :goto_1a
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/UdcCutoutPolicy;->updateUseLayoutInUdcCutoutIfNeeded(Lcom/android/server/wm/WindowContainer;)V

    .line 984
    .line 985
    .line 986
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 987
    .line 988
    if-eqz v0, :cond_21

    .line 989
    .line 990
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    .line 991
    .line 992
    aget-boolean v0, v0, v9

    .line 993
    .line 994
    if-eqz v0, :cond_20

    .line 995
    .line 996
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v0

    .line 1000
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v2

    .line 1004
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1005
    .line 1006
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    const-wide v5, 0x70e7831d52b837f9L    # 7.475827382670387E235

    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    const/4 v2, 0x0

    .line 1016
    const/4 v7, 0x0

    .line 1017
    move-object/from16 p6, v4

    .line 1018
    .line 1019
    move-wide/from16 p7, v5

    .line 1020
    .line 1021
    move/from16 p9, v2

    .line 1022
    .line 1023
    move-object/from16 p10, v7

    .line 1024
    .line 1025
    move-object/from16 p11, v0

    .line 1026
    .line 1027
    invoke-static/range {p6 .. p11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1028
    .line 1029
    .line 1030
    :cond_20
    sget-object v0, Lcom/android/server/wm/WindowState;->sWindowSubLayerComparator:Lcom/android/server/wm/WindowState$1;

    .line 1031
    .line 1032
    invoke-virtual {v3, v1, v0}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 1033
    .line 1034
    .line 1035
    :cond_21
    return-void

    .line 1036
    nop

    .line 1037
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final adjustRegionInFreefromWindowMode(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

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
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStashedBounds()Landroid/graphics/Rect;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 30
    .line 31
    sget v0, Lcom/android/server/wm/WindowState;->RESIZE_HANDLE_WIDTH_IN_DP:I

    .line 32
    .line 33
    invoke-static {v0, p0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    neg-int p0, p0

    .line 38
    invoke-virtual {p1, p0, p0}, Landroid/graphics/Rect;->inset(II)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final adjustStartingWindowFlags()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 17
    .line 18
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 19
    .line 20
    const v2, -0x480002

    .line 21
    .line 22
    .line 23
    and-int/2addr v1, v2

    .line 24
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 25
    .line 26
    const v2, 0x480001

    .line 27
    .line 28
    .line 29
    and-int/2addr v0, v2

    .line 30
    or-int/2addr v0, v1

    .line 31
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

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
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent$ImeContainer;->forAllWindowForce(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method public final applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    :cond_0
    return v0

    .line 17
    :cond_1
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_3
    :goto_0
    return v0
.end method

.method public final applyWithNextDraw(ILjava/util/function/Consumer;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 2
    .line 3
    const-string v1, "WindowManager"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "applyWithNextDraw with mSyncState="

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v2, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, ", "

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v2, 0x8

    .line 31
    .line 32
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    add-int/2addr v0, v2

    .line 50
    iput v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 51
    .line 52
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 53
    .line 54
    new-instance v4, Lcom/android/server/wm/WindowState$DrawHandler;

    .line 55
    .line 56
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    iput v5, v4, Lcom/android/server/wm/WindowState$DrawHandler;->mType:I

    .line 61
    .line 62
    iput v0, v4, Lcom/android/server/wm/WindowState$DrawHandler;->mSeqId:I

    .line 63
    .line 64
    iput-object p2, v4, Lcom/android/server/wm/WindowState$DrawHandler;->mConsumer:Ljava/util/function/Consumer;

    .line 65
    .line 66
    check-cast v3, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 72
    .line 73
    check-cast p2, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    sub-int/2addr v0, v2

    .line 80
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Lcom/android/server/wm/WindowState$DrawHandler;

    .line 85
    .line 86
    iput p1, p2, Lcom/android/server/wm/WindowState$DrawHandler;->mType:I

    .line 87
    .line 88
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 89
    .line 90
    if-eqz p1, :cond_1

    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 93
    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->mIsEnteringPipFromSplit:Z

    .line 97
    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    iput-boolean v2, p2, Lcom/android/server/wm/WindowState$DrawHandler;->mIsEnteringPipFromSplit:Z

    .line 101
    .line 102
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string p2, "applyWithNextDraw, mSyncSeqId="

    .line 105
    .line 106
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget p2, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p2, ", win="

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p2, ", caller="

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const/4 p2, 0x6

    .line 128
    invoke-static {p2, p1, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 136
    .line 137
    const/16 p2, 0x40

    .line 138
    .line 139
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    const-wide/16 v0, 0x1388

    .line 147
    .line 148
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method public final areAppWindowBoundsLetterboxed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isStartingWindowAssociatedToTask()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final asWindowState()Lcom/android/server/wm/WindowState;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_4

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 18
    .line 19
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 20
    .line 21
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 22
    .line 23
    const/16 v4, 0x3e9

    .line 24
    .line 25
    if-ne v3, v4, :cond_1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, -0x2

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 41
    .line 42
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {v2, p1, v4}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/16 v4, 0x3ec

    .line 51
    .line 52
    if-ne v3, v4, :cond_3

    .line 53
    .line 54
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    const/4 v4, -0x1

    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 64
    .line 65
    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 66
    .line 67
    iget-object v3, v3, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 68
    .line 69
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v2, p1, v4}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 78
    .line 79
    .line 80
    :goto_1
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    return-void
.end method

.method public final assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_BUG_FIX:Z

    .line 6
    .line 7
    const v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iget-object p2, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 35
    .line 36
    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 43
    .line 44
    const/16 v1, 0x8e9

    .line 45
    .line 46
    if-ne v0, v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v1, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-direct {v1, v2}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    iget-object p2, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 78
    .line 79
    const/4 v0, -0x1

    .line 80
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    goto/16 :goto_2

    .line 93
    .line 94
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_4

    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    const/4 v2, 0x0

    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_7

    .line 123
    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 127
    .line 128
    if-eqz v0, :cond_7

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_6

    .line 139
    .line 140
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    :cond_6
    if-eqz v1, :cond_b

    .line 145
    .line 146
    if-eq v1, p0, :cond_b

    .line 147
    .line 148
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 149
    .line 150
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 151
    .line 152
    if-ne v0, v2, :cond_b

    .line 153
    .line 154
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 155
    .line 156
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 157
    .line 158
    const/4 v2, 0x3

    .line 159
    if-eq v0, v2, :cond_b

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v0, :cond_b

    .line 166
    .line 167
    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-gtz v0, :cond_b

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    if-eqz v0, :cond_8

    .line 183
    .line 184
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    goto :goto_0

    .line 189
    :cond_8
    move-object v0, v1

    .line 190
    :goto_0
    const/high16 v3, 0x20000

    .line 191
    .line 192
    if-eqz v0, :cond_9

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_9

    .line 199
    .line 200
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 201
    .line 202
    if-nez v0, :cond_9

    .line 203
    .line 204
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 205
    .line 206
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 207
    .line 208
    const/16 v5, 0x7f6

    .line 209
    .line 210
    if-ne v4, v5, :cond_9

    .line 211
    .line 212
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 213
    .line 214
    and-int/2addr v0, v3

    .line 215
    if-eqz v0, :cond_9

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 219
    .line 220
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 221
    .line 222
    const v4, 0x20008

    .line 223
    .line 224
    .line 225
    and-int/2addr v0, v4

    .line 226
    if-ne v0, v3, :cond_b

    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isTrustedOverlay()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_b

    .line 233
    .line 234
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    .line 235
    .line 236
    if-eqz v0, :cond_b

    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-eqz v0, :cond_a

    .line 247
    .line 248
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    :cond_a
    if-eqz v1, :cond_b

    .line 253
    .line 254
    if-eq v1, p0, :cond_b

    .line 255
    .line 256
    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-gtz v0, :cond_b

    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    .line 267
    .line 268
    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayArea;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-ltz v0, :cond_b

    .line 273
    .line 274
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    .line 279
    .line 280
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    const/4 v0, 0x1

    .line 285
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :cond_b
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 290
    .line 291
    .line 292
    return-void
.end method

.method public final canBeHiddenByKeyguard()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {v0, v1}, Lcom/android/server/wm/ExtraDisplayPolicy;->hasCoverHome(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 27
    .line 28
    const/16 v2, 0x7d0

    .line 29
    .line 30
    if-eq v0, v2, :cond_3

    .line 31
    .line 32
    const/16 v2, 0x7dd

    .line 33
    .line 34
    if-eq v0, v2, :cond_3

    .line 35
    .line 36
    const/16 v2, 0x7e3

    .line 37
    .line 38
    if-eq v0, v2, :cond_3

    .line 39
    .line 40
    const/16 v2, 0x7f8

    .line 41
    .line 42
    if-eq v0, v2, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 53
    .line 54
    if-ne v0, p0, :cond_2

    .line 55
    .line 56
    return v1

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {p0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-ge v0, p0, :cond_3

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    :cond_3
    return v1
.end method

.method public final canBeImeTarget()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

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
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 17
    .line 18
    const/16 v2, 0x7f4

    .line 19
    .line 20
    if-ne v0, v2, :cond_2

    .line 21
    .line 22
    return v1

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable(Z)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    return v1

    .line 35
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_5

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_5

    .line 46
    .line 47
    return v1

    .line 48
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 49
    .line 50
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 51
    .line 52
    const/4 v4, 0x3

    .line 53
    if-ne v3, v4, :cond_6

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_6
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 57
    .line 58
    const v3, 0x20008

    .line 59
    .line 60
    .line 61
    and-int/2addr v2, v3

    .line 62
    if-eqz v2, :cond_7

    .line 63
    .line 64
    if-eq v2, v3, :cond_7

    .line 65
    .line 66
    return v1

    .line 67
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 70
    .line 71
    if-eqz v0, :cond_8

    .line 72
    .line 73
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_8

    .line 80
    .line 81
    return v1

    .line 82
    :cond_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 83
    .line 84
    if-eqz v0, :cond_9

    .line 85
    .line 86
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 87
    .line 88
    if-eqz v2, :cond_9

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_9

    .line 95
    .line 96
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 97
    .line 98
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_9

    .line 105
    .line 106
    return v1

    .line 107
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_a

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_b

    .line 118
    .line 119
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 120
    .line 121
    if-eqz v2, :cond_b

    .line 122
    .line 123
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 124
    .line 125
    if-eqz v2, :cond_b

    .line 126
    .line 127
    if-eqz v0, :cond_a

    .line 128
    .line 129
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 132
    .line 133
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-eqz p0, :cond_b

    .line 138
    .line 139
    :cond_a
    const/4 v1, 0x1

    .line 140
    :cond_b
    return v1
.end method

.method public final canPlayMoveAnimation()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasMovementAnimations()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->hasMovementAnimations()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 49
    .line 50
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 51
    .line 52
    and-int/lit8 v2, v2, 0x40

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-static {p0}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->shouldPlayMoveAnimation(Lcom/android/server/wm/WindowState;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    .line 63
    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 69
    .line 70
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 71
    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 75
    .line 76
    if-nez p0, :cond_3

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    :cond_3
    return v1
.end method

.method public final canReceiveKeys(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 7
    .line 8
    invoke-virtual {v2, v0}, Lcom/android/server/wm/TransitionController;->shouldKeepFocus(Lcom/android/server/wm/WindowContainer;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 23
    .line 24
    if-nez v0, :cond_5

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 27
    .line 28
    if-nez v0, :cond_5

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 31
    .line 32
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 33
    .line 34
    and-int/lit8 v0, v0, 0x8

    .line 35
    .line 36
    if-nez v0, :cond_5

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable(Z)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 61
    .line 62
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    .line 63
    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    if-nez p1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/Display;->isTrusted()Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_3

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    move v1, v2

    .line 105
    :cond_4
    :goto_0
    return v1

    .line 106
    :cond_5
    :goto_1
    return v2
.end method

.method public final canReceiveTouchInput()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lcom/android/server/wm/TransitionController;->shouldKeepFocus(Lcom/android/server/wm/WindowContainer;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 27
    .line 28
    iget-object v3, v0, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 29
    .line 30
    iget-boolean v4, v3, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController;->mWaitTransitionFinish:Lcom/android/server/wm/Transition;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isTarget(Lcom/android/server/wm/WindowContainer;Z)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    return v5

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 59
    .line 60
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_4

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    :goto_0
    move v1, v5

    .line 87
    :cond_5
    :goto_1
    return v1
.end method

.method public final canScreenshotIme()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 6
    .line 7
    return p0
.end method

.method public final canShowTransient()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 4
    .line 5
    iget p0, p0, Landroid/view/InsetsFlags;->behavior:I

    .line 6
    .line 7
    and-int/lit8 p0, p0, 0x2

    .line 8
    .line 9
    if-eqz p0, :cond_0

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

.method public final canShowWhenLocked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 11
    .line 12
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 13
    .line 14
    const/high16 v0, 0x80000

    .line 15
    .line 16
    and-int/2addr p0, v0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final clearAnimatingFlags()Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 12
    .line 13
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 14
    .line 15
    aget-boolean v0, v0, v2

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const-wide v4, -0x2bc22b9e1984c082L    # -6.371567912934993E97

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    move v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v0, v2

    .line 42
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move v2, v1

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v2, v0

    .line 58
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    sub-int/2addr v0, v1

    .line 65
    :goto_2
    if-ltz v0, :cond_4

    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearAnimatingFlags()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    or-int/2addr v2, v1

    .line 80
    add-int/lit8 v0, v0, -0x1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    return v2
.end method

.method public final clearPolicyVisibilityFlag(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 2
    .line 3
    not-int p1, p1

    .line 4
    and-int/2addr p1, v0

    .line 5
    iput p1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final commitFinishDrawing(Landroid/view/SurfaceControl$Transaction;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/android/window/flags/Flags;->removePrepareSurfaceInPlacement()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 19
    .line 20
    iget v3, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 21
    .line 22
    const/4 v4, 0x4

    .line 23
    if-ne v3, v4, :cond_0

    .line 24
    .line 25
    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    move v0, v2

    .line 30
    :cond_0
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sub-int/2addr v1, v2

    .line 44
    :goto_0
    if-ltz v1, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->commitFinishDrawing(Landroid/view/SurfaceControl$Transaction;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    or-int/2addr v0, v2

    .line 59
    add-int/lit8 v1, v1, -0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeash()Landroid/view/SurfaceControl;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 73
    .line 74
    .line 75
    :cond_3
    return v0
.end method

.method public final computeDragResizing()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

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
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-boolean v2, v2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x2

    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    return v1

    .line 32
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 33
    .line 34
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 35
    .line 36
    const/4 v3, -0x1

    .line 37
    if-ne v2, v3, :cond_4

    .line 38
    .line 39
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 40
    .line 41
    if-eq p0, v3, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    iget-boolean p0, v0, Lcom/android/server/wm/Task;->mDragResizing:Z

    .line 45
    .line 46
    if-eqz p0, :cond_4

    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    return p0

    .line 50
    :cond_4
    :goto_0
    return v1
.end method

.method public final consumeInsetsChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/wm/WindowFrames;->mInsetsChanged:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/android/server/wm/WindowFrames;->mInsetsChanged:Z

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 11
    .line 12
    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 21
    .line 22
    const/16 v0, 0x42

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final cropRegionToRootTaskBoundsIfNeeded(Landroid/graphics/Region;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToRootTaskBounds()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-boolean v1, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->adjustRegionInFreefromWindowMode(Landroid/graphics/Rect;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 36
    .line 37
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 38
    .line 39
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void
.end method

.method public final destroySurface(ZZ)Z
    .locals 20

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
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x1

    .line 19
    sub-int/2addr v4, v5

    .line 20
    const/4 v6, 0x0

    .line 21
    move v7, v6

    .line 22
    :goto_0
    if-ltz v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 29
    .line 30
    invoke-virtual {v8, v1, v2}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    or-int/2addr v7, v8

    .line 35
    add-int/lit8 v4, v4, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-nez v2, :cond_1

    .line 39
    .line 40
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .line 41
    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    return v7

    .line 47
    :cond_1
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 48
    .line 49
    if-eqz v3, :cond_7

    .line 50
    .line 51
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_ADD_REMOVE_enabled:[Z

    .line 52
    .line 53
    const/4 v4, 0x4

    .line 54
    aget-boolean v3, v3, v4

    .line 55
    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .line 63
    .line 64
    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 65
    .line 66
    iget v8, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 67
    .line 68
    int-to-long v8, v8

    .line 69
    const/4 v10, 0x7

    .line 70
    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v13

    .line 78
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 79
    .line 80
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    move-object v8, v2

    .line 101
    move-object v9, v10

    .line 102
    move-object v10, v3

    .line 103
    filled-new-array/range {v7 .. v13}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v19

    .line 107
    const/16 v17, 0x7fc

    .line 108
    .line 109
    const-string/jumbo v18, "win=%s destroySurfaces: appStopped=%b cleanupOnResume=%b win.mWindowRemovalAllowed=%b win.mRemoveOnExit=%b win.mViewVisibility=%d caller=%s"

    .line 110
    .line 111
    .line 112
    const-wide v15, -0x5083360df8a0cf61L    # -6.069954961015709E-80

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    if-eqz v1, :cond_3

    .line 121
    .line 122
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 123
    .line 124
    if-eqz v2, :cond_4

    .line 125
    .line 126
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 127
    .line 128
    .line 129
    :cond_4
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 130
    .line 131
    if-eqz v2, :cond_5

    .line 132
    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 134
    .line 135
    .line 136
    :cond_5
    if-eqz v1, :cond_6

    .line 137
    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 139
    .line 140
    .line 141
    :cond_6
    iput-boolean v6, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 142
    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_8

    .line 154
    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 160
    .line 161
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_8

    .line 168
    .line 169
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_7
    move v5, v7

    .line 178
    :cond_8
    :goto_1
    return v5
.end method

.method public final destroySurfaceUnchecked()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 15
    .line 16
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 17
    .line 18
    aget-boolean v0, v1, v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 27
    .line 28
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const-wide v2, 0x65d21f3ff1173ee3L    # 3.0079123685830877E182

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->syncNextBuffer()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    const v1, 0x7fffffff

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowState;->finishDrawing(Landroid/view/SurfaceControl$Transaction;I)Z

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 58
    .line 59
    const/16 v1, 0x40

    .line 60
    .line 61
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method public final disposeInputChannel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mKeyInterceptionInfoForToken:Ljava/util/Map;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 18
    .line 19
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 41
    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final dropBufferFrom(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 14
    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    if-eqz p1, :cond_2

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "dropBufferFrom, t="

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p1, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ", win="

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, ", caller="

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x3

    .line 46
    const-string v2, "WindowManager"

    .line 47
    .line 48
    invoke-static {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->unsetBuffer(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 5
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    const-string v0, "mDisplayId="

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, " rootTaskId="

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    const/4 v1, -0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 43
    .line 44
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v1, " mSession="

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, " mClient="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 72
    .line 73
    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string/jumbo v1, "mOwnerUid="

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, " showForAllUsers="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->showForAllUsers()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, " package="

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 124
    .line 125
    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v1, " appop="

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 136
    .line 137
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v1, "mAttrs="

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 165
    .line 166
    invoke-virtual {v1, p2}, Landroid/view/WindowManager$LayoutParams;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v1, "Requested w="

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v1, " h="

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 204
    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v2, " mLayoutSeq="

    .line 209
    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 214
    .line 215
    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 216
    .line 217
    .line 218
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 219
    .line 220
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 221
    .line 222
    if-ne v0, v2, :cond_2

    .line 223
    .line 224
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 225
    .line 226
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 227
    .line 228
    if-eq v0, v2, :cond_3

    .line 229
    .line 230
    :cond_2
    const-string v0, "LastRequested w="

    .line 231
    .line 232
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 237
    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 245
    .line 246
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 247
    .line 248
    .line 249
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 250
    .line 251
    if-nez v0, :cond_4

    .line 252
    .line 253
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 254
    .line 255
    if-eqz v0, :cond_5

    .line 256
    .line 257
    :cond_4
    const-string/jumbo v0, "mParentWindow="

    .line 258
    .line 259
    .line 260
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v1, " mLayoutAttached="

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 277
    .line 278
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 279
    .line 280
    .line 281
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 282
    .line 283
    if-nez v0, :cond_6

    .line 284
    .line 285
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 286
    .line 287
    if-nez v0, :cond_6

    .line 288
    .line 289
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 290
    .line 291
    if-eqz v0, :cond_7

    .line 292
    .line 293
    :cond_6
    const-string v0, "mIsImWindow="

    .line 294
    .line 295
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v1, " mIsWallpaper="

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v1, " mIsFloatingLayer="

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 320
    .line 321
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 322
    .line 323
    .line 324
    :cond_7
    if-eqz p3, :cond_8

    .line 325
    .line 326
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    const-string v0, "mBaseLayer="

    .line 330
    .line 331
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    iget v0, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 335
    .line 336
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 337
    .line 338
    .line 339
    const-string v0, " mSubLayer="

    .line 340
    .line 341
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 345
    .line 346
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 347
    .line 348
    .line 349
    :cond_8
    if-eqz p3, :cond_a

    .line 350
    .line 351
    const-string/jumbo v0, "mToken="

    .line 352
    .line 353
    .line 354
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 371
    .line 372
    if-eqz v0, :cond_9

    .line 373
    .line 374
    const-string v0, "mActivityRecord="

    .line 375
    .line 376
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 381
    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    const-string v1, "drawnStateEvaluated="

    .line 401
    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    .line 406
    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string/jumbo v1, "mightAffectAllDrawn="

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    :cond_9
    const-string/jumbo v0, "mViewVisibility=0x"

    .line 446
    .line 447
    .line 448
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 453
    .line 454
    const-string v2, " mHaveFrame="

    .line 455
    .line 456
    invoke-static {v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 460
    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    const-string v1, " mObscured="

    .line 465
    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    .line 470
    .line 471
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 472
    .line 473
    .line 474
    iget v0, p0, Lcom/android/server/wm/WindowState;->mDisableFlags:I

    .line 475
    .line 476
    if-eqz v0, :cond_a

    .line 477
    .line 478
    const-string v0, "mDisableFlags="

    .line 479
    .line 480
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    const-class v1, Landroid/view/View;

    .line 485
    .line 486
    const-string/jumbo v2, "mSystemUiVisibility"

    .line 487
    .line 488
    .line 489
    iget v3, p0, Lcom/android/server/wm/WindowState;->mDisableFlags:I

    .line 490
    .line 491
    invoke-static {v1, v2, v3}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    if-eqz v0, :cond_b

    .line 510
    .line 511
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 512
    .line 513
    if-eqz v0, :cond_b

    .line 514
    .line 515
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 516
    .line 517
    if-eqz v0, :cond_b

    .line 518
    .line 519
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    if-nez v0, :cond_b

    .line 524
    .line 525
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    .line 526
    .line 527
    if-nez v0, :cond_b

    .line 528
    .line 529
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    .line 530
    .line 531
    if-nez v0, :cond_b

    .line 532
    .line 533
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    .line 534
    .line 535
    if-eqz v0, :cond_c

    .line 536
    .line 537
    :cond_b
    const-string/jumbo v0, "mPolicyVisibility="

    .line 538
    .line 539
    .line 540
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    const-string v1, " mLegacyPolicyVisibilityAfterAnim="

    .line 552
    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 557
    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    const-string v1, " mAppOpVisibility="

    .line 562
    .line 563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 567
    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    const-string v1, " parentHidden="

    .line 572
    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    .line 577
    .line 578
    .line 579
    move-result v1

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    const-string v1, " mPermanentlyHidden="

    .line 584
    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    .line 589
    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    const-string v1, " mHiddenWhileSuspended="

    .line 594
    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    .line 599
    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    const-string v1, " mForceHideNonSystemOverlayWindow="

    .line 604
    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    .line 609
    .line 610
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 611
    .line 612
    .line 613
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 614
    .line 615
    if-eqz v0, :cond_d

    .line 616
    .line 617
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 618
    .line 619
    if-eqz v0, :cond_e

    .line 620
    .line 621
    :cond_d
    const-string/jumbo v0, "mRelayoutCalled="

    .line 622
    .line 623
    .line 624
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 629
    .line 630
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    const-string v1, " mLayoutNeeded="

    .line 634
    .line 635
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 639
    .line 640
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 641
    .line 642
    .line 643
    :cond_e
    if-eqz p3, :cond_11

    .line 644
    .line 645
    const-string v0, "mGivenContentInsets="

    .line 646
    .line 647
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 652
    .line 653
    sget-object v2, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    .line 654
    .line 655
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    const-string v1, " mGivenVisibleInsets="

    .line 663
    .line 664
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 668
    .line 669
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    iget v0, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 684
    .line 685
    if-nez v0, :cond_f

    .line 686
    .line 687
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 688
    .line 689
    if-eqz v0, :cond_10

    .line 690
    .line 691
    :cond_f
    const-string/jumbo v0, "mTouchableInsets="

    .line 692
    .line 693
    .line 694
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 699
    .line 700
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    const-string v1, " mGivenInsetsPending="

    .line 704
    .line 705
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 709
    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    new-instance v0, Landroid/graphics/Region;

    .line 721
    .line 722
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 723
    .line 724
    .line 725
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 726
    .line 727
    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    .line 729
    .line 730
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    const-string/jumbo v2, "touchable region="

    .line 737
    .line 738
    .line 739
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    :cond_10
    const-string v0, "mFullConfiguration="

    .line 753
    .line 754
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    .line 759
    .line 760
    .line 761
    move-result-object v1

    .line 762
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    .line 773
    .line 774
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    const-string v1, "mLastReportedConfiguration="

    .line 781
    .line 782
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 786
    .line 787
    invoke-virtual {v1}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    .line 800
    .line 801
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 802
    .line 803
    if-eqz v0, :cond_11

    .line 804
    .line 805
    const-string v0, "mLastReportedActivityWindowInfo="

    .line 806
    .line 807
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 812
    .line 813
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    :cond_11
    const-string v0, "mHasSurface="

    .line 824
    .line 825
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 830
    .line 831
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    const-string v1, " isReadyForDisplay()="

    .line 835
    .line 836
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    .line 840
    .line 841
    .line 842
    move-result v1

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    const-string v1, " mWindowRemovalAllowed="

    .line 847
    .line 848
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .line 852
    .line 853
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 854
    .line 855
    .line 856
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsSurfacePositionPaused:Z

    .line 857
    .line 858
    if-eqz v0, :cond_12

    .line 859
    .line 860
    const-string v0, "mIsSurfacePositionPaused=true"

    .line 861
    .line 862
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    :cond_12
    iget v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 866
    .line 867
    const/high16 v1, 0x3f800000    # 1.0f

    .line 868
    .line 869
    cmpl-float v0, v0, v1

    .line 870
    .line 871
    if-eqz v0, :cond_13

    .line 872
    .line 873
    const-string v0, "mCompatFrame="

    .line 874
    .line 875
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 880
    .line 881
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 882
    .line 883
    sget-object v3, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    .line 884
    .line 885
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v2

    .line 889
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v0

    .line 896
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    :cond_13
    if-eqz p3, :cond_14

    .line 900
    .line 901
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 902
    .line 903
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 904
    .line 905
    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    .line 907
    .line 908
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    const-string v3, "Frames: parent="

    .line 915
    .line 916
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 920
    .line 921
    sget-object v4, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    .line 922
    .line 923
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v3

    .line 927
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    const-string v3, " display="

    .line 931
    .line 932
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    .line 934
    .line 935
    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 936
    .line 937
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v3

    .line 941
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    .line 943
    .line 944
    const-string v3, " frame="

    .line 945
    .line 946
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    .line 948
    .line 949
    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 950
    .line 951
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v3

    .line 955
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    const-string v3, " last="

    .line 959
    .line 960
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    .line 962
    .line 963
    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 964
    .line 965
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v3

    .line 969
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .line 971
    .line 972
    const-string v3, " insetsChanged="

    .line 973
    .line 974
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    .line 976
    .line 977
    iget-boolean v0, v0, Lcom/android/server/wm/WindowFrames;->mInsetsChanged:Z

    .line 978
    .line 979
    const-string v3, " surface="

    .line 980
    .line 981
    invoke-static {v2, v0, p1, p2, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 986
    .line 987
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 988
    .line 989
    sget-object v3, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    .line 990
    .line 991
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v2

    .line 995
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    .line 1004
    .line 1005
    :cond_14
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1006
    .line 1007
    .line 1008
    invoke-static {p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1013
    .line 1014
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1015
    .line 1016
    .line 1017
    const-string v2, ":"

    .line 1018
    .line 1019
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v0

    .line 1026
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1030
    .line 1031
    const-string v2, "  "

    .line 1032
    .line 1033
    invoke-static {p2, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v2

    .line 1037
    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 1038
    .line 1039
    if-eqz v3, :cond_15

    .line 1040
    .line 1041
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    const-string v3, " mAnimationIsEntrance="

    .line 1045
    .line 1046
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    .line 1048
    .line 1049
    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 1050
    .line 1051
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1052
    .line 1053
    .line 1054
    :cond_15
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1055
    .line 1056
    if-eqz v3, :cond_17

    .line 1057
    .line 1058
    if-eqz p3, :cond_16

    .line 1059
    .line 1060
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    .line 1062
    .line 1063
    const-string/jumbo v4, "mSurface="

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1067
    .line 1068
    .line 1069
    iget-object v4, v3, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1070
    .line 1071
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1072
    .line 1073
    .line 1074
    :cond_16
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    const-string v4, "Surface: shown="

    .line 1078
    .line 1079
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1080
    .line 1081
    .line 1082
    iget-boolean v3, v3, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 1083
    .line 1084
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1085
    .line 1086
    .line 1087
    :cond_17
    if-eqz p3, :cond_18

    .line 1088
    .line 1089
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1090
    .line 1091
    .line 1092
    const-string v3, "mDrawState="

    .line 1093
    .line 1094
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v3

    .line 1101
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    const-string v3, " mLastHidden="

    .line 1108
    .line 1109
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    iget-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 1113
    .line 1114
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1121
    .line 1122
    const-string v4, "mEnterAnimationPending="

    .line 1123
    .line 1124
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1125
    .line 1126
    .line 1127
    iget-boolean v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 1128
    .line 1129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v3

    .line 1136
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1140
    .line 1141
    .line 1142
    const-string/jumbo v3, "mSystemDecorRect="

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1146
    .line 1147
    .line 1148
    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 1149
    .line 1150
    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1154
    .line 1155
    .line 1156
    :cond_18
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1157
    .line 1158
    cmpl-float v3, v3, v1

    .line 1159
    .line 1160
    if-nez v3, :cond_19

    .line 1161
    .line 1162
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 1163
    .line 1164
    cmpl-float v3, v3, v1

    .line 1165
    .line 1166
    if-nez v3, :cond_19

    .line 1167
    .line 1168
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 1169
    .line 1170
    cmpl-float v3, v3, v1

    .line 1171
    .line 1172
    if-eqz v3, :cond_1a

    .line 1173
    .line 1174
    :cond_19
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1175
    .line 1176
    .line 1177
    const-string/jumbo v3, "mShownAlpha="

    .line 1178
    .line 1179
    .line 1180
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1181
    .line 1182
    .line 1183
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    .line 1184
    .line 1185
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 1186
    .line 1187
    .line 1188
    const-string v3, " mAlpha="

    .line 1189
    .line 1190
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 1194
    .line 1195
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 1196
    .line 1197
    .line 1198
    const-string v3, " mLastAlpha="

    .line 1199
    .line 1200
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1201
    .line 1202
    .line 1203
    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 1204
    .line 1205
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 1206
    .line 1207
    .line 1208
    :cond_1a
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 1209
    .line 1210
    iget v3, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1211
    .line 1212
    cmpl-float v3, v3, v1

    .line 1213
    .line 1214
    if-eqz v3, :cond_1b

    .line 1215
    .line 1216
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1217
    .line 1218
    .line 1219
    const-string v2, "mGlobalScale="

    .line 1220
    .line 1221
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1222
    .line 1223
    .line 1224
    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1225
    .line 1226
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 1227
    .line 1228
    .line 1229
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 1230
    .line 1231
    if-nez v0, :cond_1c

    .line 1232
    .line 1233
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 1234
    .line 1235
    if-nez v0, :cond_1c

    .line 1236
    .line 1237
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 1238
    .line 1239
    if-nez v0, :cond_1c

    .line 1240
    .line 1241
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 1242
    .line 1243
    if-eqz v0, :cond_1d

    .line 1244
    .line 1245
    :cond_1c
    const-string v0, "mAnimatingExit="

    .line 1246
    .line 1247
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    .line 1249
    .line 1250
    move-result-object v0

    .line 1251
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 1252
    .line 1253
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1254
    .line 1255
    .line 1256
    const-string v2, " mRemoveOnExit="

    .line 1257
    .line 1258
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    .line 1260
    .line 1261
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 1262
    .line 1263
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1264
    .line 1265
    .line 1266
    const-string v2, " mDestroying="

    .line 1267
    .line 1268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    .line 1270
    .line 1271
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 1272
    .line 1273
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1274
    .line 1275
    .line 1276
    const-string v2, " mRemoved="

    .line 1277
    .line 1278
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    .line 1280
    .line 1281
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 1282
    .line 1283
    invoke-static {v0, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 1284
    .line 1285
    .line 1286
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    .line 1287
    .line 1288
    .line 1289
    move-result v0

    .line 1290
    if-nez v0, :cond_1e

    .line 1291
    .line 1292
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 1293
    .line 1294
    if-eqz v0, :cond_20

    .line 1295
    .line 1296
    :cond_1e
    const-string/jumbo v0, "mOrientationChanging="

    .line 1297
    .line 1298
    .line 1299
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v0

    .line 1303
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 1304
    .line 1305
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1306
    .line 1307
    .line 1308
    const-string v2, " configOrientationChanging="

    .line 1309
    .line 1310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    .line 1313
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 1314
    .line 1315
    invoke-virtual {v2}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v2

    .line 1319
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1320
    .line 1321
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v3

    .line 1325
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 1326
    .line 1327
    if-eq v2, v3, :cond_1f

    .line 1328
    .line 1329
    const/4 v2, 0x1

    .line 1330
    goto :goto_1

    .line 1331
    :cond_1f
    const/4 v2, 0x0

    .line 1332
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1333
    .line 1334
    .line 1335
    const-string v2, " mAppFreezing="

    .line 1336
    .line 1337
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    .line 1339
    .line 1340
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 1341
    .line 1342
    invoke-static {v0, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 1343
    .line 1344
    .line 1345
    :cond_20
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 1346
    .line 1347
    if-eqz v0, :cond_21

    .line 1348
    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1350
    .line 1351
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    .line 1356
    .line 1357
    const-string v2, "mLastFreezeDuration="

    .line 1358
    .line 1359
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v0

    .line 1366
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1367
    .line 1368
    .line 1369
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 1370
    .line 1371
    int-to-long v2, v0

    .line 1372
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1373
    .line 1374
    .line 1375
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1376
    .line 1377
    .line 1378
    :cond_21
    const-string v0, "mForceSeamlesslyRotate="

    .line 1379
    .line 1380
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v0

    .line 1384
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    .line 1385
    .line 1386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1387
    .line 1388
    .line 1389
    const-string v2, " seamlesslyRotate: pending="

    .line 1390
    .line 1391
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    .line 1393
    .line 1394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v0

    .line 1398
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1399
    .line 1400
    .line 1401
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    .line 1402
    .line 1403
    if-eqz v0, :cond_22

    .line 1404
    .line 1405
    const-string/jumbo v2, "{old="

    .line 1406
    .line 1407
    .line 1408
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1409
    .line 1410
    .line 1411
    iget v2, v0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    .line 1412
    .line 1413
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1414
    .line 1415
    .line 1416
    const-string v2, ", new="

    .line 1417
    .line 1418
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1419
    .line 1420
    .line 1421
    iget v0, v0, Lcom/android/server/wm/SeamlessRotator;->mNewRotation:I

    .line 1422
    .line 1423
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1424
    .line 1425
    .line 1426
    const-string/jumbo v0, "}"

    .line 1427
    .line 1428
    .line 1429
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1430
    .line 1431
    .line 1432
    goto :goto_2

    .line 1433
    :cond_22
    const-string/jumbo v0, "null"

    .line 1434
    .line 1435
    .line 1436
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1437
    .line 1438
    .line 1439
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1440
    .line 1441
    .line 1442
    iget v0, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 1443
    .line 1444
    if-nez v0, :cond_23

    .line 1445
    .line 1446
    iget v0, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 1447
    .line 1448
    if-eqz v0, :cond_24

    .line 1449
    .line 1450
    :cond_23
    const-string/jumbo v0, "mXOffset="

    .line 1451
    .line 1452
    .line 1453
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v0

    .line 1457
    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 1458
    .line 1459
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1460
    .line 1461
    .line 1462
    const-string v2, " mYOffset="

    .line 1463
    .line 1464
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    .line 1466
    .line 1467
    iget v2, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 1468
    .line 1469
    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 1470
    .line 1471
    .line 1472
    :cond_24
    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 1473
    .line 1474
    cmpl-float v0, v0, v1

    .line 1475
    .line 1476
    if-nez v0, :cond_25

    .line 1477
    .line 1478
    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 1479
    .line 1480
    cmpl-float v0, v0, v1

    .line 1481
    .line 1482
    if-eqz v0, :cond_26

    .line 1483
    .line 1484
    :cond_25
    const-string v0, "mHScale="

    .line 1485
    .line 1486
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v0

    .line 1490
    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 1491
    .line 1492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1493
    .line 1494
    .line 1495
    const-string v1, " mVScale="

    .line 1496
    .line 1497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    .line 1499
    .line 1500
    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 1501
    .line 1502
    invoke-static {v0, v1, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 1503
    .line 1504
    .line 1505
    :cond_26
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 1506
    .line 1507
    const/high16 v1, -0x40800000    # -1.0f

    .line 1508
    .line 1509
    cmpl-float v0, v0, v1

    .line 1510
    .line 1511
    if-nez v0, :cond_27

    .line 1512
    .line 1513
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 1514
    .line 1515
    cmpl-float v0, v0, v1

    .line 1516
    .line 1517
    if-eqz v0, :cond_28

    .line 1518
    .line 1519
    :cond_27
    const-string/jumbo v0, "mWallpaperX="

    .line 1520
    .line 1521
    .line 1522
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v0

    .line 1526
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 1527
    .line 1528
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1529
    .line 1530
    .line 1531
    const-string v2, " mWallpaperY="

    .line 1532
    .line 1533
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    .line 1535
    .line 1536
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 1537
    .line 1538
    invoke-static {v0, v2, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 1539
    .line 1540
    .line 1541
    :cond_28
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 1542
    .line 1543
    cmpl-float v0, v0, v1

    .line 1544
    .line 1545
    if-nez v0, :cond_29

    .line 1546
    .line 1547
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 1548
    .line 1549
    cmpl-float v0, v0, v1

    .line 1550
    .line 1551
    if-eqz v0, :cond_2a

    .line 1552
    .line 1553
    :cond_29
    const-string/jumbo v0, "mWallpaperXStep="

    .line 1554
    .line 1555
    .line 1556
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v0

    .line 1560
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 1561
    .line 1562
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1563
    .line 1564
    .line 1565
    const-string v2, " mWallpaperYStep="

    .line 1566
    .line 1567
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    .line 1569
    .line 1570
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 1571
    .line 1572
    invoke-static {v0, v2, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 1573
    .line 1574
    .line 1575
    :cond_2a
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 1576
    .line 1577
    cmpl-float v0, v0, v1

    .line 1578
    .line 1579
    if-eqz v0, :cond_2b

    .line 1580
    .line 1581
    const-string/jumbo v0, "mWallpaperZoomOut="

    .line 1582
    .line 1583
    .line 1584
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v0

    .line 1588
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 1589
    .line 1590
    invoke-static {v0, v1, p1}, Lcom/android/server/chimera/AggressivePolicyHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;)V

    .line 1591
    .line 1592
    .line 1593
    :cond_2b
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 1594
    .line 1595
    const/high16 v1, -0x80000000

    .line 1596
    .line 1597
    if-ne v0, v1, :cond_2c

    .line 1598
    .line 1599
    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 1600
    .line 1601
    if-eq v0, v1, :cond_2d

    .line 1602
    .line 1603
    :cond_2c
    const-string/jumbo v0, "mWallpaperDisplayOffsetX="

    .line 1604
    .line 1605
    .line 1606
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v0

    .line 1610
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 1611
    .line 1612
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1613
    .line 1614
    .line 1615
    const-string v1, " mWallpaperDisplayOffsetY="

    .line 1616
    .line 1617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    .line 1619
    .line 1620
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 1621
    .line 1622
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 1623
    .line 1624
    .line 1625
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    .line 1626
    .line 1627
    if-eqz v0, :cond_2e

    .line 1628
    .line 1629
    const-string v0, "mDrawLock="

    .line 1630
    .line 1631
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v0

    .line 1635
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    .line 1636
    .line 1637
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1638
    .line 1639
    .line 1640
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v0

    .line 1644
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1645
    .line 1646
    .line 1647
    :cond_2e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    .line 1648
    .line 1649
    if-eqz v0, :cond_2f

    .line 1650
    .line 1651
    const-string v0, "isDragResizing="

    .line 1652
    .line 1653
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v0

    .line 1657
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    .line 1658
    .line 1659
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 1660
    .line 1661
    .line 1662
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    .line 1663
    .line 1664
    .line 1665
    move-result v0

    .line 1666
    if-eqz v0, :cond_30

    .line 1667
    .line 1668
    const-string v0, "computeDragResizing="

    .line 1669
    .line 1670
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v0

    .line 1674
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    .line 1675
    .line 1676
    .line 1677
    move-result v1

    .line 1678
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1679
    .line 1680
    .line 1681
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v0

    .line 1685
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    .line 1687
    .line 1688
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    .line 1689
    .line 1690
    if-eqz v0, :cond_31

    .line 1691
    .line 1692
    const-string v0, "mImeInsetsConsumed=true"

    .line 1693
    .line 1694
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    .line 1696
    .line 1697
    :cond_31
    const-string v0, "isOnScreen="

    .line 1698
    .line 1699
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v0

    .line 1703
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    .line 1704
    .line 1705
    .line 1706
    move-result v1

    .line 1707
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1708
    .line 1709
    .line 1710
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1711
    .line 1712
    .line 1713
    move-result-object v0

    .line 1714
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1715
    .line 1716
    .line 1717
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1718
    .line 1719
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1720
    .line 1721
    .line 1722
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1723
    .line 1724
    .line 1725
    const-string v1, "isVisible="

    .line 1726
    .line 1727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1728
    .line 1729
    .line 1730
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 1731
    .line 1732
    .line 1733
    move-result v1

    .line 1734
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1735
    .line 1736
    .line 1737
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v0

    .line 1741
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1742
    .line 1743
    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1745
    .line 1746
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1747
    .line 1748
    .line 1749
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    .line 1751
    .line 1752
    const-string v1, "keepClearAreas: restricted="

    .line 1753
    .line 1754
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    .line 1756
    .line 1757
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    .line 1758
    .line 1759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1760
    .line 1761
    .line 1762
    const-string v1, ", unrestricted="

    .line 1763
    .line 1764
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    .line 1766
    .line 1767
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    .line 1768
    .line 1769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1770
    .line 1771
    .line 1772
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v0

    .line 1776
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1777
    .line 1778
    .line 1779
    if-eqz p3, :cond_32

    .line 1780
    .line 1781
    iget p3, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 1782
    .line 1783
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    .line 1784
    .line 1785
    .line 1786
    move-result v0

    .line 1787
    if-eq p3, v0, :cond_32

    .line 1788
    .line 1789
    const-string p3, "Requested non-default-visibility types: "

    .line 1790
    .line 1791
    invoke-static {p2, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    .line 1793
    .line 1794
    move-result-object p3

    .line 1795
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 1796
    .line 1797
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    .line 1798
    .line 1799
    .line 1800
    move-result v1

    .line 1801
    xor-int/2addr v0, v1

    .line 1802
    invoke-static {v0}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v0

    .line 1806
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    .line 1808
    .line 1809
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1810
    .line 1811
    .line 1812
    move-result-object p3

    .line 1813
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1814
    .line 1815
    .line 1816
    :cond_32
    const-string/jumbo p3, "mPrepareSyncSeqId="

    .line 1817
    .line 1818
    .line 1819
    invoke-static {p2, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    .line 1821
    .line 1822
    move-result-object p3

    .line 1823
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    .line 1824
    .line 1825
    const-string v1, "mHiddenWhileProfileLockedState="

    .line 1826
    .line 1827
    invoke-static {p3, v0, p1, p2, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1828
    .line 1829
    .line 1830
    move-result-object p3

    .line 1831
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileProfileLockedState:Z

    .line 1832
    .line 1833
    invoke-static {p3, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 1834
    .line 1835
    .line 1836
    iget-boolean p3, p0, Lcom/android/server/wm/WindowState;->mPopOverDimmerNeeded:Z

    .line 1837
    .line 1838
    if-eqz p3, :cond_33

    .line 1839
    .line 1840
    const-string/jumbo p3, "mPopOverDimmerNeeded=true"

    .line 1841
    .line 1842
    .line 1843
    invoke-static {p1, p2, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    .line 1845
    .line 1846
    :cond_33
    iget-object p3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1847
    .line 1848
    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1849
    .line 1850
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOriginalLayoutInDisplayCutoutMode:I

    .line 1851
    .line 1852
    if-eq p3, v0, :cond_34

    .line 1853
    .line 1854
    const-string/jumbo p3, "mOriginalLayoutInDisplayCutoutMode="

    .line 1855
    .line 1856
    .line 1857
    invoke-static {p2, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    .line 1859
    .line 1860
    move-result-object p3

    .line 1861
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOriginalLayoutInDisplayCutoutMode:I

    .line 1862
    .line 1863
    invoke-static {p3, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 1864
    .line 1865
    .line 1866
    :cond_34
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->FW_WAIT_TO_HANDLE_RESIZING_FROM_CLIENT:Z

    .line 1867
    .line 1868
    if-eqz p3, :cond_35

    .line 1869
    .line 1870
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mWaitToHandleResizing:Z

    .line 1871
    .line 1872
    if-eqz p0, :cond_35

    .line 1873
    .line 1874
    const-string/jumbo p0, "mWaitToHandleResizing=true"

    .line 1875
    .line 1876
    .line 1877
    invoke-static {p1, p2, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    .line 1879
    .line 1880
    :cond_35
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne p4, v1, :cond_0

    .line 7
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
    const-wide v1, 0x10b00000001L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-super {p0, p1, v1, v2, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 21
    .line 22
    .line 23
    const-wide v1, 0x10500000003L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 29
    .line 30
    .line 31
    move-result p4

    .line 32
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    if-nez p4, :cond_1

    .line 40
    .line 41
    const/4 p4, -0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget p4, p4, Lcom/android/server/wm/Task;->mTaskId:I

    .line 44
    .line 45
    :goto_0
    const-wide v1, 0x10500000004L

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 51
    .line 52
    .line 53
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 54
    .line 55
    const-wide v1, 0x10b00000005L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-virtual {p4, p1, v1, v2}, Landroid/view/WindowManager$LayoutParams;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 61
    .line 62
    .line 63
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 64
    .line 65
    const-wide v3, 0x10b00000006L

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    invoke-virtual {p4, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 71
    .line 72
    .line 73
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 74
    .line 75
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    const-wide v3, 0x10b00000029L

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 84
    .line 85
    .line 86
    move-result-wide v3

    .line 87
    iget-object v5, p4, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 88
    .line 89
    const-wide v6, 0x10b00000008L

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, p1, v6, v7}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 95
    .line 96
    .line 97
    iget-object v5, p4, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 98
    .line 99
    const-wide v6, 0x10b00000004L

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, p1, v6, v7}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 105
    .line 106
    .line 107
    iget-object v5, p4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 108
    .line 109
    invoke-virtual {v5, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 110
    .line 111
    .line 112
    iget-object p4, p4, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 113
    .line 114
    const-wide v1, 0x10b00000010L

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    invoke-virtual {p4, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 123
    .line 124
    .line 125
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 126
    .line 127
    iget-object p4, p4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 128
    .line 129
    const-wide v3, 0x10b0000000cL

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    invoke-virtual {p4, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 135
    .line 136
    .line 137
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 138
    .line 139
    invoke-static {p4, p1, v1, v2}, Landroid/graphics/GraphicsProtos;->dumpPointProto(Landroid/graphics/Point;Landroid/util/proto/ProtoOutputStream;J)V

    .line 140
    .line 141
    .line 142
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 143
    .line 144
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    const-wide v1, 0x10b0000000dL

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 153
    .line 154
    .line 155
    move-result-wide v1

    .line 156
    iget-object v3, p4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 157
    .line 158
    if-eqz v3, :cond_2

    .line 159
    .line 160
    const-wide v4, 0x10b00000002L

    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 166
    .line 167
    .line 168
    move-result-wide v4

    .line 169
    const-wide v8, 0x10800000001L

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    iget-boolean v3, v3, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 175
    .line 176
    invoke-virtual {p1, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 180
    .line 181
    .line 182
    :cond_2
    const-wide v3, 0x10e00000003L

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    iget v5, p4, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 188
    .line 189
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 190
    .line 191
    .line 192
    iget-object p4, p4, Lcom/android/server/wm/WindowStateAnimator;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 193
    .line 194
    invoke-virtual {p4, p1, v6, v7}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 198
    .line 199
    .line 200
    const-wide v1, 0x1080000000eL

    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 206
    .line 207
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 208
    .line 209
    .line 210
    const-wide v1, 0x10500000012L

    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    iget p4, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 216
    .line 217
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 218
    .line 219
    .line 220
    const-wide v1, 0x10500000013L

    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    iget p4, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 226
    .line 227
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 228
    .line 229
    .line 230
    const-wide v1, 0x10500000014L

    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    iget p4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 236
    .line 237
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 238
    .line 239
    .line 240
    const-wide v1, 0x10800000016L

    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 246
    .line 247
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 248
    .line 249
    .line 250
    const-wide v1, 0x10800000017L

    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    .line 256
    .line 257
    .line 258
    move-result p4

    .line 259
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 260
    .line 261
    .line 262
    const-wide v1, 0x10800000022L

    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 268
    .line 269
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 270
    .line 271
    .line 272
    const-wide v1, 0x10800000023L

    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 278
    .line 279
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 280
    .line 281
    .line 282
    const-wide v1, 0x10800000024L

    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 288
    .line 289
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 290
    .line 291
    .line 292
    const-wide v1, 0x10800000025L

    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    .line 298
    .line 299
    .line 300
    move-result p4

    .line 301
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 302
    .line 303
    .line 304
    const-wide v1, 0x10800000026L

    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 310
    .line 311
    .line 312
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    .line 313
    .line 314
    const/4 v0, 0x0

    .line 315
    if-eqz p4, :cond_3

    .line 316
    .line 317
    const/4 p4, 0x1

    .line 318
    goto :goto_1

    .line 319
    :cond_3
    move p4, v0

    .line 320
    :goto_1
    const-wide v1, 0x10800000027L

    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 326
    .line 327
    .line 328
    const-wide v1, 0x1080000002aL

    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    .line 334
    .line 335
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 336
    .line 337
    .line 338
    const-wide v1, 0x1080000002bL

    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasCompatScale()Z

    .line 344
    .line 345
    .line 346
    move-result p4

    .line 347
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 348
    .line 349
    .line 350
    const-wide v1, 0x1020000002cL

    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    iget p4, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 356
    .line 357
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 358
    .line 359
    .line 360
    const-wide v1, 0x10500000030L

    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    iget p4, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 366
    .line 367
    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 368
    .line 369
    .line 370
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    .line 371
    .line 372
    check-cast p4, Ljava/util/ArrayList;

    .line 373
    .line 374
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 375
    .line 376
    .line 377
    move-result-object p4

    .line 378
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-eqz v1, :cond_4

    .line 383
    .line 384
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    check-cast v1, Landroid/graphics/Rect;

    .line 389
    .line 390
    const-wide v2, 0x20b0000002dL

    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 396
    .line 397
    .line 398
    goto :goto_2

    .line 399
    :cond_4
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    .line 400
    .line 401
    check-cast p4, Ljava/util/ArrayList;

    .line 402
    .line 403
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 404
    .line 405
    .line 406
    move-result-object p4

    .line 407
    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-eqz v1, :cond_5

    .line 412
    .line 413
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    check-cast v1, Landroid/graphics/Rect;

    .line 418
    .line 419
    const-wide v2, 0x20b0000002eL

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 425
    .line 426
    .line 427
    goto :goto_3

    .line 428
    :cond_5
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    .line 429
    .line 430
    if-eqz p4, :cond_6

    .line 431
    .line 432
    :goto_4
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    .line 433
    .line 434
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    .line 435
    .line 436
    .line 437
    move-result p4

    .line 438
    if-ge v0, p4, :cond_6

    .line 439
    .line 440
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    .line 441
    .line 442
    invoke-virtual {p4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object p4

    .line 446
    check-cast p4, Landroid/view/InsetsSource;

    .line 447
    .line 448
    const-wide v1, 0x20b0000002fL

    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    invoke-virtual {p4, p1, v1, v2}, Landroid/view/InsetsSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 454
    .line 455
    .line 456
    add-int/lit8 v0, v0, 0x1

    .line 457
    .line 458
    goto :goto_4

    .line 459
    :cond_6
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 460
    .line 461
    .line 462
    return-void
.end method

.method public final dumpProto(ILandroid/util/proto/ProtoOutputStream;)V
    .locals 2

    .line 1
    const-wide v0, 0x10b0000001cL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final fillClientWindowFramesAndConfiguration(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/window/ActivityWindowInfo;ZZ)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 20
    .line 21
    const/16 v1, 0x50

    .line 22
    .line 23
    const/high16 v2, 0x3f800000    # 1.0f

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 28
    .line 29
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 30
    .line 31
    and-int/2addr v0, v1

    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    .line 34
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOverrideScale:F

    .line 35
    .line 36
    cmpl-float v0, v0, v2

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget v0, p0, Lcom/android/server/wm/WindowState;->mCompatScale:F

    .line 41
    .line 42
    cmpl-float v3, v0, v2

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    iget-object v3, p1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 53
    .line 54
    cmpl-float v3, v0, v2

    .line 55
    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    iget-object v3, p1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    iget-object v0, p1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 68
    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    new-instance v0, Landroid/graphics/Rect;

    .line 72
    .line 73
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 77
    .line 78
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 83
    .line 84
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 85
    .line 86
    and-int/2addr v0, v1

    .line 87
    if-ne v0, v1, :cond_3

    .line 88
    .line 89
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOverrideScale:F

    .line 90
    .line 91
    cmpl-float v0, v0, v2

    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    iget v0, p0, Lcom/android/server/wm/WindowState;->mCompatScale:F

    .line 96
    .line 97
    cmpl-float v1, v0, v2

    .line 98
    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    iget-object v1, p1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    iget-object v0, p1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 114
    .line 115
    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 121
    .line 122
    cmpl-float v1, v0, v2

    .line 123
    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    iget-object v1, p1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 129
    .line 130
    .line 131
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasSizeCompatBounds()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_6

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_6
    iget v2, p0, Lcom/android/server/wm/WindowState;->mCompatScale:F

    .line 141
    .line 142
    :goto_2
    iput v2, p1, Landroid/window/ClientWindowFrames;->compatScale:F

    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedFrames:Landroid/window/ClientWindowFrames;

    .line 145
    .line 146
    if-eq v0, p1, :cond_7

    .line 147
    .line 148
    invoke-virtual {v0, p1}, Landroid/window/ClientWindowFrames;->setTo(Landroid/window/ClientWindowFrames;)V

    .line 149
    .line 150
    .line 151
    :cond_7
    if-nez p4, :cond_9

    .line 152
    .line 153
    if-eqz p5, :cond_8

    .line 154
    .line 155
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 156
    .line 157
    if-eqz p1, :cond_9

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_8

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 167
    .line 168
    invoke-virtual {p2, p1}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    .line 169
    .line 170
    .line 171
    if-eqz p3, :cond_10

    .line 172
    .line 173
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 174
    .line 175
    if-eqz p1, :cond_10

    .line 176
    .line 177
    invoke-virtual {p3, p1}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_7

    .line 181
    .line 182
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 183
    .line 184
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 185
    .line 186
    const/4 p4, 0x4

    .line 187
    if-ne p1, p4, :cond_a

    .line 188
    .line 189
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_a

    .line 196
    .line 197
    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 198
    .line 199
    iget p4, p4, Lcom/android/server/wm/Session;->mPid:I

    .line 200
    .line 201
    if-eq p1, p4, :cond_a

    .line 202
    .line 203
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 204
    .line 205
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    goto :goto_6

    .line 212
    :cond_a
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 213
    .line 214
    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    .line 215
    .line 216
    sget p4, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 217
    .line 218
    if-eq p1, p4, :cond_e

    .line 219
    .line 220
    if-gez p1, :cond_b

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-eqz p1, :cond_c

    .line 228
    .line 229
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_c
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 233
    .line 234
    :goto_4
    iget p5, p1, Lcom/android/server/wm/Session;->mPid:I

    .line 235
    .line 236
    if-ne p5, p4, :cond_d

    .line 237
    .line 238
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 239
    .line 240
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    goto :goto_6

    .line 247
    :cond_d
    iget-object p1, p1, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    .line 248
    .line 249
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    goto :goto_6

    .line 254
    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 255
    .line 256
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 257
    .line 258
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 263
    .line 264
    .line 265
    move-result-object p4

    .line 266
    invoke-virtual {p2, p1, p4}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 270
    .line 271
    if-eq p2, p1, :cond_f

    .line 272
    .line 273
    invoke-virtual {p1, p2}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    .line 274
    .line 275
    .line 276
    :cond_f
    if-eqz p3, :cond_10

    .line 277
    .line 278
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 279
    .line 280
    if-eqz p1, :cond_10

    .line 281
    .line 282
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 283
    .line 284
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityWindowInfo()Landroid/window/ActivityWindowInfo;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {p3, p1}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 289
    .line 290
    .line 291
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 292
    .line 293
    invoke-virtual {p1, p3}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    .line 294
    .line 295
    .line 296
    :cond_10
    :goto_7
    const/4 p1, 0x1

    .line 297
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    .line 298
    .line 299
    return-void
.end method

.method public final fillInsetsState(Landroid/view/InsetsState;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget v2, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 7
    .line 8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    .line 10
    cmpl-float v2, v2, v3

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Landroid/view/InsetsState;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v2, v1, v3}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/view/InsetsState;->scale(F)V

    .line 23
    .line 24
    .line 25
    move-object v1, v2

    .line 26
    :cond_0
    invoke-virtual {p1, v1, p2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mLastReportedInsetsState:Landroid/view/InsetsState;

    .line 30
    .line 31
    if-eq p1, p0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final fillsParent()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final finishDrawing(Landroid/view/SurfaceControl$Transaction;I)Z
    .locals 24

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
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v5, v1, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    move v5, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v5, v4

    .line 22
    :goto_0
    iget-wide v6, v0, Lcom/android/server/wm/WindowState;->mOrientationChangeRedrawRequestTime:J

    .line 23
    .line 24
    const-wide/16 v8, 0x0

    .line 25
    .line 26
    cmp-long v6, v6, v8

    .line 27
    .line 28
    const-string/jumbo v7, "ms"

    .line 29
    .line 30
    .line 31
    const-string v10, " "

    .line 32
    .line 33
    const-string v11, "WindowManager"

    .line 34
    .line 35
    if-lez v6, :cond_1

    .line 36
    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v12

    .line 41
    iget-wide v14, v0, Lcom/android/server/wm/WindowState;->mOrientationChangeRedrawRequestTime:J

    .line 42
    .line 43
    sub-long/2addr v12, v14

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v14, "finishDrawing of orientation change: "

    .line 47
    .line 48
    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-static {v6, v7, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-wide v8, v0, Lcom/android/server/wm/WindowState;->mOrientationChangeRedrawRequestTime:J

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 67
    .line 68
    if-eqz v6, :cond_2

    .line 69
    .line 70
    iget-wide v12, v6, Lcom/android/server/wm/ActivityRecord;->mRelaunchStartTime:J

    .line 71
    .line 72
    cmp-long v12, v12, v8

    .line 73
    .line 74
    if-eqz v12, :cond_2

    .line 75
    .line 76
    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    if-ne v6, v0, :cond_2

    .line 81
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 83
    .line 84
    .line 85
    move-result-wide v12

    .line 86
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 87
    .line 88
    iget-wide v14, v6, Lcom/android/server/wm/ActivityRecord;->mRelaunchStartTime:J

    .line 89
    .line 90
    sub-long/2addr v12, v14

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v14, "finishDrawing of relaunch: "

    .line 94
    .line 95
    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-static {v6, v7, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 111
    .line 112
    iput-wide v8, v6, Lcom/android/server/wm/ActivityRecord;->mRelaunchStartTime:J

    .line 113
    .line 114
    iget-object v7, v6, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 115
    .line 116
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 117
    .line 118
    iget-object v8, v7, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    .line 119
    .line 120
    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    iget-object v8, v7, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    .line 125
    .line 126
    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    and-int/2addr v6, v8

    .line 131
    if-eqz v6, :cond_2

    .line 132
    .line 133
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 134
    .line 135
    .line 136
    :cond_2
    :goto_1
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 137
    .line 138
    const/4 v7, 0x3

    .line 139
    if-eqz v6, :cond_4

    .line 140
    .line 141
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 142
    .line 143
    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 144
    .line 145
    if-ne v8, v7, :cond_4

    .line 146
    .line 147
    iget-object v8, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 148
    .line 149
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 150
    .line 151
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 152
    .line 153
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 154
    .line 155
    invoke-virtual {v8, v6}, Lcom/android/server/wm/ActivityMetricsLogger;->getActiveTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    if-eqz v6, :cond_4

    .line 160
    .line 161
    iget-boolean v8, v6, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedStartingWindowDrawn:Z

    .line 162
    .line 163
    if-eqz v8, :cond_3

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_3
    iput-boolean v3, v6, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLoggedStartingWindowDrawn:Z

    .line 167
    .line 168
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    .line 169
    .line 170
    .line 171
    move-result-wide v8

    .line 172
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 173
    .line 174
    iget-object v12, v6, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 175
    .line 176
    iget-wide v12, v12, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartUptimeNs:J

    .line 177
    .line 178
    sub-long/2addr v8, v12

    .line 179
    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 180
    .line 181
    .line 182
    move-result-wide v8

    .line 183
    long-to-int v8, v8

    .line 184
    iput v8, v6, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mStartingWindowDelayMs:I

    .line 185
    .line 186
    :cond_4
    :goto_2
    iget v6, v0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    .line 187
    .line 188
    if-lez v6, :cond_5

    .line 189
    .line 190
    move v8, v3

    .line 191
    goto :goto_3

    .line 192
    :cond_5
    move v8, v4

    .line 193
    :goto_3
    if-eqz v8, :cond_6

    .line 194
    .line 195
    if-le v6, v2, :cond_6

    .line 196
    .line 197
    move v9, v3

    .line 198
    goto :goto_4

    .line 199
    :cond_6
    move v9, v4

    .line 200
    :goto_4
    if-eqz v9, :cond_8

    .line 201
    .line 202
    if-eqz v1, :cond_8

    .line 203
    .line 204
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    .line 205
    .line 206
    aget-boolean v10, v10, v4

    .line 207
    .line 208
    if-eqz v10, :cond_7

    .line 209
    .line 210
    int-to-long v12, v2

    .line 211
    int-to-long v14, v6

    .line 212
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    sget-object v16, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 217
    .line 218
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 223
    .line 224
    .line 225
    move-result-object v12

    .line 226
    filled-new-array {v10, v12, v6}, [Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v21

    .line 230
    const/16 v19, 0x5

    .line 231
    .line 232
    const/16 v20, 0x0

    .line 233
    .line 234
    const-wide v17, 0x7061a4986f3138b4L    # 2.191280045794295E233

    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowState;->dropBufferFrom(Landroid/view/SurfaceControl$Transaction;)V

    .line 243
    .line 244
    .line 245
    :cond_8
    if-nez v1, :cond_9

    .line 246
    .line 247
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 248
    .line 249
    move v10, v3

    .line 250
    goto :goto_5

    .line 251
    :cond_9
    move-object v6, v1

    .line 252
    move v10, v4

    .line 253
    :goto_5
    new-instance v12, Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .line 257
    .line 258
    move v13, v4

    .line 259
    move v14, v13

    .line 260
    :goto_6
    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 261
    .line 262
    check-cast v15, Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 265
    .line 266
    .line 267
    move-result v15

    .line 268
    if-ge v13, v15, :cond_b

    .line 269
    .line 270
    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 271
    .line 272
    check-cast v15, Ljava/util/ArrayList;

    .line 273
    .line 274
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v15

    .line 278
    check-cast v15, Lcom/android/server/wm/WindowState$DrawHandler;

    .line 279
    .line 280
    iget v4, v15, Lcom/android/server/wm/WindowState$DrawHandler;->mSeqId:I

    .line 281
    .line 282
    if-gt v4, v2, :cond_a

    .line 283
    .line 284
    iget-object v4, v15, Lcom/android/server/wm/WindowState$DrawHandler;->mConsumer:Ljava/util/function/Consumer;

    .line 285
    .line 286
    invoke-interface {v4, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const-string v14, "executeDrawHandlers, seqId="

    .line 295
    .line 296
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v14, ", h.mSeqId="

    .line 303
    .line 304
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    iget v14, v15, Lcom/android/server/wm/WindowState$DrawHandler;->mSeqId:I

    .line 308
    .line 309
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v14, ", hadHandlers=true, win="

    .line 313
    .line 314
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    move v14, v3

    .line 328
    :cond_a
    add-int/lit8 v13, v13, 0x1

    .line 329
    .line 330
    const/4 v4, 0x0

    .line 331
    goto :goto_6

    .line 332
    :cond_b
    const/4 v2, 0x0

    .line 333
    :goto_7
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    if-ge v2, v4, :cond_c

    .line 338
    .line 339
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    check-cast v4, Lcom/android/server/wm/WindowState$DrawHandler;

    .line 344
    .line 345
    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 346
    .line 347
    check-cast v13, Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    add-int/lit8 v2, v2, 0x1

    .line 353
    .line 354
    goto :goto_7

    .line 355
    :cond_c
    if-eqz v14, :cond_d

    .line 356
    .line 357
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 358
    .line 359
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 360
    .line 361
    const/16 v4, 0x40

    .line 362
    .line 363
    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    :cond_d
    if-eqz v10, :cond_e

    .line 367
    .line 368
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 369
    .line 370
    .line 371
    :cond_e
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 372
    .line 373
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    const-string v6, ", w="

    .line 378
    .line 379
    const/4 v10, 0x2

    .line 380
    if-eqz v2, :cond_17

    .line 381
    .line 382
    iget v12, v2, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 383
    .line 384
    if-nez v12, :cond_f

    .line 385
    .line 386
    goto/16 :goto_a

    .line 387
    .line 388
    :cond_f
    iget-object v12, v2, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 389
    .line 390
    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 391
    .line 392
    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v12

    .line 396
    check-cast v12, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 397
    .line 398
    const-string v13, "AsyncRotation_WindowManager"

    .line 399
    .line 400
    iget-object v15, v2, Lcom/android/server/wm/FadeAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 401
    .line 402
    if-nez v12, :cond_12

    .line 403
    .line 404
    iget v12, v2, Lcom/android/server/wm/AsyncRotationController;->mTransitionOp:I

    .line 405
    .line 406
    if-ne v12, v3, :cond_17

    .line 407
    .line 408
    iget-boolean v12, v2, Lcom/android/server/wm/AsyncRotationController;->mIsStartTransactionCommitted:Z

    .line 409
    .line 410
    if-nez v12, :cond_17

    .line 411
    .line 412
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 413
    .line 414
    invoke-static {v12}, Lcom/android/server/wm/AsyncRotationController;->canBeAsync(Lcom/android/server/wm/WindowToken;)Z

    .line 415
    .line 416
    .line 417
    move-result v12

    .line 418
    if-eqz v12, :cond_17

    .line 419
    .line 420
    iget-object v12, v15, Lcom/android/server/wm/DisplayContent;->mFixedRotationLaunchingApp:Lcom/android/server/wm/ActivityRecord;

    .line 421
    .line 422
    if-eqz v12, :cond_10

    .line 423
    .line 424
    iget-object v15, v15, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 425
    .line 426
    invoke-virtual {v15, v12}, Lcom/android/server/wm/TransitionController;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    .line 427
    .line 428
    .line 429
    move-result v12

    .line 430
    if-eqz v12, :cond_10

    .line 431
    .line 432
    goto/16 :goto_a

    .line 433
    .line 434
    :cond_10
    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 435
    .line 436
    if-eqz v12, :cond_11

    .line 437
    .line 438
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 439
    .line 440
    iget-boolean v12, v12, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    .line 441
    .line 442
    if-nez v12, :cond_17

    .line 443
    .line 444
    :cond_11
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 445
    .line 446
    invoke-virtual {v2, v12, v10}, Lcom/android/server/wm/AsyncRotationController;->hideImmediately(Lcom/android/server/wm/WindowToken;I)V

    .line 447
    .line 448
    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    const-string v12, "Hide on finishDrawing "

    .line 452
    .line 453
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 457
    .line 458
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 459
    .line 460
    .line 461
    move-result-object v12

    .line 462
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    invoke-static {v13, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    goto :goto_a

    .line 473
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    const-string v10, "handleFinishDrawing "

    .line 476
    .line 477
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    invoke-static {v13, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    if-eqz v1, :cond_16

    .line 491
    .line 492
    iget-boolean v4, v2, Lcom/android/server/wm/AsyncRotationController;->mIsSyncDrawRequested:Z

    .line 493
    .line 494
    if-eqz v4, :cond_16

    .line 495
    .line 496
    iget v4, v12, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    .line 497
    .line 498
    if-eq v4, v3, :cond_13

    .line 499
    .line 500
    goto :goto_9

    .line 501
    :cond_13
    iget-object v4, v12, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 502
    .line 503
    if-nez v4, :cond_15

    .line 504
    .line 505
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 506
    .line 507
    instance-of v4, v4, Landroid/view/IWindow$Stub;

    .line 508
    .line 509
    if-eqz v4, :cond_14

    .line 510
    .line 511
    iget-object v2, v2, Lcom/android/server/wm/AsyncRotationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 512
    .line 513
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 514
    .line 515
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    .line 520
    .line 521
    iput-object v2, v12, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 522
    .line 523
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 524
    .line 525
    .line 526
    goto :goto_8

    .line 527
    :cond_14
    iput-object v1, v12, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 528
    .line 529
    goto :goto_8

    .line 530
    :cond_15
    invoke-virtual {v4, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 531
    .line 532
    .line 533
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    const-string v2, "handleFinishDrawing, merged drawTransaction="

    .line 536
    .line 537
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    iget-object v2, v12, Lcom/android/server/wm/AsyncRotationController$Operation;->mDrawTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 541
    .line 542
    iget-object v2, v2, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    .line 543
    .line 544
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .line 559
    .line 560
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 561
    .line 562
    invoke-virtual {v15, v1}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    .line 563
    .line 564
    .line 565
    move v4, v3

    .line 566
    const/4 v1, 0x0

    .line 567
    const/4 v2, 0x0

    .line 568
    goto :goto_d

    .line 569
    :cond_16
    :goto_9
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 570
    .line 571
    invoke-virtual {v15, v2}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    .line 572
    .line 573
    .line 574
    :cond_17
    :goto_a
    if-eqz v8, :cond_1a

    .line 575
    .line 576
    if-nez v9, :cond_18

    .line 577
    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->onSyncFinishedDrawing()Z

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    goto :goto_b

    .line 583
    :cond_18
    const/4 v2, 0x0

    .line 584
    :goto_b
    if-eqz v1, :cond_19

    .line 585
    .line 586
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 587
    .line 588
    invoke-virtual {v4, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 589
    .line 590
    .line 591
    const/4 v1, 0x0

    .line 592
    :cond_19
    :goto_c
    const/4 v4, 0x0

    .line 593
    goto :goto_d

    .line 594
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->syncNextBuffer()Z

    .line 595
    .line 596
    .line 597
    move-result v2

    .line 598
    if-eqz v2, :cond_1b

    .line 599
    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->onSyncFinishedDrawing()Z

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    goto :goto_c

    .line 605
    :cond_1b
    const/4 v2, 0x0

    .line 606
    goto :goto_c

    .line 607
    :goto_d
    if-eqz v5, :cond_1f

    .line 608
    .line 609
    new-instance v5, Ljava/lang/StringBuilder;

    .line 610
    .line 611
    const-string v8, "finishDrawing, postDrawTransaction="

    .line 612
    .line 613
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    const-string/jumbo v8, "null"

    .line 617
    .line 618
    .line 619
    if-eqz v1, :cond_1c

    .line 620
    .line 621
    iget-object v9, v1, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    .line 622
    .line 623
    goto :goto_e

    .line 624
    :cond_1c
    move-object v9, v8

    .line 625
    :goto_e
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    const-string v9, ", syncTransaction="

    .line 629
    .line 630
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .line 632
    .line 633
    iget-object v9, v0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 634
    .line 635
    if-eqz v9, :cond_1d

    .line 636
    .line 637
    iget-object v9, v9, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    .line 638
    .line 639
    goto :goto_f

    .line 640
    :cond_1d
    move-object v9, v8

    .line 641
    :goto_f
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 645
    .line 646
    .line 647
    move-result-object v9

    .line 648
    const-string v10, ", pendingTransaction="

    .line 649
    .line 650
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    if-eqz v9, :cond_1e

    .line 654
    .line 655
    iget-object v8, v9, Landroid/view/SurfaceControl$Transaction;->mDebugName:Ljava/lang/String;

    .line 656
    .line 657
    :cond_1e
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v5

    .line 670
    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    .line 672
    .line 673
    :cond_1f
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 674
    .line 675
    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 676
    .line 677
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 678
    .line 679
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 680
    .line 681
    if-ne v6, v7, :cond_20

    .line 682
    .line 683
    move v6, v3

    .line 684
    goto :goto_10

    .line 685
    :cond_20
    const/4 v6, 0x0

    .line 686
    :goto_10
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    .line 687
    .line 688
    if-eqz v6, :cond_21

    .line 689
    .line 690
    aget-boolean v8, v7, v3

    .line 691
    .line 692
    if-eqz v8, :cond_21

    .line 693
    .line 694
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v8

    .line 698
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v9

    .line 702
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v9

    .line 706
    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 707
    .line 708
    filled-new-array {v8, v9}, [Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v23

    .line 712
    const/16 v21, 0x0

    .line 713
    .line 714
    const-string v22, "Finishing drawing window %s: mDrawState=%s"

    .line 715
    .line 716
    const-wide v19, 0x2fb23d9526893958L    # 6.153458035567652E-79

    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    :cond_21
    iget v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 725
    .line 726
    if-ne v8, v3, :cond_24

    .line 727
    .line 728
    sget-object v8, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_DRAW_enabled:[Z

    .line 729
    .line 730
    aget-boolean v8, v8, v3

    .line 731
    .line 732
    if-eqz v8, :cond_22

    .line 733
    .line 734
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v8

    .line 738
    iget-object v9, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 739
    .line 740
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v9

    .line 744
    sget-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DRAW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 745
    .line 746
    filled-new-array {v8, v9}, [Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v23

    .line 750
    const/16 v21, 0x0

    .line 751
    .line 752
    const/16 v22, 0x0

    .line 753
    .line 754
    const-wide v19, 0x4cbfce8dacc3732L

    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    invoke-static/range {v18 .. v23}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 760
    .line 761
    .line 762
    :cond_22
    if-eqz v6, :cond_23

    .line 763
    .line 764
    aget-boolean v6, v7, v3

    .line 765
    .line 766
    if-eqz v6, :cond_23

    .line 767
    .line 768
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v6

    .line 772
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 773
    .line 774
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v12

    .line 778
    const/4 v10, 0x0

    .line 779
    const-string v11, "Draw state now committed in %s"

    .line 780
    .line 781
    const-wide v8, -0x211b34f10fa5c001L    # -1.3293799762346707E149

    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 787
    .line 788
    .line 789
    :cond_23
    const/4 v6, 0x2

    .line 790
    iput v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 791
    .line 792
    move v0, v3

    .line 793
    goto :goto_11

    .line 794
    :cond_24
    const/4 v0, 0x0

    .line 795
    :goto_11
    if-eqz v1, :cond_25

    .line 796
    .line 797
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 802
    .line 803
    .line 804
    move v0, v3

    .line 805
    :cond_25
    or-int/2addr v0, v2

    .line 806
    if-nez v4, :cond_26

    .line 807
    .line 808
    if-nez v14, :cond_27

    .line 809
    .line 810
    if-eqz v0, :cond_26

    .line 811
    .line 812
    goto :goto_12

    .line 813
    :cond_26
    const/4 v3, 0x0

    .line 814
    :cond_27
    :goto_12
    return v3
.end method

.method public final finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->isDifferentSyncGroup(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z

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
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->dropBufferFrom(Landroid/view/SurfaceControl$Transaction;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz p2, :cond_8

    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    sub-int/2addr p2, v1

    .line 25
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 26
    .line 27
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 32
    .line 33
    :goto_0
    if-ltz p2, :cond_3

    .line 34
    .line 35
    iget v3, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 36
    .line 37
    if-ltz v3, :cond_3

    .line 38
    .line 39
    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    :goto_1
    move v0, v1

    .line 46
    goto :goto_4

    .line 47
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 48
    .line 49
    if-gez p2, :cond_2

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 53
    .line 54
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    :goto_3
    if-ltz p2, :cond_7

    .line 69
    .line 70
    invoke-virtual {v2, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    add-int/lit8 p2, p2, -0x1

    .line 78
    .line 79
    if-gez p2, :cond_6

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 83
    .line 84
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_7
    :goto_4
    return v0

    .line 92
    :cond_8
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 99
    .line 100
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 105
    .line 106
    move v3, v0

    .line 107
    :goto_5
    if-ge v3, p2, :cond_b

    .line 108
    .line 109
    iget v4, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 110
    .line 111
    if-gez v4, :cond_b

    .line 112
    .line 113
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_9

    .line 118
    .line 119
    :goto_6
    move v0, v1

    .line 120
    goto :goto_9

    .line 121
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    if-lt v3, p2, :cond_a

    .line 124
    .line 125
    goto :goto_7

    .line 126
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_b
    :goto_7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_c

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_c
    :goto_8
    if-ge v3, p2, :cond_f

    .line 143
    .line 144
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_d

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 152
    .line 153
    if-lt v3, p2, :cond_e

    .line 154
    .line 155
    goto :goto_9

    .line 156
    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_f
    :goto_9
    return v0
.end method

.method public final forceExecuteDrawHandlers(I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 9
    .line 10
    check-cast v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 19
    .line 20
    check-cast v3, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/android/server/wm/WindowState$DrawHandler;

    .line 27
    .line 28
    iget v4, v3, Lcom/android/server/wm/WindowState$DrawHandler;->mType:I

    .line 29
    .line 30
    if-ne v4, p1, :cond_0

    .line 31
    .line 32
    iget-object v4, v3, Lcom/android/server/wm/WindowState$DrawHandler;->mConsumer:Ljava/util/function/Consumer;

    .line 33
    .line 34
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 35
    .line 36
    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v5, "forceExecuteDrawHandlers: win="

    .line 45
    .line 46
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v5, ", handler="

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const-string v4, "WindowManager"

    .line 65
    .line 66
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_4

    .line 77
    .line 78
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-ge v1, p1, :cond_2

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/android/server/wm/WindowState$DrawHandler;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 91
    .line 92
    check-cast v2, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    add-int/lit8 v1, v1, 0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 101
    .line 102
    check-cast p1, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 111
    .line 112
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 113
    .line 114
    const/16 v0, 0x40

    .line 115
    .line 116
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 122
    .line 123
    .line 124
    :cond_4
    return-void
.end method

.method public final getActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 50
    .line 51
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 61
    .line 62
    .line 63
    move-result p4

    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, p4, v0}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    invoke-virtual {p4}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    invoke-virtual {p2, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    const/4 p4, 0x1

    .line 81
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isStartingWindowAssociatedToTask()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasSizeCompatBounds()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    return-object p0
.end method

.method public final getConfiguration()Landroid/content/res/Configuration;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 11
    .line 12
    :goto_0
    iget v1, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 13
    .line 14
    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 15
    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    :goto_1
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final getCoverMode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 12
    .line 13
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 14
    .line 15
    const/16 v1, 0x833

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    const/16 p0, 0xa

    .line 20
    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 27
    .line 28
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 29
    .line 30
    return p0

    .line 31
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 32
    .line 33
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 34
    .line 35
    return p0
.end method

.method public final getDisplayId()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 10
    .line 11
    return p0
.end method

.method public final getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 15
    .line 16
    return-object p0
.end method

.method public final getEffectiveTouchableRegion(Landroid/graphics/Region;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isModal()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToRootTaskBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 58
    .line 59
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void
.end method

.method public final getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->getImeHostOrFallback(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getInsetsState(Z)Landroid/view/InsetsState;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v1, v3

    .line 20
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    :cond_1
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Lcom/android/server/wm/TaskbarController;->adjustInsetsForTaskbar(Landroid/view/InsetsState;)Landroid/view/InsetsState;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :cond_2
    invoke-virtual {v2, v0, v1, v4}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    :cond_3
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrozenInsetsState:Landroid/view/InsetsState;

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 64
    .line 65
    iget-boolean v1, v1, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    .line 66
    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 74
    .line 75
    iget-object v1, v1, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    .line 79
    .line 80
    :goto_1
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    .line 81
    .line 82
    if-nez v5, :cond_6

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_6
    new-instance v5, Landroid/view/InsetsState;

    .line 86
    .line 87
    invoke-direct {v5, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 88
    .line 89
    .line 90
    move v1, v4

    .line 91
    :goto_2
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    .line 92
    .line 93
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-ge v1, v6, :cond_7

    .line 98
    .line 99
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mMergedLocalInsetsSources:Landroid/util/SparseArray;

    .line 100
    .line 101
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Landroid/view/InsetsSource;

    .line 106
    .line 107
    invoke-virtual {v5, v6}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    move-object v1, v5

    .line 114
    :goto_3
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 115
    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 128
    .line 129
    const/16 v9, 0x7db

    .line 130
    .line 131
    if-ne v8, v9, :cond_8

    .line 132
    .line 133
    new-instance v8, Landroid/view/InsetsState;

    .line 134
    .line 135
    invoke-direct {v8, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 136
    .line 137
    .line 138
    sget v10, Landroid/view/InsetsSource;->ID_IME:I

    .line 139
    .line 140
    invoke-virtual {v8, v10}, Landroid/view/InsetsState;->removeSource(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_8
    iget-object v8, v5, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 145
    .line 146
    if-eqz v8, :cond_c

    .line 147
    .line 148
    array-length v10, v8

    .line 149
    move-object v11, v1

    .line 150
    move v12, v4

    .line 151
    :goto_4
    if-ge v12, v10, :cond_b

    .line 152
    .line 153
    aget-object v13, v8, v12

    .line 154
    .line 155
    invoke-virtual {v13}, Landroid/view/InsetsFrameProvider;->getType()I

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    and-int/2addr v14, v15

    .line 164
    if-nez v14, :cond_9

    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_9
    if-ne v11, v1, :cond_a

    .line 168
    .line 169
    new-instance v14, Landroid/view/InsetsState;

    .line 170
    .line 171
    invoke-direct {v14, v11}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 172
    .line 173
    .line 174
    move-object v11, v14

    .line 175
    :cond_a
    invoke-virtual {v13}, Landroid/view/InsetsFrameProvider;->getId()I

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    invoke-virtual {v11, v13}, Landroid/view/InsetsState;->removeSource(I)V

    .line 180
    .line 181
    .line 182
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_b
    move-object v8, v11

    .line 186
    goto :goto_6

    .line 187
    :cond_c
    move-object v8, v1

    .line 188
    :goto_6
    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 189
    .line 190
    .line 191
    move-result v10

    .line 192
    const/4 v11, 0x1

    .line 193
    const/4 v12, 0x2

    .line 194
    if-eqz v10, :cond_d

    .line 195
    .line 196
    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    if-eqz v10, :cond_15

    .line 201
    .line 202
    :cond_d
    if-ne v8, v1, :cond_e

    .line 203
    .line 204
    new-instance v8, Landroid/view/InsetsState;

    .line 205
    .line 206
    invoke-direct {v8, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 207
    .line 208
    .line 209
    :cond_e
    iget-object v10, v2, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 210
    .line 211
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    if-eqz v10, :cond_10

    .line 216
    .line 217
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 218
    .line 219
    if-nez v10, :cond_f

    .line 220
    .line 221
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 222
    .line 223
    const/4 v13, -0x1

    .line 224
    if-ne v10, v13, :cond_f

    .line 225
    .line 226
    :goto_7
    move v10, v11

    .line 227
    goto :goto_8

    .line 228
    :cond_f
    move v10, v4

    .line 229
    goto :goto_8

    .line 230
    :cond_10
    const/4 v10, 0x5

    .line 231
    if-ne v6, v10, :cond_f

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :goto_8
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_INSETS:Z

    .line 235
    .line 236
    if-eqz v13, :cond_11

    .line 237
    .line 238
    if-eqz v10, :cond_11

    .line 239
    .line 240
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 241
    .line 242
    if-eq v10, v11, :cond_12

    .line 243
    .line 244
    :cond_11
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 245
    .line 246
    if-eq v10, v12, :cond_12

    .line 247
    .line 248
    const/4 v13, 0x4

    .line 249
    if-ne v10, v13, :cond_13

    .line 250
    .line 251
    :cond_12
    move v4, v11

    .line 252
    :cond_13
    invoke-virtual {v8}, Landroid/view/InsetsState;->sourceSize()I

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    sub-int/2addr v10, v11

    .line 257
    :goto_9
    if-ltz v10, :cond_15

    .line 258
    .line 259
    invoke-virtual {v8, v10}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 260
    .line 261
    .line 262
    move-result-object v13

    .line 263
    invoke-virtual {v13}, Landroid/view/InsetsSource;->getType()I

    .line 264
    .line 265
    .line 266
    move-result v13

    .line 267
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    .line 268
    .line 269
    .line 270
    move-result v14

    .line 271
    if-ne v13, v14, :cond_14

    .line 272
    .line 273
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_INSETS:Z

    .line 274
    .line 275
    if-eqz v13, :cond_14

    .line 276
    .line 277
    if-nez v4, :cond_14

    .line 278
    .line 279
    invoke-virtual {v8, v10}, Landroid/view/InsetsState;->removeSourceAt(I)V

    .line 280
    .line 281
    .line 282
    :cond_14
    add-int/lit8 v10, v10, -0x1

    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_15
    iget-object v4, v2, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 286
    .line 287
    iget-object v4, v4, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 288
    .line 289
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 290
    .line 291
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 292
    .line 293
    .line 294
    move-result v10

    .line 295
    sub-int/2addr v10, v11

    .line 296
    :goto_a
    if-ltz v10, :cond_18

    .line 297
    .line 298
    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v13

    .line 302
    check-cast v13, Lcom/android/server/wm/InsetsSourceProvider;

    .line 303
    .line 304
    iget-object v14, v13, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrames:Landroid/util/SparseArray;

    .line 305
    .line 306
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->contains(I)Z

    .line 307
    .line 308
    .line 309
    move-result v14

    .line 310
    if-eqz v14, :cond_17

    .line 311
    .line 312
    if-ne v8, v1, :cond_16

    .line 313
    .line 314
    new-instance v14, Landroid/view/InsetsState;

    .line 315
    .line 316
    invoke-direct {v14, v8}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 317
    .line 318
    .line 319
    move-object v8, v14

    .line 320
    :cond_16
    new-instance v14, Landroid/view/InsetsSource;

    .line 321
    .line 322
    iget-object v15, v13, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 323
    .line 324
    invoke-direct {v14, v15}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 325
    .line 326
    .line 327
    iget-object v13, v13, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrames:Landroid/util/SparseArray;

    .line 328
    .line 329
    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v13

    .line 333
    check-cast v13, Landroid/graphics/Rect;

    .line 334
    .line 335
    invoke-virtual {v14, v13}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v8, v14}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 339
    .line 340
    .line 341
    :cond_17
    add-int/lit8 v10, v10, -0x1

    .line 342
    .line 343
    goto :goto_a

    .line 344
    :cond_18
    invoke-static {v6}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    .line 345
    .line 346
    .line 347
    move-result v1

    .line 348
    if-nez v1, :cond_19

    .line 349
    .line 350
    const/4 v1, 0x6

    .line 351
    if-ne v6, v1, :cond_1b

    .line 352
    .line 353
    if-eqz v7, :cond_1b

    .line 354
    .line 355
    :cond_19
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-eq v6, v12, :cond_1a

    .line 360
    .line 361
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    or-int/2addr v1, v4

    .line 366
    :cond_1a
    new-instance v4, Landroid/view/InsetsState;

    .line 367
    .line 368
    invoke-direct {v4}, Landroid/view/InsetsState;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v4, v8, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 372
    .line 373
    .line 374
    move-object v8, v4

    .line 375
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    if-eqz v1, :cond_1c

    .line 380
    .line 381
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 382
    .line 383
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 384
    .line 385
    invoke-virtual {v1, v0, v8}, Lcom/android/server/wm/UdcCutoutPolicy;->adjustInsetsForUdc(Lcom/android/server/wm/WindowContainer;Landroid/view/InsetsState;)V

    .line 386
    .line 387
    .line 388
    :cond_1c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    .line 389
    .line 390
    if-eqz v1, :cond_1d

    .line 391
    .line 392
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 393
    .line 394
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-nez v1, :cond_1e

    .line 399
    .line 400
    :cond_1d
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 401
    .line 402
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 403
    .line 404
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 405
    .line 406
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 407
    .line 408
    invoke-virtual {v1, v8}, Lcom/android/server/wm/TaskbarController;->adjustInsetsForTaskbar(Landroid/view/InsetsState;)Landroid/view/InsetsState;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    if-nez v1, :cond_2b

    .line 417
    .line 418
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    .line 419
    .line 420
    sget v4, Landroid/view/InsetsSource;->ID_IME:I

    .line 421
    .line 422
    invoke-virtual {v1, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    if-nez v1, :cond_2b

    .line 427
    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 433
    .line 434
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 435
    .line 436
    iget v1, v1, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    .line 437
    .line 438
    if-eqz v1, :cond_2b

    .line 439
    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 445
    .line 446
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 447
    .line 448
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 449
    .line 450
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 451
    .line 452
    iget v4, v4, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 453
    .line 454
    iget-object v5, v1, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 455
    .line 456
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 457
    .line 458
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 459
    .line 460
    iget-boolean v6, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mNavBarImeBtnEnabled:Z

    .line 461
    .line 462
    if-nez v6, :cond_1f

    .line 463
    .line 464
    iget-boolean v5, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mShowKeyboardBtnEnabled:Z

    .line 465
    .line 466
    if-eqz v5, :cond_2b

    .line 467
    .line 468
    :cond_1f
    iget-boolean v5, v1, Lcom/android/server/wm/DisplayPolicyExt;->mNavBarImeBtnAllRotationsAllowed:Z

    .line 469
    .line 470
    if-nez v5, :cond_20

    .line 471
    .line 472
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 473
    .line 474
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 475
    .line 476
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 477
    .line 478
    invoke-virtual {v1, v4}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-eqz v1, :cond_2b

    .line 483
    .line 484
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 489
    .line 490
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    iget-object v1, v1, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 495
    .line 496
    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    if-nez v1, :cond_21

    .line 501
    .line 502
    goto/16 :goto_d

    .line 503
    .line 504
    :cond_21
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 505
    .line 506
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 507
    .line 508
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 509
    .line 510
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 511
    .line 512
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 513
    .line 514
    iget-object v5, v1, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 515
    .line 516
    if-nez v5, :cond_22

    .line 517
    .line 518
    goto/16 :goto_c

    .line 519
    .line 520
    :cond_22
    invoke-virtual {v1}, Lcom/android/server/wm/TaskbarController;->hasTaskbar()Z

    .line 521
    .line 522
    .line 523
    move-result v5

    .line 524
    if-eqz v5, :cond_24

    .line 525
    .line 526
    iget-object v5, v1, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 527
    .line 528
    if-nez v5, :cond_23

    .line 529
    .line 530
    move-object v5, v3

    .line 531
    goto :goto_b

    .line 532
    :cond_23
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 533
    .line 534
    .line 535
    move-result-object v5

    .line 536
    goto :goto_b

    .line 537
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/wm/TaskbarController;->getNavigationBarProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 538
    .line 539
    .line 540
    move-result-object v5

    .line 541
    :goto_b
    if-nez v5, :cond_25

    .line 542
    .line 543
    goto :goto_c

    .line 544
    :cond_25
    iget-object v6, v5, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 545
    .line 546
    if-eqz v6, :cond_27

    .line 547
    .line 548
    invoke-virtual {v6}, Landroid/view/InsetsSource;->isVisible()Z

    .line 549
    .line 550
    .line 551
    move-result v7

    .line 552
    if-eqz v7, :cond_27

    .line 553
    .line 554
    iget-object v7, v5, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrames:Landroid/util/SparseArray;

    .line 555
    .line 556
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->contains(I)Z

    .line 557
    .line 558
    .line 559
    move-result v7

    .line 560
    if-eqz v7, :cond_27

    .line 561
    .line 562
    iget-object v7, v5, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrames:Landroid/util/SparseArray;

    .line 563
    .line 564
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v7

    .line 568
    check-cast v7, Landroid/graphics/Rect;

    .line 569
    .line 570
    invoke-virtual {v6}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 571
    .line 572
    .line 573
    move-result-object v10

    .line 574
    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v7

    .line 578
    if-eqz v7, :cond_26

    .line 579
    .line 580
    goto :goto_c

    .line 581
    :cond_26
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 582
    .line 583
    const/16 v7, 0x7dc

    .line 584
    .line 585
    if-ne v4, v7, :cond_27

    .line 586
    .line 587
    invoke-virtual {v1}, Lcom/android/server/wm/TaskbarController;->hasTaskbar()Z

    .line 588
    .line 589
    .line 590
    move-result v4

    .line 591
    if-eqz v4, :cond_27

    .line 592
    .line 593
    iget-object v4, v1, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 594
    .line 595
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 596
    .line 597
    .line 598
    move-result v4

    .line 599
    if-eqz v4, :cond_27

    .line 600
    .line 601
    iget-object v1, v1, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 602
    .line 603
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 604
    .line 605
    iget v1, v1, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    .line 606
    .line 607
    if-eqz v1, :cond_27

    .line 608
    .line 609
    new-instance v1, Landroid/view/InsetsSource;

    .line 610
    .line 611
    invoke-direct {v1, v6}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 612
    .line 613
    .line 614
    iget-object v4, v5, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrames:Landroid/util/SparseArray;

    .line 615
    .line 616
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v4

    .line 620
    check-cast v4, Landroid/graphics/Rect;

    .line 621
    .line 622
    invoke-virtual {v1, v4}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 623
    .line 624
    .line 625
    new-instance v4, Landroid/view/InsetsState;

    .line 626
    .line 627
    invoke-direct {v4, v8}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v4, v1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 631
    .line 632
    .line 633
    move-object v8, v4

    .line 634
    :cond_27
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 639
    .line 640
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 641
    .line 642
    if-nez v1, :cond_28

    .line 643
    .line 644
    goto :goto_d

    .line 645
    :cond_28
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 646
    .line 647
    .line 648
    move-result-object v1

    .line 649
    if-nez v1, :cond_29

    .line 650
    .line 651
    goto :goto_d

    .line 652
    :cond_29
    iget-object v4, v1, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 653
    .line 654
    if-eqz v4, :cond_2b

    .line 655
    .line 656
    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    .line 657
    .line 658
    .line 659
    move-result v5

    .line 660
    if-eqz v5, :cond_2b

    .line 661
    .line 662
    iget-object v5, v1, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrames:Landroid/util/SparseArray;

    .line 663
    .line 664
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->contains(I)Z

    .line 665
    .line 666
    .line 667
    move-result v5

    .line 668
    if-eqz v5, :cond_2b

    .line 669
    .line 670
    iget-object v5, v1, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrames:Landroid/util/SparseArray;

    .line 671
    .line 672
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v5

    .line 676
    check-cast v5, Landroid/graphics/Rect;

    .line 677
    .line 678
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 679
    .line 680
    .line 681
    move-result-object v6

    .line 682
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    move-result v5

    .line 686
    if-eqz v5, :cond_2a

    .line 687
    .line 688
    goto :goto_d

    .line 689
    :cond_2a
    new-instance v5, Landroid/view/InsetsSource;

    .line 690
    .line 691
    invoke-direct {v5, v4}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 692
    .line 693
    .line 694
    iget-object v1, v1, Lcom/android/server/wm/InsetsSourceProvider;->mOverrideFrames:Landroid/util/SparseArray;

    .line 695
    .line 696
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v1

    .line 700
    check-cast v1, Landroid/graphics/Rect;

    .line 701
    .line 702
    invoke-virtual {v5, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 703
    .line 704
    .line 705
    new-instance v1, Landroid/view/InsetsState;

    .line 706
    .line 707
    invoke-direct {v1, v8}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v1, v5}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 711
    .line 712
    .line 713
    move-object v8, v1

    .line 714
    :cond_2b
    :goto_d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_SYSTEMUI_VISIBILITY:Z

    .line 715
    .line 716
    if-eqz v1, :cond_31

    .line 717
    .line 718
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 719
    .line 720
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 721
    .line 722
    const/16 v4, 0x7f8

    .line 723
    .line 724
    if-eq v1, v4, :cond_31

    .line 725
    .line 726
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/FlexPanelController;->isFlexPanelTopEnabled(Lcom/android/server/wm/WindowState;)Z

    .line 727
    .line 728
    .line 729
    move-result v1

    .line 730
    if-eqz v1, :cond_31

    .line 731
    .line 732
    invoke-virtual {v8}, Landroid/view/InsetsState;->sourceSize()I

    .line 733
    .line 734
    .line 735
    move-result v1

    .line 736
    sub-int/2addr v1, v11

    .line 737
    move-object v4, v3

    .line 738
    :goto_e
    if-ltz v1, :cond_30

    .line 739
    .line 740
    invoke-virtual {v8, v1}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 741
    .line 742
    .line 743
    move-result-object v5

    .line 744
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    .line 745
    .line 746
    .line 747
    move-result v6

    .line 748
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 749
    .line 750
    .line 751
    move-result v7

    .line 752
    if-ne v6, v7, :cond_2c

    .line 753
    .line 754
    new-instance v6, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;

    .line 755
    .line 756
    const/4 v7, 0x0

    .line 757
    invoke-direct {v6, v5, v7}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;-><init>(Landroid/view/InsetsSource;I)V

    .line 758
    .line 759
    .line 760
    goto :goto_f

    .line 761
    :cond_2c
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 762
    .line 763
    .line 764
    move-result v7

    .line 765
    if-ne v6, v7, :cond_2d

    .line 766
    .line 767
    invoke-virtual {v5}, Landroid/view/InsetsSource;->isVisible()Z

    .line 768
    .line 769
    .line 770
    move-result v6

    .line 771
    if-eqz v6, :cond_2d

    .line 772
    .line 773
    new-instance v6, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;

    .line 774
    .line 775
    const/4 v7, 0x1

    .line 776
    invoke-direct {v6, v5, v7}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda2;-><init>(Landroid/view/InsetsSource;I)V

    .line 777
    .line 778
    .line 779
    goto :goto_f

    .line 780
    :cond_2d
    move-object v6, v3

    .line 781
    :goto_f
    if-eqz v6, :cond_2f

    .line 782
    .line 783
    if-nez v4, :cond_2e

    .line 784
    .line 785
    new-instance v4, Landroid/view/InsetsState;

    .line 786
    .line 787
    invoke-direct {v4, v8}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 788
    .line 789
    .line 790
    :cond_2e
    invoke-interface {v6, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 791
    .line 792
    .line 793
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    .line 794
    .line 795
    goto :goto_e

    .line 796
    :cond_30
    if-eqz v4, :cond_31

    .line 797
    .line 798
    move-object v8, v4

    .line 799
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 800
    .line 801
    .line 802
    move-result v1

    .line 803
    if-eqz v1, :cond_33

    .line 804
    .line 805
    invoke-virtual {v8}, Landroid/view/InsetsState;->sourceSize()I

    .line 806
    .line 807
    .line 808
    move-result v1

    .line 809
    sub-int/2addr v1, v11

    .line 810
    :goto_10
    if-ltz v1, :cond_33

    .line 811
    .line 812
    invoke-virtual {v8, v1}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 813
    .line 814
    .line 815
    move-result-object v3

    .line 816
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    .line 817
    .line 818
    .line 819
    move-result v3

    .line 820
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    .line 821
    .line 822
    .line 823
    move-result v4

    .line 824
    if-ne v3, v4, :cond_32

    .line 825
    .line 826
    new-instance v3, Landroid/view/InsetsState;

    .line 827
    .line 828
    invoke-direct {v3, v8}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v3, v1}, Landroid/view/InsetsState;->removeSourceAt(I)V

    .line 832
    .line 833
    .line 834
    move-object v8, v3

    .line 835
    goto :goto_11

    .line 836
    :cond_32
    add-int/lit8 v1, v1, -0x1

    .line 837
    .line 838
    goto :goto_10

    .line 839
    :cond_33
    :goto_11
    move/from16 v1, p1

    .line 840
    .line 841
    invoke-virtual {v2, v0, v8, v1}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    return-object v0
.end method

.method public final getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;
    .locals 5

    .line 1
    new-instance v0, Landroid/view/InsetsState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v0, v1, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/InsetsState;->sourceSize()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sub-int/2addr v1, v2

    .line 17
    :goto_0
    if-ltz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eq v4, v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 38
    .line 39
    .line 40
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-object v0
.end method

.method public final getMaxBounds()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mRotatedOverrideConfiguration:Landroid/content/res/Configuration;

    .line 12
    .line 13
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getMaxBounds()Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final getOrientationChanging()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 34
    .line 35
    if-eq v0, v2, :cond_2

    .line 36
    .line 37
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    .line 42
    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    :cond_2
    return v1
.end method

.method public final getParentWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method public final getPid()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/Session;->mPid:I

    .line 4
    .line 5
    return p0
.end method

.method public final getProtoFieldId()J
    .locals 2

    .line 1
    const-wide v0, 0x10b00000008L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide v0
.end method

.method public final getRectsInScreenSpace(Ljava/util/List;Landroid/graphics/Matrix;[F)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p3, Landroid/graphics/RectF;

    .line 10
    .line 11
    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    .line 12
    .line 13
    .line 14
    check-cast p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-virtual {p3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 36
    .line 37
    .line 38
    new-instance v0, Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-object p0
.end method

.method public final getRequestedVisibleTypes()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getRootTask()Lcom/android/server/wm/Task;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 17
    .line 18
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 19
    .line 20
    const/16 v1, 0x7d0

    .line 21
    .line 22
    if-lt p0, v1, :cond_1

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget-object p0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    :goto_0
    return-object p0
.end method

.method public final getSession()Landroid/view/SurfaceSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final getTask()Lcom/android/server/wm/Task;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
.end method

.method public final getTouchableRegion(Landroid/graphics/Region;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_3

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v1, v2, :cond_2

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 23
    .line 24
    .line 25
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 30
    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Region;->translate(II)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    add-int/2addr v2, v3

    .line 46
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 47
    .line 48
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 49
    .line 50
    add-int/2addr v3, v4

    .line 51
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 54
    .line 55
    sub-int/2addr v4, v5

    .line 56
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 59
    .line 60
    sub-int/2addr v0, v1

    .line 61
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Region;->set(IIII)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 66
    .line 67
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 68
    .line 69
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 70
    .line 71
    add-int/2addr v2, v3

    .line 72
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 73
    .line 74
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 75
    .line 76
    add-int/2addr v3, v4

    .line 77
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 78
    .line 79
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 80
    .line 81
    sub-int/2addr v4, v5

    .line 82
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 83
    .line 84
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 85
    .line 86
    sub-int/2addr v0, v1

    .line 87
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Region;->set(IIII)Z

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToRootTaskBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final getTransformationMatrix([FLandroid/graphics/Matrix;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aput v0, p1, v1

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    const/4 v2, 0x0

    .line 8
    aput v2, p1, v1

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    aput v2, p1, v1

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    aput v0, p1, v1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 19
    .line 20
    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowState;->transformSurfaceInsetsPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 26
    .line 27
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    .line 30
    .line 31
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 32
    .line 33
    add-int/2addr v1, v4

    .line 34
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 35
    .line 36
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 37
    .line 38
    add-int/2addr v0, v3

    .line 39
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 52
    .line 53
    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 54
    .line 55
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 58
    .line 59
    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 60
    .line 61
    iget v5, p0, Landroid/graphics/Rect;->left:I

    .line 62
    .line 63
    sub-int/2addr v4, v5

    .line 64
    add-int/2addr v1, v4

    .line 65
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 66
    .line 67
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 68
    .line 69
    sub-int/2addr v3, p0

    .line 70
    add-int/2addr v0, v3

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    if-eqz v3, :cond_1

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    iget v3, p0, Landroid/graphics/Rect;->left:I

    .line 79
    .line 80
    add-int/2addr v1, v3

    .line 81
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 82
    .line 83
    add-int/2addr v0, p0

    .line 84
    :cond_1
    :goto_0
    const/4 p0, 0x2

    .line 85
    int-to-float v1, v1

    .line 86
    aput v1, p1, p0

    .line 87
    .line 88
    const/4 p0, 0x5

    .line 89
    int-to-float v0, v0

    .line 90
    aput v0, p1, p0

    .line 91
    .line 92
    const/4 p0, 0x6

    .line 93
    aput v2, p1, p0

    .line 94
    .line 95
    const/4 p0, 0x7

    .line 96
    aput v2, p1, p0

    .line 97
    .line 98
    const/16 p0, 0x8

    .line 99
    .line 100
    const/high16 v0, 0x3f800000    # 1.0f

    .line 101
    .line 102
    aput v0, p1, p0

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final getVisibleBounds(Landroid/graphics/Rect;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToRootTaskBounds()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v1

    .line 17
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 23
    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    move v1, v2

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 51
    .line 52
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 59
    .line 60
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 61
    .line 62
    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 63
    .line 64
    move-object v3, p1

    .line 65
    invoke-virtual/range {v2 .. v7}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 70
    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 77
    .line 78
    .line 79
    :cond_3
    return-void
.end method

.method public final getWindow()Lcom/android/server/wm/WindowState;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    return-object p0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    :goto_1
    if-ltz v0, :cond_4

    .line 6
    iget v3, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v3, :cond_4

    .line 7
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_1

    .line 9
    :cond_4
    :goto_2
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object p0

    :cond_5
    :goto_3
    if-ltz v0, :cond_8

    .line 10
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-object v2

    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_7

    goto :goto_4

    .line 11
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_3

    :cond_8
    :goto_4
    return-object v1
.end method

.method public final getWindowState()Lcom/android/server/wm/WindowState;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final getWindowTag()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-gtz v1, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    :cond_1
    return-object v0
.end method

.method public final getWindowToken()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getWindowType()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4
    .line 5
    return p0
.end method

.method public final handleCompleteDeferredRemoval()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowState;->isSelfAnimating(II)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final handleTapOutsideFocusInsideSelf()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveDisplayToTopInternal(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerService;->handleTaskFocusChange(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final handleTapOutsideFocusOutsideSelf()V
    .locals 0

    .line 1
    return-void
.end method

.method public final hasCompatScale()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 21
    .line 22
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, v0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    move v0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/CompatModePackages;->mLegacyScreenCompatPackages:Landroid/util/SparseBooleanArray;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    :goto_0
    const/4 v1, 0x1

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    return v1

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasSizeCompatBounds()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_4

    .line 57
    .line 58
    :cond_3
    iget p0, p0, Lcom/android/server/wm/WindowState;->mOverrideScale:F

    .line 59
    .line 60
    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    .line 62
    cmpl-float p0, p0, v0

    .line 63
    .line 64
    if-eqz p0, :cond_5

    .line 65
    .line 66
    :cond_4
    move v2, v1

    .line 67
    :cond_5
    return v2
.end method

.method public final hasContentToDisplay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    :cond_0
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->hasContentToDisplay()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final hasMoved()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 16
    .line 17
    if-nez v1, :cond_3

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    if-ne v2, v3, :cond_1

    .line 28
    .line 29
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 30
    .line 31
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 32
    .line 33
    if-ne v1, v0, :cond_1

    .line 34
    .line 35
    invoke-static {p0}, Lcom/android/server/wm/AppCompatReachabilityPolicy;->shouldPlayMoveAnimation(Lcom/android/server/wm/WindowState;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 50
    .line 51
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 54
    .line 55
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 56
    .line 57
    if-ne v2, v3, :cond_1

    .line 58
    .line 59
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 60
    .line 61
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 62
    .line 63
    if-eq v1, v0, :cond_3

    .line 64
    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_3

    .line 86
    .line 87
    const/4 p0, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const/4 p0, 0x0

    .line 90
    :goto_0
    return p0
.end method

.method public final hasWallpaper()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4
    .line 5
    const/high16 v1, 0x100000

    .line 6
    .line 7
    and-int/2addr v0, v1

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatLetterboxOverrides:Lcom/android/server/wm/AppCompatLetterboxOverrides;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->hasWallpaperBackgroundForLetterbox()Z

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
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 30
    :goto_1
    return p0
.end method

.method public final hide(ZZ)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    move p1, v0

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 20
    .line 21
    and-int/2addr v2, v1

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    move v2, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move v2, v0

    .line 27
    :goto_0
    if-nez v2, :cond_3

    .line 28
    .line 29
    return v0

    .line 30
    :cond_3
    const/4 v2, 0x2

    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 34
    .line 35
    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_4

    .line 40
    .line 41
    move p1, v0

    .line 42
    :cond_4
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez p1, :cond_6

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 56
    .line 57
    .line 58
    if-eqz v3, :cond_6

    .line 59
    .line 60
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    .line 61
    .line 62
    aget-boolean p1, p1, v2

    .line 63
    .line 64
    if-eqz p1, :cond_5

    .line 65
    .line 66
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 67
    .line 68
    const-wide v5, -0x2e33f337347c71dL

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    const/4 v8, 0x0

    .line 75
    const/4 v9, 0x0

    .line 76
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 80
    .line 81
    iput-boolean v1, p1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 82
    .line 83
    :cond_6
    if-eqz p2, :cond_7

    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 88
    .line 89
    .line 90
    :cond_7
    if-eqz v3, :cond_8

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 93
    .line 94
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 95
    .line 96
    .line 97
    :cond_8
    return v1
.end method

.method public final hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 1

    .line 1
    const/16 p2, 0x16

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p3, p2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-interface {p0, p1, v0, p3}, Landroid/view/IWindow;->hideInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string p1, "WindowManager"

    .line 19
    .line 20
    const-string v0, "Failed to deliver hideInsets"

    .line 21
    .line 22
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0, p3, p2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public final initAppOpsState()V
    .locals 7

    .line 1
    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eq v1, v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 14
    .line 15
    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v6, "init-default-visibility"

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    if-eq v0, v1, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public final isAnimationRunningSelfOrParent()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x10

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    :cond_1
    return v1
.end method

.method public final isDisplayed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    :cond_1
    const/4 p0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 p0, 0x0

    .line 38
    :goto_0
    return p0
.end method

.method public final isDrawFinishedLw()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq p0, v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    if-ne p0, v0, :cond_1

    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
.end method

.method public final isDrawn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-ne p0, v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final isEmbedded()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

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

.method public final isFocused()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    if-ne v0, p0, :cond_0

    .line 8
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

.method public final isFullyTransparent()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    cmpl-float p0, p0, v0

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public final isGoneForLayout()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    if-eq v1, v2, :cond_5

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 10
    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_5

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_5

    .line 26
    .line 27
    :cond_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_5

    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    const/4 v0, 0x3

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    :cond_3
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 60
    .line 61
    if-eqz p0, :cond_4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    const/4 p0, 0x0

    .line 65
    goto :goto_1

    .line 66
    :cond_5
    :goto_0
    const/4 p0, 0x1

    .line 67
    :goto_1
    return p0
.end method

.method public final isImeLayeringTarget()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-ne v0, p0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_0
    return v1
.end method

.method public final isImeOverlayLayeringTarget()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 10
    .line 11
    const v0, 0x20008

    .line 12
    .line 13
    .line 14
    and-int/2addr p0, v0

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

.method public final isInputMethodClientFocus(II)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 14
    .line 15
    iget v1, p0, Lcom/android/server/wm/Session;->mUid:I

    .line 16
    .line 17
    if-ne v1, p1, :cond_1

    .line 18
    .line 19
    iget p0, p0, Lcom/android/server/wm/Session;->mPid:I

    .line 20
    .line 21
    if-ne p0, p2, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    :cond_1
    :goto_0
    return v0
.end method

.method public final isLetterboxedForDisplayCutout()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

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
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/android/server/wm/WindowFrames;->mParentFrameWasClippedByDisplayCutout:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 17
    .line 18
    const/4 v3, 0x3

    .line 19
    if-ne v2, v3, :cond_2

    .line 20
    .line 21
    return v1

    .line 22
    :cond_2
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    return v1

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    xor-int/lit8 p0, p0, 0x1

    .line 62
    .line 63
    return p0
.end method

.method public final isOnScreen()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 7
    .line 8
    if-nez v0, :cond_a

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isStartingWindowAssociatedToTask()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_4

    .line 52
    .line 53
    :cond_3
    move v1, v2

    .line 54
    :cond_4
    return v1

    .line 55
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_7

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-nez p0, :cond_6

    .line 68
    .line 69
    iget-boolean p0, v0, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 70
    .line 71
    if-eqz p0, :cond_6

    .line 72
    .line 73
    move v1, v2

    .line 74
    :cond_6
    return v1

    .line 75
    :cond_7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 76
    .line 77
    if-eqz v0, :cond_8

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_8

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    return p0

    .line 92
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_9

    .line 97
    .line 98
    const/4 v0, 0x3

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_a

    .line 104
    .line 105
    :cond_9
    move v1, v2

    .line 106
    :cond_a
    :goto_1
    return v1
.end method

.method public final isParentWindowHidden()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

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

.method public final isPopOver()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 8
    .line 9
    if-eqz p0, :cond_0

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

.method public final isReadyForDisplay()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 35
    .line 36
    if-nez v3, :cond_2

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    :cond_1
    move v1, v2

    .line 48
    :cond_2
    return v1
.end method

.method public final isRequestedVisible(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final isRequestedVisible$1(I)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/2addr v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    and-int/2addr v0, p1

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {p0}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    iget p0, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 31
    .line 32
    and-int/2addr p0, p1

    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    :cond_2
    return v1
.end method

.method public final isRtl()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final isSecureLocked()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableSecureWindows:Z

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
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 12
    .line 13
    and-int/lit16 v0, v0, 0x2000

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    const-string v0, "Screen Capture is disabled by mdm for user("

    .line 20
    .line 21
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mRestrictionPolicy:Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

    .line 22
    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    const-class v3, Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

    .line 32
    .line 33
    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mRestrictionPolicy:Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

    .line 34
    .line 35
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mRestrictionPolicy:Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

    .line 36
    .line 37
    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mRestrictionPolicy:Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    iget v4, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    .line 42
    .line 43
    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;->isScreenCaptureEnabledEx(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    const-string v3, "WindowManager"

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget v0, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    .line 57
    .line 58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ")"

    .line 62
    .line 63
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    return v2

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSensitiveContentPackages:Lcom/android/server/wm/SensitiveContentPackages;

    .line 81
    .line 82
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 83
    .line 84
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 85
    .line 86
    iget v4, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 87
    .line 88
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 89
    .line 90
    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/server/wm/SensitiveContentPackages;->shouldBlockScreenCaptureForApp(ILandroid/os/IBinder;Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    return v2

    .line 101
    :cond_4
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-nez v0, :cond_5

    .line 106
    .line 107
    return v1

    .line 108
    :cond_5
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget p0, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    .line 113
    .line 114
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(I)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    xor-int/2addr p0, v2

    .line 119
    return p0
.end method

.method public final isSelfAnimating(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public isSelfOrAncestorWindowAnimatingExit()Z
    .locals 1

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final isSplitEmbedded()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

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

.method public final isStartingWindowAssociatedToTask()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
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

.method public final isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_WAIT_TO_HANDLE_RESIZING_FROM_CLIENT:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWaitToHandleResizing:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_1
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 26
    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    .line 40
    .line 41
    if-gtz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onSyncFinishedDrawing()Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 56
    .line 57
    if-ne v0, v1, :cond_3

    .line 58
    .line 59
    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onSyncFinishedDrawing()Z

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0

    .line 71
    :cond_4
    :goto_1
    return v1
.end method

.method public final isTrustedOverlay()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/window/flags/Flags;->surfaceTrustedOverlay()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWindowTrustedOverlay()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isWindowTrustedOverlay()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v2

    .line 29
    :cond_1
    :goto_0
    return v1

    .line 30
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 33
    .line 34
    iget p0, p0, Landroid/view/InputWindowHandle;->inputConfig:I

    .line 35
    .line 36
    and-int/lit16 p0, p0, 0x100

    .line 37
    .line 38
    if-eqz p0, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    move v1, v2

    .line 42
    :goto_1
    return v1
.end method

.method public final isVisible()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    iget-boolean p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final isVisibleByPolicy()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-ne p0, v0, :cond_0

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

.method public final isVisibleNow()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
.end method

.method public final isVisibleRequested()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 17
    .line 18
    if-nez v0, :cond_4

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    :cond_3
    move v0, v2

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    :goto_0
    move v0, v1

    .line 63
    :goto_1
    if-eqz v0, :cond_7

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    iget-boolean v0, v0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 76
    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    :cond_5
    move v0, v2

    .line 80
    goto :goto_2

    .line 81
    :cond_6
    move v0, v1

    .line 82
    :goto_2
    if-eqz v0, :cond_7

    .line 83
    .line 84
    move v1, v2

    .line 85
    :cond_7
    if-eqz v1, :cond_8

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldCheckTokenVisibleRequested()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_8

    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    return p0

    .line 100
    :cond_8
    return v1
.end method

.method public final isVisibleRequestedOrAdding()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 40
    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    const/4 p0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 p0, 0x0

    .line 46
    :goto_0
    return p0
.end method

.method public final isWindowTrustedOverlay()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4
    .line 5
    const/16 v2, 0x7f7

    .line 6
    .line 7
    if-eq v1, v2, :cond_4

    .line 8
    .line 9
    const/16 v2, 0x7db

    .line 10
    .line 11
    if-eq v1, v2, :cond_4

    .line 12
    .line 13
    const/16 v2, 0x7dc

    .line 14
    .line 15
    if-eq v1, v2, :cond_4

    .line 16
    .line 17
    const/16 v2, 0x7eb

    .line 18
    .line 19
    if-eq v1, v2, :cond_4

    .line 20
    .line 21
    const/16 v2, 0x7d0

    .line 22
    .line 23
    if-eq v1, v2, :cond_4

    .line 24
    .line 25
    const/16 v2, 0x7f8

    .line 26
    .line 27
    if-eq v1, v2, :cond_4

    .line 28
    .line 29
    const/16 v2, 0x7e3

    .line 30
    .line 31
    if-eq v1, v2, :cond_4

    .line 32
    .line 33
    const/16 v2, 0x7e8

    .line 34
    .line 35
    if-eq v1, v2, :cond_4

    .line 36
    .line 37
    const/16 v2, 0x7df

    .line 38
    .line 39
    if-eq v1, v2, :cond_4

    .line 40
    .line 41
    const/16 v2, 0x7f2

    .line 42
    .line 43
    if-eq v1, v2, :cond_4

    .line 44
    .line 45
    const/16 v2, 0x7f0

    .line 46
    .line 47
    if-eq v1, v2, :cond_4

    .line 48
    .line 49
    const/16 v2, 0x7e6

    .line 50
    .line 51
    if-eq v1, v2, :cond_4

    .line 52
    .line 53
    const/16 v2, 0x7ef

    .line 54
    .line 55
    if-eq v1, v2, :cond_4

    .line 56
    .line 57
    const/16 v2, 0x7f9

    .line 58
    .line 59
    if-ne v1, v2, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 63
    .line 64
    const/high16 v2, 0x20000000

    .line 65
    .line 66
    and-int/2addr v2, v1

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 70
    .line 71
    iget-boolean v2, v2, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 72
    .line 73
    if-nez v2, :cond_4

    .line 74
    .line 75
    :cond_1
    and-int/lit8 v1, v1, 0x8

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 80
    .line 81
    iget-boolean p0, p0, Lcom/android/server/wm/Session;->mCanCreateSystemApplicationOverlay:Z

    .line 82
    .line 83
    if-nez p0, :cond_4

    .line 84
    .line 85
    :cond_2
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 86
    .line 87
    const/high16 v0, 0x20000

    .line 88
    .line 89
    and-int/2addr p0, v0

    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const/4 p0, 0x0

    .line 94
    goto :goto_1

    .line 95
    :cond_4
    :goto_0
    const/4 p0, 0x1

    .line 96
    :goto_1
    return p0
.end method

.method public final logExclusionRestrictions(I)V
    .locals 14

    .line 1
    sget-object v0, Lcom/android/server/wm/DisplayContent;->COPY_SOURCE_VISIBILITY:Lcom/android/server/wm/DisplayContent$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    .line 6
    .line 7
    iget-wide v0, v0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-gtz v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 20
    .line 21
    const/16 v2, 0x7dd

    .line 22
    .line 23
    if-eq v1, v2, :cond_4

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    if-eq v1, v2, :cond_4

    .line 27
    .line 28
    const/16 v2, 0x7e3

    .line 29
    .line 30
    if-eq v1, v2, :cond_4

    .line 31
    .line 32
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 33
    .line 34
    and-int/lit8 v0, v0, 0x10

    .line 35
    .line 36
    if-nez v0, :cond_4

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-static {p0, v0}, Lcom/android/server/wm/DisplayContent;->needsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 50
    .line 51
    iget-boolean v2, v1, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    iget v2, v1, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    .line 56
    .line 57
    if-gtz v2, :cond_1

    .line 58
    .line 59
    iget v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    .line 60
    .line 61
    if-lez v1, :cond_4

    .line 62
    .line 63
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    .line 68
    .line 69
    aget-wide v3, v3, p1

    .line 70
    .line 71
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 72
    .line 73
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    .line 74
    .line 75
    iget-wide v5, v5, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    .line 76
    .line 77
    add-long/2addr v3, v5

    .line 78
    cmp-long v1, v1, v3

    .line 79
    .line 80
    if-gez v1, :cond_2

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 84
    .line 85
    .line 86
    move-result-wide v1

    .line 87
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    .line 88
    .line 89
    aget-wide v4, v3, p1

    .line 90
    .line 91
    sub-long v4, v1, v4

    .line 92
    .line 93
    aput-wide v1, v3, p1

    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    .line 96
    .line 97
    aget v8, v1, p1

    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    .line 100
    .line 101
    aget v1, v1, p1

    .line 102
    .line 103
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 104
    .line 105
    iget-object v7, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 106
    .line 107
    sub-int v9, v8, v1

    .line 108
    .line 109
    add-int/lit8 v10, p1, 0x1

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 116
    .line 117
    const/4 p1, 0x2

    .line 118
    if-ne p0, p1, :cond_3

    .line 119
    .line 120
    :goto_0
    move v11, v0

    .line 121
    goto :goto_1

    .line 122
    :cond_3
    const/4 v0, 0x0

    .line 123
    goto :goto_0

    .line 124
    :goto_1
    long-to-int v13, v4

    .line 125
    const/16 v6, 0xdf

    .line 126
    .line 127
    const/4 v12, 0x0

    .line 128
    invoke-static/range {v6 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIIZZI)V

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_2
    return-void
.end method

.method public final mightAffectAllDrawn()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2
    .line 3
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    if-ne v0, v3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    move v0, v2

    .line 16
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_2

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 25
    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 29
    .line 30
    if-nez p0, :cond_3

    .line 31
    .line 32
    move v1, v2

    .line 33
    :cond_3
    return v1
.end method

.method public final needsZBoost()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->needsZBoost()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_0
    return v1
.end method

.method public final notifyInsetsChanged()V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    const-wide v2, -0x485151d3667acd64L    # -1.7609667631311783E-40

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 29
    .line 30
    iget-boolean v1, v0, Lcom/android/server/wm/WindowFrames;->mInsetsChanged:Z

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    iput-boolean v1, v0, Lcom/android/server/wm/WindowFrames;->mInsetsChanged:Z

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 38
    .line 39
    iget v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    .line 40
    .line 41
    add-int/2addr v2, v1

    .line 42
    iput v2, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsInsetsChanged:I

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 45
    .line 46
    const/16 v1, 0x42

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void
.end method

.method public final notifyInsetsControlChanged(I)V
    .locals 7

    .line 1
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget-boolean p1, p1, v0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 13
    .line 14
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    const-wide v2, -0x2c37c2a3df2fc52bL    # -4.044973220124337E95

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedInsetsState:Landroid/view/InsetsState;

    .line 34
    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->fillInsetsState(Landroid/view/InsetsState;Z)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastReportedActiveControls:Landroid/view/InsetsSourceControl$Array;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 45
    .line 46
    invoke-virtual {v1, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1, v1, v0}, Landroid/view/InsetsSourceControl$Array;->set([Landroid/view/InsetsSourceControl;Z)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastReportedActiveControls:Landroid/view/InsetsSourceControl$Array;

    .line 54
    .line 55
    if-eq p1, v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1, p1, v0}, Landroid/view/InsetsSourceControl$Array;->setTo(Landroid/view/InsetsSourceControl$Array;Z)V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static {}, Lcom/android/window/flags/Flags;->insetsControlChangedItem()Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastReportedInsetsState:Landroid/view/InsetsState;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mLastReportedActiveControls:Landroid/view/InsetsSourceControl$Array;

    .line 75
    .line 76
    invoke-static {v0, v1, p0}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->obtain(Landroid/view/IWindow;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->scheduleClientTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedInsetsState:Landroid/view/InsetsState;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastReportedActiveControls:Landroid/view/InsetsSourceControl$Array;

    .line 89
    .line 90
    invoke-interface {p1, v0, v1}, Landroid/view/IWindow;->insetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception p1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v1, "Failed to deliver inset control state change to w="

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const-string v0, "WindowManager"

    .line 110
    .line 111
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    :goto_0
    return-void
.end method

.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 5
    .line 6
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    aget-boolean p1, p1, p2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 21
    .line 22
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    move v3, p2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v3, v1

    .line 33
    :goto_0
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    filled-new-array {p1, v2, v3}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    const/4 v8, 0x0

    .line 48
    const-wide v5, -0x14c1b6915730ce83L    # -3.889475575308404E208

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    const/16 v7, 0x3c

    .line 54
    .line 55
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget p1, v0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 59
    .line 60
    and-int/lit8 v2, p1, 0x1

    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    move v1, p2

    .line 65
    :cond_2
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 66
    .line 67
    if-eq v1, v2, :cond_6

    .line 68
    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    or-int/2addr p1, p2

    .line 72
    iput p1, v0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 73
    .line 74
    iget-object p1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_6

    .line 88
    .line 89
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v2, "checkPolicyVisibilityChange"

    .line 96
    .line 97
    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    .line 107
    .line 108
    const/4 v1, 0x2

    .line 109
    aget-boolean p1, p1, v1

    .line 110
    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 114
    .line 115
    const-wide v2, -0x5598801f1a5cc7c0L

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    const/4 v4, 0x0

    .line 121
    const/4 v5, 0x0

    .line 122
    const/4 v6, 0x0

    .line 123
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    iget-object p1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 127
    .line 128
    iput-boolean p2, p1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 129
    .line 130
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 131
    .line 132
    .line 133
    iget-object p1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 136
    .line 137
    .line 138
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iget p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    .line 143
    .line 144
    const/16 p2, 0x7d0

    .line 145
    .line 146
    if-eq p0, p2, :cond_7

    .line 147
    .line 148
    const/16 p2, 0x7f8

    .line 149
    .line 150
    if-ne p0, p2, :cond_8

    .line 151
    .line 152
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-eqz p0, :cond_8

    .line 157
    .line 158
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 159
    .line 160
    .line 161
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    .line 162
    .line 163
    .line 164
    iget p0, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 165
    .line 166
    or-int/lit8 p0, p0, 0x8

    .line 167
    .line 168
    iput p0, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 169
    .line 170
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 171
    .line 172
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    if-eqz p0, :cond_9

    .line 177
    .line 178
    iget p0, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 179
    .line 180
    or-int/lit8 p0, p0, 0x4

    .line 181
    .line 182
    iput p0, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 183
    .line 184
    :cond_9
    iget-object p0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 185
    .line 186
    if-eqz p0, :cond_a

    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 189
    .line 190
    .line 191
    :cond_a
    return-void
.end method

.method public final onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isStartingWindowAssociatedToTask()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const p0, 0x7fffffff

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 19
    .line 20
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onAppVisibilityChanged(ZZ)V
    .locals 8

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
    if-ltz v0, :cond_0

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
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 18
    .line 19
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowState;->onAppVisibilityChanged(ZZ)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 30
    .line 31
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x3

    .line 35
    if-ne v2, v4, :cond_2

    .line 36
    .line 37
    if-nez p1, :cond_4

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 42
    .line 43
    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 50
    .line 51
    aget-boolean p1, p1, v3

    .line 52
    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 60
    .line 61
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const-wide v3, 0x6a1c335f43a33ceeL    # 1.3815180320545942E203

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 76
    .line 77
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    if-eq p1, v0, :cond_4

    .line 83
    .line 84
    if-nez p2, :cond_3

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 91
    .line 92
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 93
    .line 94
    const/4 v0, 0x2

    .line 95
    invoke-virtual {p2, v0, v3}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eqz p2, :cond_3

    .line 103
    .line 104
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransition(Lcom/android/server/wm/WindowState;I)V

    .line 105
    .line 106
    .line 107
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 108
    .line 109
    .line 110
    :cond_4
    :goto_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x5

    .line 25
    if-eq v1, p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget(Z)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 51
    .line 52
    if-eq v1, p0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    const/high16 v1, 0x20000000

    .line 62
    .line 63
    and-int/2addr p1, v1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayContent;->updateImeControlTarget(Z)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 76
    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    iget-object p1, p1, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    .line 80
    .line 81
    if-nez p1, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 84
    .line 85
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-ne p1, v0, :cond_3

    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 100
    .line 101
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_3

    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 118
    .line 119
    iput-boolean v2, p1, Lcom/android/server/wm/StartingData;->mResizedFromTransfer:Z

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->associateStartingWindowWithTaskIfNeeded()V

    .line 124
    .line 125
    .line 126
    :cond_3
    return-void
.end method

.method public final onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    :cond_0
    move v2, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v2, v0

    .line 26
    :goto_0
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    .line 27
    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 33
    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    :cond_2
    move v4, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_3
    move v4, v0

    .line 53
    :goto_1
    if-eqz p1, :cond_5

    .line 54
    .line 55
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 56
    .line 57
    if-eqz v5, :cond_5

    .line 58
    .line 59
    if-eq p1, v5, :cond_5

    .line 60
    .line 61
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 62
    .line 63
    if-ne v5, p0, :cond_5

    .line 64
    .line 65
    const/4 v6, 0x0

    .line 66
    if-eqz v5, :cond_4

    .line 67
    .line 68
    invoke-interface {v5}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move-object v5, v6

    .line 74
    :goto_2
    invoke-virtual {p1, v5}, Lcom/android/server/wm/DisplayContent;->updateImeInputAndControlTarget(Lcom/android/server/wm/InputTarget;)V

    .line 75
    .line 76
    .line 77
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 78
    .line 79
    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayContent;->setImeInputTarget(Lcom/android/server/wm/InputTarget;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 83
    .line 84
    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 88
    .line 89
    iget-object v6, v5, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 90
    .line 91
    iget v7, v6, Landroid/view/InputWindowHandle;->displayId:I

    .line 92
    .line 93
    iget v8, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 94
    .line 95
    if-eq v7, v8, :cond_7

    .line 96
    .line 97
    iget v9, p1, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    .line 98
    .line 99
    sub-int/2addr v9, v1

    .line 100
    iput v9, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 101
    .line 102
    if-ne v7, v8, :cond_6

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_6
    iput v8, v6, Landroid/view/InputWindowHandle;->displayId:I

    .line 106
    .line 107
    iput-boolean v1, v5, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 108
    .line 109
    :cond_7
    :goto_3
    if-nez v2, :cond_8

    .line 110
    .line 111
    if-eqz v3, :cond_9

    .line 112
    .line 113
    if-eqz v4, :cond_9

    .line 114
    .line 115
    :cond_8
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    .line 118
    .line 119
    .line 120
    :cond_9
    return-void
.end method

.method public final onExitAnimationDone()V
    .locals 14

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2
    .line 3
    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 10
    .line 11
    const/4 v7, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 17
    .line 18
    new-instance v2, Ljava/io/StringWriter;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 21
    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    new-instance v3, Ljava/io/PrintWriter;

    .line 26
    .line 27
    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 28
    .line 29
    .line 30
    const-string v4, ""

    .line 31
    .line 32
    invoke-interface {v1, v3, v4}, Lcom/android/server/wm/AnimationAdapter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    aget-boolean v1, v6, v7

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 44
    .line 45
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    filled-new-array {v1, v3, v4, v5, v2}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    const-wide v1, -0xdfb7414ba3cc255L    # -1.7125593764379152E241

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    const/16 v3, 0xfc

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    sub-int/2addr v1, v7

    .line 102
    :goto_0
    if-ltz v1, :cond_2

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    .line 111
    .line 112
    .line 113
    add-int/lit8 v1, v1, -0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 117
    .line 118
    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 119
    .line 120
    const/4 v2, 0x0

    .line 121
    if-eqz v1, :cond_3

    .line 122
    .line 123
    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 124
    .line 125
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 131
    .line 132
    if-nez v0, :cond_3

    .line 133
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 135
    .line 136
    invoke-interface {v0}, Landroid/view/IWindow;->dispatchWindowShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    :catch_0
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_4

    .line 144
    .line 145
    return-void

    .line 146
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSelfOrAncestorWindowAnimatingExit()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_5

    .line 151
    .line 152
    return-void

    .line 153
    :cond_5
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    .line 154
    .line 155
    aget-boolean v0, v0, v7

    .line 156
    .line 157
    if-eqz v0, :cond_6

    .line 158
    .line 159
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 164
    .line 165
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 166
    .line 167
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v13

    .line 175
    const-wide v9, 0x1820e946d2803259L    # 1.853310358357224E-192

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    const/16 v11, 0xc

    .line 181
    .line 182
    const/4 v12, 0x0

    .line 183
    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_6
    iput-boolean v7, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 187
    .line 188
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    const-string/jumbo v4, "onExitAnimationDone"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 207
    .line 208
    if-eqz v1, :cond_8

    .line 209
    .line 210
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 211
    .line 212
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 213
    .line 214
    if-ne v0, v7, :cond_7

    .line 215
    .line 216
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->destroySurfaces(Z)V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_7
    iget-boolean v0, v1, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 221
    .line 222
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_8
    if-eqz v0, :cond_9

    .line 227
    .line 228
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 229
    .line 230
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    :cond_9
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 236
    .line 237
    aget-boolean v0, v6, v2

    .line 238
    .line 239
    if-eqz v0, :cond_a

    .line 240
    .line 241
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 246
    .line 247
    const/4 v5, 0x0

    .line 248
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    const-wide v2, -0x6b612e160147c76bL

    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    const/4 v4, 0x0

    .line 258
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 266
    .line 267
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 268
    .line 269
    .line 270
    return-void
.end method

.method public final onMovedByResize()V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    const-wide v2, 0x48aafffac1ef37f0L    # 1.1760123758773867E42

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 30
    .line 31
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onResize()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aget-boolean v1, v1, v2

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const-wide v3, 0x18c0572e66b739eaL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onResizePostDispatched(IIZ)V
    .locals 6

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    iget-object p3, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 6
    .line 7
    invoke-virtual {p3}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eq p1, p3, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeRedrawRequestTime:J

    .line 24
    .line 25
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 26
    .line 27
    const/4 p3, 0x1

    .line 28
    aget-boolean p1, p1, p3

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 37
    .line 38
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const-wide v1, -0x4fdf11be8b68c169L    # -7.310813019334474E-77

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 65
    .line 66
    filled-new-array {p2}, [I

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedWithCallingUid(I[I)V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method

.method public final onSetAppExiting(Z)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    .line 10
    .line 11
    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_3

    .line 19
    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 23
    .line 24
    const/4 v4, 0x2

    .line 25
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 41
    .line 42
    invoke-virtual {v2, p0, v4}, Lcom/android/server/wm/AccessibilityController;->onWindowTransition(Lcom/android/server/wm/WindowState;I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 48
    .line 49
    .line 50
    :cond_2
    move v2, v1

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    sub-int/2addr v0, v1

    .line 58
    :goto_0
    if-ltz v0, :cond_4

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->onSetAppExiting(Z)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    or-int/2addr v2, v1

    .line 73
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    return v2
.end method

.method public final onStartFreezingScreen()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    sub-int/2addr v1, v0

    .line 11
    :goto_0
    if-ltz v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->onStartFreezingScreen()V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final onStopFreezingScreen()Z
    .locals 9

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
    move v3, v2

    .line 11
    :goto_0
    if-ltz v0, :cond_0

    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 14
    .line 15
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 20
    .line 21
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->onStopFreezingScreen()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    or-int/2addr v3, v4

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    return v3

    .line 34
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 47
    .line 48
    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 49
    .line 50
    const/4 v3, 0x2

    .line 51
    if-eq v0, v3, :cond_3

    .line 52
    .line 53
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    .line 54
    .line 55
    aget-boolean v0, v0, v1

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 64
    .line 65
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    const-wide v4, 0x7a4c5648270b3739L    # 1.285939188422018E281

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v7, 0x0

    .line 76
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 80
    .line 81
    .line 82
    :cond_3
    iput v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 85
    .line 86
    .line 87
    return v1
.end method

.method public final openInputChannel(Landroid/view/InputChannel;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/android/server/input/InputManagerService;->createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->setToken(Landroid/os/IBinder;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 35
    .line 36
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/view/InputChannel;->copyTo(Landroid/view/InputChannel;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p1, "Window already has an input channel."

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public final performShowLocked()Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->showToCurrentUser()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 10
    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 14
    .line 15
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x4

    .line 19
    const/4 v5, 0x3

    .line 20
    if-eq v0, v4, :cond_1

    .line 21
    .line 22
    if-ne v0, v5, :cond_15

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    if-eqz v0, :cond_15

    .line 27
    .line 28
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 29
    .line 30
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 31
    .line 32
    if-eq v6, v5, :cond_d

    .line 33
    .line 34
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    .line 35
    .line 36
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleSolidColor:Z

    .line 37
    .line 38
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/android/server/wm/BackNavigationController;->mAnimationHandler:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 43
    .line 44
    iget-boolean v6, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 45
    .line 46
    if-eqz v6, :cond_5

    .line 47
    .line 48
    iget-boolean v6, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    .line 49
    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-object v6, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 54
    .line 55
    iget-object v6, v6, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 56
    .line 57
    array-length v6, v6

    .line 58
    sub-int/2addr v6, v3

    .line 59
    move v7, v3

    .line 60
    :goto_0
    if-ltz v6, :cond_4

    .line 61
    .line 62
    iget-object v8, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 63
    .line 64
    iget-object v8, v8, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->mAdaptors:[Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;

    .line 65
    .line 66
    aget-object v8, v8, v6

    .line 67
    .line 68
    iget-object v9, v8, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mTarget:Lcom/android/server/wm/WindowContainer;

    .line 69
    .line 70
    iget v10, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mSwitchType:I

    .line 71
    .line 72
    invoke-static {v0, v9, v10}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->isAnimateTarget(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;I)Z

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-eqz v9, :cond_3

    .line 77
    .line 78
    iput-boolean v3, v8, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAppWindowDrawn:Z

    .line 79
    .line 80
    :cond_3
    iget-boolean v8, v8, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptor;->mAppWindowDrawn:Z

    .line 81
    .line 82
    and-int/2addr v7, v8

    .line 83
    add-int/lit8 v6, v6, -0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    if-eqz v7, :cond_5

    .line 87
    .line 88
    iget-object v1, v1, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->cleanUpWindowlessSurface(Z)V

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 94
    .line 95
    if-eqz v1, :cond_7

    .line 96
    .line 97
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    .line 98
    .line 99
    aget-boolean v1, v1, v3

    .line 100
    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 110
    .line 111
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    const/4 v9, 0x0

    .line 116
    const-string v10, "Finish starting %s: first real window is shown, no animation"

    .line 117
    .line 118
    const-wide v7, -0x60a9b6713b00c96dL    # -1.014566262701883E-157

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 127
    .line 128
    .line 129
    :cond_7
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 130
    .line 131
    iget-object v6, v1, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    .line 132
    .line 133
    const/4 v7, 0x0

    .line 134
    if-eqz v6, :cond_8

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_8
    move-object v1, v7

    .line 138
    :goto_2
    if-nez v1, :cond_a

    .line 139
    .line 140
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 141
    .line 142
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 143
    .line 144
    if-eq v1, v3, :cond_9

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_a
    new-instance v6, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda4;

    .line 152
    .line 153
    const/4 v8, 0x1

    .line 154
    invoke-direct {v6, v8}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda4;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    if-nez v6, :cond_c

    .line 162
    .line 163
    new-instance v6, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 164
    .line 165
    const/4 v8, 0x7

    .line 166
    invoke-direct {v6, v8}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v6}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    if-eqz v1, :cond_b

    .line 174
    .line 175
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 176
    .line 177
    :cond_b
    if-eqz v7, :cond_c

    .line 178
    .line 179
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 180
    .line 181
    .line 182
    :cond_c
    :goto_3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_5

    .line 186
    .line 187
    :cond_d
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 188
    .line 189
    if-eqz v6, :cond_10

    .line 190
    .line 191
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleSolidColor:Z

    .line 192
    .line 193
    iget-boolean v6, v6, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 194
    .line 195
    if-eqz v6, :cond_e

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    if-eqz v6, :cond_f

    .line 203
    .line 204
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 205
    .line 206
    invoke-virtual {v6, v3}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    .line 207
    .line 208
    .line 209
    :cond_f
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 210
    .line 211
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->setHasBeenVisible()V

    .line 212
    .line 213
    .line 214
    :cond_10
    :goto_4
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 215
    .line 216
    if-eqz v6, :cond_15

    .line 217
    .line 218
    iget-boolean v7, v6, Lcom/android/server/wm/StartingData;->mIsDisplayed:Z

    .line 219
    .line 220
    if-eqz v7, :cond_11

    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_11
    iput-boolean v3, v6, Lcom/android/server/wm/StartingData;->mIsDisplayed:Z

    .line 224
    .line 225
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_WORKAROUND_RESPONSE_SPEED:Z

    .line 226
    .line 227
    if-eqz v6, :cond_12

    .line 228
    .line 229
    iget-boolean v6, v0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 230
    .line 231
    if-nez v6, :cond_12

    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    if-nez v6, :cond_12

    .line 238
    .line 239
    iget-object v6, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 240
    .line 241
    iget-object v7, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 242
    .line 243
    invoke-virtual {v6, v7}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    if-eqz v6, :cond_12

    .line 248
    .line 249
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 250
    .line 251
    if-eqz v6, :cond_12

    .line 252
    .line 253
    invoke-virtual {v6, v0}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    if-eqz v6, :cond_12

    .line 258
    .line 259
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 260
    .line 261
    .line 262
    :cond_12
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 263
    .line 264
    if-nez v6, :cond_15

    .line 265
    .line 266
    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 267
    .line 268
    if-nez v6, :cond_15

    .line 269
    .line 270
    iget-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    .line 271
    .line 272
    if-nez v6, :cond_15

    .line 273
    .line 274
    iget-boolean v6, v0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 275
    .line 276
    if-eqz v6, :cond_15

    .line 277
    .line 278
    iget-object v6, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 279
    .line 280
    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 281
    .line 282
    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isReady()Z

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    if-nez v6, :cond_15

    .line 287
    .line 288
    iget-object v6, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 289
    .line 290
    iget-object v7, v6, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 291
    .line 292
    iget v7, v7, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 293
    .line 294
    if-ne v7, v1, :cond_13

    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_13
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-eqz v1, :cond_15

    .line 302
    .line 303
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 304
    .line 305
    iput-boolean v3, v1, Lcom/android/server/wm/StartingData;->mIsTransitionForward:Z

    .line 306
    .line 307
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 308
    .line 309
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    if-eq v0, v1, :cond_14

    .line 314
    .line 315
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 316
    .line 317
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    .line 318
    .line 319
    .line 320
    :cond_14
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 321
    .line 322
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 323
    .line 324
    .line 325
    :cond_15
    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 326
    .line 327
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 328
    .line 329
    if-ne v0, v5, :cond_1a

    .line 330
    .line 331
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    if-nez v0, :cond_16

    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 339
    .line 340
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 341
    .line 342
    .line 343
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 344
    .line 345
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    .line 346
    .line 347
    .line 348
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 349
    .line 350
    const/high16 v1, -0x40800000    # -1.0f

    .line 351
    .line 352
    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 353
    .line 354
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_ANIM_enabled:[Z

    .line 355
    .line 356
    aget-boolean v0, v0, v3

    .line 357
    .line 358
    if-eqz v0, :cond_17

    .line 359
    .line 360
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 365
    .line 366
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v10

    .line 370
    const-wide v6, 0xc66a961a849397aL

    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    const/4 v8, 0x0

    .line 376
    const-string/jumbo v9, "performShowLocked: mDrawState=HAS_DRAWN in %s"

    .line 377
    .line 378
    .line 379
    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 383
    .line 384
    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 385
    .line 386
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 387
    .line 388
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 389
    .line 390
    .line 391
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 392
    .line 393
    if-eqz v0, :cond_19

    .line 394
    .line 395
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 396
    .line 397
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 402
    .line 403
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    sub-int/2addr v1, v3

    .line 408
    :goto_6
    if-ltz v1, :cond_19

    .line 409
    .line 410
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 411
    .line 412
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 417
    .line 418
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 419
    .line 420
    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 421
    .line 422
    if-eqz v4, :cond_18

    .line 423
    .line 424
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    .line 425
    .line 426
    .line 427
    if-eqz v0, :cond_18

    .line 428
    .line 429
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 430
    .line 431
    .line 432
    :cond_18
    add-int/lit8 v1, v1, -0x1

    .line 433
    .line 434
    goto :goto_6

    .line 435
    :cond_19
    return v3

    .line 436
    :cond_1a
    :goto_7
    return v2
.end method

.method public final pokeDrawLockLw(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequestedOrAdding()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "Window:"

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/16 v2, 0x80

    .line 34
    .line 35
    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    .line 46
    .line 47
    new-instance v1, Landroid/os/WorkSource;

    .line 48
    .line 49
    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 50
    .line 51
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 52
    .line 53
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-direct {v1, v2, v3}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    .line 62
    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public final prepareSurfaces()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1e

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateFrameRateSelectionPriorityIfNeeded()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    iget v2, v2, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 42
    .line 43
    mul-float/2addr v1, v2

    .line 44
    :cond_1
    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 45
    .line 46
    mul-float/2addr v2, v1

    .line 47
    iget v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    .line 48
    .line 49
    mul-float/2addr v2, v3

    .line 50
    iget v4, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 51
    .line 52
    mul-float/2addr v4, v1

    .line 53
    mul-float/2addr v3, v4

    .line 54
    iget v4, p0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 55
    .line 56
    cmpl-float v4, v4, v2

    .line 57
    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    iget v4, p0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 61
    .line 62
    cmpl-float v4, v4, v3

    .line 63
    .line 64
    if-nez v4, :cond_2

    .line 65
    .line 66
    const/high16 v4, 0x3f800000    # 1.0f

    .line 67
    .line 68
    cmpl-float v1, v1, v4

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v8, 0x0

    .line 80
    move v6, v2

    .line 81
    move v9, v3

    .line 82
    invoke-virtual/range {v4 .. v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 83
    .line 84
    .line 85
    iput v2, p0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    .line 86
    .line 87
    iput v3, p0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 88
    .line 89
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 96
    .line 97
    .line 98
    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 99
    .line 100
    if-eqz v1, :cond_1d

    .line 101
    .line 102
    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 103
    .line 104
    if-nez v1, :cond_4

    .line 105
    .line 106
    goto/16 :goto_b

    .line 107
    .line 108
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 113
    .line 114
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 115
    .line 116
    and-int/lit8 v3, v2, 0x2

    .line 117
    .line 118
    const/4 v4, 0x4

    .line 119
    if-nez v3, :cond_5

    .line 120
    .line 121
    and-int/2addr v2, v4

    .line 122
    if-eqz v2, :cond_1d

    .line 123
    .line 124
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 125
    .line 126
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mBlurController:Lcom/android/server/wm/BlurController;

    .line 127
    .line 128
    iget-boolean v2, v2, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    .line 129
    .line 130
    if-eqz v2, :cond_1d

    .line 131
    .line 132
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_1d

    .line 139
    .line 140
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 141
    .line 142
    if-nez v2, :cond_1d

    .line 143
    .line 144
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    const/4 v5, 0x1

    .line 151
    if-nez v3, :cond_6

    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    goto/16 :goto_6

    .line 157
    .line 158
    :cond_6
    iget-object v6, v2, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    sub-int/2addr v6, v5

    .line 165
    :goto_1
    if-ltz v6, :cond_10

    .line 166
    .line 167
    iget-object v7, v2, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    check-cast v7, Lcom/android/server/wm/Transition;

    .line 174
    .line 175
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION:Z

    .line 179
    .line 180
    if-eqz v8, :cond_9

    .line 181
    .line 182
    move v8, v0

    .line 183
    :goto_2
    iget-object v9, v7, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    if-ge v8, v9, :cond_9

    .line 190
    .line 191
    iget-object v9, v7, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    check-cast v9, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 198
    .line 199
    iget-object v9, v9, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 200
    .line 201
    if-eqz v9, :cond_8

    .line 202
    .line 203
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    if-eqz v10, :cond_8

    .line 208
    .line 209
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    if-eq v9, v3, :cond_7

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isTranslucentForTransition()Z

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    if-eqz v9, :cond_8

    .line 221
    .line 222
    iget-boolean v9, v3, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 223
    .line 224
    if-nez v9, :cond_8

    .line 225
    .line 226
    goto/16 :goto_b

    .line 227
    .line 228
    :cond_8
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_9
    iget-object v8, v7, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 232
    .line 233
    if-nez v8, :cond_a

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_a
    invoke-static {}, Lcom/android/window/flags/Flags;->useTasksDimOnly()Z

    .line 237
    .line 238
    .line 239
    move-result v8

    .line 240
    if-eqz v8, :cond_b

    .line 241
    .line 242
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    if-nez v8, :cond_f

    .line 247
    .line 248
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isTranslucentAndVisible()Z

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    if-nez v8, :cond_d

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_b
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getDimmer()Lcom/android/server/wm/Dimmer;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    if-nez v8, :cond_c

    .line 260
    .line 261
    goto/16 :goto_b

    .line 262
    .line 263
    :cond_c
    iget-object v8, v8, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    .line 264
    .line 265
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    if-eqz v8, :cond_d

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_d
    iget-object v8, v7, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 273
    .line 274
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 275
    .line 276
    .line 277
    move-result v8

    .line 278
    sub-int/2addr v8, v5

    .line 279
    :goto_4
    if-ltz v8, :cond_f

    .line 280
    .line 281
    iget-object v9, v7, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 282
    .line 283
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    .line 288
    .line 289
    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 290
    .line 291
    if-eqz v9, :cond_e

    .line 292
    .line 293
    iget-boolean v9, v9, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 294
    .line 295
    if-eqz v9, :cond_e

    .line 296
    .line 297
    goto/16 :goto_b

    .line 298
    .line 299
    :cond_e
    add-int/lit8 v8, v8, -0x1

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_f
    :goto_5
    add-int/lit8 v6, v6, -0x1

    .line 303
    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :cond_10
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    const/4 v3, 0x0

    .line 311
    if-eqz v2, :cond_12

    .line 312
    .line 313
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 314
    .line 315
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 316
    .line 317
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 318
    .line 319
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 323
    .line 324
    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    if-nez v6, :cond_12

    .line 329
    .line 330
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    if-nez v6, :cond_11

    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_11
    iput-object v3, v2, Lcom/android/server/wm/FreeformController;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 338
    .line 339
    new-instance v6, Landroid/graphics/Rect;

    .line 340
    .line 341
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 342
    .line 343
    .line 344
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 345
    .line 346
    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 347
    .line 348
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 356
    .line 357
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 358
    .line 359
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 360
    .line 361
    .line 362
    move-result v10

    .line 363
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 364
    .line 365
    iget v11, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 366
    .line 367
    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 368
    .line 369
    move-object v8, v6

    .line 370
    invoke-virtual/range {v7 .. v12}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 378
    .line 379
    .line 380
    move-result-object v7

    .line 381
    new-instance v8, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;

    .line 382
    .line 383
    invoke-direct {v8, v2, p0, v6}, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/FreeformController;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v7, v8, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 387
    .line 388
    .line 389
    iget-object v2, v2, Lcom/android/server/wm/FreeformController;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 390
    .line 391
    if-eqz v2, :cond_1d

    .line 392
    .line 393
    :cond_12
    :goto_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    if-eqz v2, :cond_13

    .line 398
    .line 399
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 400
    .line 401
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-eqz v2, :cond_1d

    .line 406
    .line 407
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    if-nez v2, :cond_13

    .line 412
    .line 413
    goto/16 :goto_b

    .line 414
    .line 415
    :cond_13
    iput-boolean v5, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 416
    .line 417
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 418
    .line 419
    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 420
    .line 421
    and-int/lit8 v6, v5, 0x2

    .line 422
    .line 423
    if-eqz v6, :cond_14

    .line 424
    .line 425
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 426
    .line 427
    goto :goto_8

    .line 428
    :cond_14
    const/4 v2, 0x0

    .line 429
    :goto_8
    and-int/2addr v5, v4

    .line 430
    if-eqz v5, :cond_15

    .line 431
    .line 432
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 433
    .line 434
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mBlurController:Lcom/android/server/wm/BlurController;

    .line 435
    .line 436
    iget-boolean v5, v5, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    .line 437
    .line 438
    if-eqz v5, :cond_15

    .line 439
    .line 440
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 441
    .line 442
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getBlurBehindRadius()I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    :cond_15
    invoke-static {}, Lcom/android/window/flags/Flags;->useTasksDimOnly()Z

    .line 447
    .line 448
    .line 449
    move-result v5

    .line 450
    if-eqz v5, :cond_1a

    .line 451
    .line 452
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    if-eqz v1, :cond_16

    .line 457
    .line 458
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    if-nez v5, :cond_17

    .line 463
    .line 464
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isTranslucentAndVisible()Z

    .line 465
    .line 466
    .line 467
    move-result v5

    .line 468
    if-nez v5, :cond_16

    .line 469
    .line 470
    goto :goto_9

    .line 471
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    :cond_17
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    if-eqz v5, :cond_18

    .line 480
    .line 481
    iget-object v3, v5, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 482
    .line 483
    goto :goto_a

    .line 484
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    .line 485
    .line 486
    .line 487
    move-result-object v5

    .line 488
    if-eqz v5, :cond_19

    .line 489
    .line 490
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayArea$Dimmable;->getDimmer()Lcom/android/server/wm/Dimmer;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    :cond_19
    :goto_a
    if-nez v3, :cond_1b

    .line 495
    .line 496
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    .line 497
    .line 498
    aget-boolean v0, v0, v4

    .line 499
    .line 500
    if-eqz v0, :cond_1d

    .line 501
    .line 502
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 507
    .line 508
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v6

    .line 512
    const/4 v4, 0x0

    .line 513
    const/4 v5, 0x0

    .line 514
    const-wide v2, -0x2cacdfd5dd63cacbL    # -2.4934158542816614E93

    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 520
    .line 521
    .line 522
    goto :goto_b

    .line 523
    :cond_1a
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    .line 524
    .line 525
    .line 526
    move-result-object v3

    .line 527
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    .line 528
    .line 529
    .line 530
    move-result v4

    .line 531
    if-eqz v4, :cond_1d

    .line 532
    .line 533
    iget-object v4, v3, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 534
    .line 535
    if-nez v4, :cond_1c

    .line 536
    .line 537
    new-instance v4, Lcom/android/server/wm/Dimmer$DimState;

    .line 538
    .line 539
    invoke-direct {v4, v3}, Lcom/android/server/wm/Dimmer$DimState;-><init>(Lcom/android/server/wm/Dimmer;)V

    .line 540
    .line 541
    .line 542
    iput-object v4, v3, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 543
    .line 544
    :cond_1c
    iget-object v3, v3, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 545
    .line 546
    iput-object p0, v3, Lcom/android/server/wm/Dimmer$DimState;->mLastDimmingWindow:Lcom/android/server/wm/WindowState;

    .line 547
    .line 548
    iget-object v4, v3, Lcom/android/server/wm/Dimmer$DimState;->mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

    .line 549
    .line 550
    iget-object v4, v4, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 551
    .line 552
    iput v2, v4, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    .line 553
    .line 554
    iput v0, v4, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    .line 555
    .line 556
    if-eqz v3, :cond_1d

    .line 557
    .line 558
    iput-object p0, v4, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    .line 559
    .line 560
    iput-object v1, v4, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mGeometryParent:Lcom/android/server/wm/WindowContainer;

    .line 561
    .line 562
    :cond_1d
    :goto_b
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 563
    .line 564
    if-nez v0, :cond_1e

    .line 565
    .line 566
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 567
    .line 568
    .line 569
    move-result v0

    .line 570
    if-eqz v0, :cond_1e

    .line 571
    .line 572
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    iget-object v0, v0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 577
    .line 578
    if-eqz v0, :cond_1e

    .line 579
    .line 580
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    iget-object v0, v0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    .line 585
    .line 586
    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

    .line 587
    .line 588
    iget-object v0, v0, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    .line 589
    .line 590
    iget-object v0, v0, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    .line 591
    .line 592
    if-ne v0, p0, :cond_1e

    .line 593
    .line 594
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;)Z

    .line 603
    .line 604
    .line 605
    :cond_1e
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 606
    .line 607
    .line 608
    return-void
.end method

.method public final prepareSync()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "WindowManager"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v3, "prepareSync with mDrawHandlers, "

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", "

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v3, 0x8

    .line 31
    .line 32
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v3, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda4;

    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    invoke-direct {v3, v4}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string/jumbo v3, "prepareSync: skip, reason=split_to_pip_bounds_change"

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    return v2

    .line 101
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_1

    .line 106
    .line 107
    return v2

    .line 108
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 109
    .line 110
    const/4 v3, 0x1

    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    return v3

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 115
    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 119
    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 123
    .line 124
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    .line 125
    .line 126
    if-eq v0, v3, :cond_3

    .line 127
    .line 128
    const/4 v4, 0x3

    .line 129
    if-eq v0, v4, :cond_3

    .line 130
    .line 131
    return v2

    .line 132
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 133
    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSplitEmbedded()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 143
    .line 144
    if-nez v0, :cond_4

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 151
    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    iget-object v0, v0, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    .line 155
    .line 156
    if-eqz v0, :cond_4

    .line 157
    .line 158
    if-eqz v4, :cond_4

    .line 159
    .line 160
    iget-object v0, v4, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 161
    .line 162
    if-nez v0, :cond_4

    .line 163
    .line 164
    return v2

    .line 165
    :cond_4
    iput v3, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 166
    .line 167
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    .line 168
    .line 169
    if-lez v0, :cond_6

    .line 170
    .line 171
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    .line 172
    .line 173
    aget-boolean v0, v0, v2

    .line 174
    .line 175
    if-eqz v0, :cond_5

    .line 176
    .line 177
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 182
    .line 183
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    const-wide v5, -0x5022f3507dadc9e8L    # -3.9199505725049377E-78

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    const/4 v7, 0x0

    .line 193
    const/4 v8, 0x0

    .line 194
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 198
    .line 199
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->dropBufferFrom(Landroid/view/SurfaceControl$Transaction;)V

    .line 200
    .line 201
    .line 202
    :cond_6
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 203
    .line 204
    add-int/2addr v0, v3

    .line 205
    iput v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 206
    .line 207
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-nez v0, :cond_7

    .line 212
    .line 213
    move v4, v2

    .line 214
    goto :goto_0

    .line 215
    :cond_7
    iget v4, p0, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    .line 216
    .line 217
    const/4 v5, -0x1

    .line 218
    if-eq v4, v5, :cond_8

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_8
    iget v4, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    .line 222
    .line 223
    :goto_0
    if-ne v4, v3, :cond_9

    .line 224
    .line 225
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSyncSeqId:I

    .line 226
    .line 227
    iput v0, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    .line 228
    .line 229
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 233
    .line 234
    if-eqz v0, :cond_a

    .line 235
    .line 236
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 237
    .line 238
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 239
    .line 240
    if-eq v0, v3, :cond_a

    .line 241
    .line 242
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

    .line 243
    .line 244
    :cond_a
    :goto_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 245
    .line 246
    if-eqz v0, :cond_b

    .line 247
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string/jumbo v2, "prepareSync <SYNC_STATE_WAITING_FOR_DRAW>, mPrepareSyncSeqId="

    .line 251
    .line 252
    .line 253
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget v2, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    .line 257
    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v2, ", win="

    .line 262
    .line 263
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    :cond_b
    return v3
.end method

.method public final prepareWindowToDisplayDuringRelayout(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4
    .line 5
    const/high16 v1, 0x200000

    .line 6
    .line 7
    and-int/2addr v0, v1

    .line 8
    const/4 v1, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    if-eqz v0, :cond_7

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 22
    .line 23
    iget-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string/jumbo v2, "theater_mode_on"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v0, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    move v0, v1

    .line 47
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 48
    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    move v2, v3

    .line 57
    goto :goto_3

    .line 58
    :cond_4
    :goto_2
    move v2, v1

    .line 59
    :goto_3
    if-eqz v0, :cond_6

    .line 60
    .line 61
    if-eqz v2, :cond_6

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveDreamComponent:Landroid/content/ComponentName;

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_6

    .line 81
    .line 82
    :goto_4
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 85
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v6, "android.server.wm:SCREEN_ON_FLAG::"

    .line 93
    .line 94
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 98
    .line 99
    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const/4 v6, 0x2

    .line 109
    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 113
    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    .line 117
    .line 118
    :cond_7
    if-eqz p1, :cond_8

    .line 119
    .line 120
    return-void

    .line 121
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 122
    .line 123
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 124
    .line 125
    and-int/lit16 p1, p1, 0xf0

    .line 126
    .line 127
    const/16 v0, 0x10

    .line 128
    .line 129
    if-ne p1, v0, :cond_9

    .line 130
    .line 131
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 132
    .line 133
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_a

    .line 138
    .line 139
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_a

    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    .line 150
    .line 151
    .line 152
    :cond_a
    return-void
.end method

.method public final providesDisplayDecorInsets()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mInsetsSourceProviders:Landroid/util/SparseArray;

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
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget v3, v2, Lcom/android/server/wm/WindowManagerService;->mConfigTypes:I

    .line 10
    .line 11
    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mOverrideConfigTypes:I

    .line 12
    .line 13
    or-int/2addr v2, v3

    .line 14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v3, 0x1

    .line 19
    sub-int/2addr v0, v3

    .line 20
    :goto_0
    if-ltz v0, :cond_2

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mInsetsSourceProviders:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    .line 29
    .line 30
    iget-object v4, v4, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    and-int/2addr v4, v2

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    return v3

    .line 40
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return v1
.end method

.method public final receiveFocusFromTapOutside()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final relayoutVisibleWindow(I)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v3, v1

    .line 19
    :goto_1
    or-int/2addr p1, v3

    .line 20
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 21
    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo v4, "relayoutVisibleWindow: "

    .line 27
    .line 28
    .line 29
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v4, " mAnimatingExit=true, mRemoveOnExit="

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v4, ", mDestroying="

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 51
    .line 52
    const-string v5, "WindowManager"

    .line 53
    .line 54
    invoke-static {v5, v3, v4}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 55
    .line 56
    .line 57
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 66
    .line 67
    .line 68
    :cond_2
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 69
    .line 70
    aget-boolean v3, v3, v2

    .line 71
    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 79
    .line 80
    const/4 v8, 0x0

    .line 81
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    const-wide v5, -0x4832185d6d27ce37L    # -6.865810971800011E-40

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    const/4 v7, 0x0

    .line 91
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 95
    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 101
    .line 102
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_4
    if-nez v0, :cond_5

    .line 108
    .line 109
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 110
    .line 111
    iput-boolean v1, v2, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 112
    .line 113
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 118
    .line 119
    iget v2, v2, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 120
    .line 121
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 122
    .line 123
    iput-boolean v1, v2, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 124
    .line 125
    const-string/jumbo v1, "prepareToDisplay"

    .line 126
    .line 127
    .line 128
    const-wide/16 v2, 0x20

    .line 129
    .line 130
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->prepareWindowToDisplayDuringRelayout(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 137
    .line 138
    .line 139
    return p1

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 142
    .line 143
    .line 144
    throw p0
.end method

.method public final removeIfPossible()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .line 5
    .line 6
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    .line 7
    .line 8
    aget-boolean v3, v2, v1

    .line 9
    .line 10
    const/4 v4, 0x5

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 26
    .line 27
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v11

    .line 31
    const-wide v7, 0x3680b9ff8a84374cL    # 3.6623275831251076E-46

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    const/4 v10, 0x0

    .line 38
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    move v3, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v3, v5

    .line 49
    :goto_0
    if-eqz v3, :cond_4

    .line 50
    .line 51
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    .line 52
    .line 53
    aget-boolean v6, v6, v5

    .line 54
    .line 55
    if-eqz v6, :cond_2

    .line 56
    .line 57
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 62
    .line 63
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    const-wide v8, -0x430e0e4f844acf3bL    # -3.98439041103438E-15

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    const/4 v10, 0x0

    .line 73
    const-string v11, "Starting window removed %s"

    .line 74
    .line 75
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 79
    .line 80
    if-eqz v6, :cond_3

    .line 81
    .line 82
    new-instance v7, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda6;

    .line 83
    .line 84
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v7, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object v6, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 91
    .line 92
    iget-object v6, v6, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    .line 93
    .line 94
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 95
    .line 96
    invoke-interface {v6, v7}, Lcom/android/server/wm/TransitionTracer;->logRemovingStartingWindow(Lcom/android/server/wm/StartingData;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 101
    .line 102
    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 103
    .line 104
    if-ne v6, v1, :cond_5

    .line 105
    .line 106
    const/16 v6, 0x80

    .line 107
    .line 108
    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/WindowState;->isSelfAnimating(II)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_5

    .line 113
    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 115
    .line 116
    .line 117
    :cond_5
    :goto_1
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    .line 118
    .line 119
    aget-boolean v6, v6, v1

    .line 120
    .line 121
    if-eqz v6, :cond_6

    .line 122
    .line 123
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 124
    .line 125
    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    int-to-long v6, v6

    .line 134
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 135
    .line 136
    iget-object v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 137
    .line 138
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 151
    .line 152
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    filled-new-array {v6, v8, v9}, [Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v15

    .line 160
    const/4 v13, 0x1

    .line 161
    const/4 v14, 0x0

    .line 162
    const-wide v11, -0x5088bec7b71fc43bL    # -4.903126733184078E-80

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    invoke-static/range {v10 .. v15}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 175
    .line 176
    .line 177
    move-result-wide v7

    .line 178
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 179
    .line 180
    .line 181
    const/4 v9, 0x0

    .line 182
    iput-object v9, v0, Lcom/android/server/wm/WindowState;->mOnBackInvokedCallbackInfo:Landroid/window/OnBackInvokedCallbackInfo;

    .line 183
    .line 184
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 185
    .line 186
    aget-boolean v9, v9, v1

    .line 187
    .line 188
    const/4 v10, 0x3

    .line 189
    if-eqz v9, :cond_8

    .line 190
    .line 191
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 196
    .line 197
    iget-object v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 198
    .line 199
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v12

    .line 203
    iget-boolean v9, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 204
    .line 205
    iget-boolean v13, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 206
    .line 207
    iget-boolean v14, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 208
    .line 209
    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 210
    .line 211
    invoke-virtual {v15}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    .line 212
    .line 213
    .line 214
    move-result v15

    .line 215
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 216
    .line 217
    .line 218
    move-result v16

    .line 219
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 220
    .line 221
    if-eqz v4, :cond_7

    .line 222
    .line 223
    invoke-virtual {v4, v10}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-eqz v4, :cond_7

    .line 228
    .line 229
    move v4, v1

    .line 230
    goto :goto_2

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    goto/16 :goto_9

    .line 233
    .line 234
    :cond_7
    move v4, v5

    .line 235
    :goto_2
    iget-object v10, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 236
    .line 237
    iget-boolean v10, v10, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 238
    .line 239
    const/16 v17, 0x6

    .line 240
    .line 241
    invoke-static/range {v17 .. v17}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v17

    .line 245
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v20

    .line 249
    sget-object v21, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 250
    .line 251
    const-string v25, "Remove %s: mSurfaceController=%s mAnimatingExit=%b mRemoveOnExit=%b mHasSurface=%b surfaceShowing=%b animating=%b app-animation=%b mDisplayFrozen=%b callers=%s"

    .line 252
    .line 253
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 254
    .line 255
    .line 256
    move-result-object v9

    .line 257
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 258
    .line 259
    .line 260
    move-result-object v17

    .line 261
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 262
    .line 263
    .line 264
    move-result-object v18

    .line 265
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 266
    .line 267
    .line 268
    move-result-object v19

    .line 269
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 270
    .line 271
    .line 272
    move-result-object v22

    .line 273
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    move-object v13, v9

    .line 282
    move-object/from16 v14, v17

    .line 283
    .line 284
    move-object/from16 v15, v18

    .line 285
    .line 286
    move-object/from16 v16, v19

    .line 287
    .line 288
    move-object/from16 v17, v22

    .line 289
    .line 290
    move-object/from16 v18, v4

    .line 291
    .line 292
    move-object/from16 v19, v10

    .line 293
    .line 294
    filled-new-array/range {v11 .. v20}, [Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v26

    .line 298
    const-wide v22, 0x5a95817c334132d1L    # 2.3292376474731174E128

    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    const v24, 0x3fff0

    .line 304
    .line 305
    .line 306
    invoke-static/range {v21 .. v26}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    :cond_8
    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 310
    .line 311
    if-eqz v4, :cond_18

    .line 312
    .line 313
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 314
    .line 315
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-eqz v4, :cond_18

    .line 320
    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->inTransition()Z

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    if-nez v9, :cond_a

    .line 330
    .line 331
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 332
    .line 333
    if-eqz v9, :cond_9

    .line 334
    .line 335
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    .line 336
    .line 337
    .line 338
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    if-eqz v9, :cond_9

    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_9
    move v9, v1

    .line 343
    goto :goto_4

    .line 344
    :cond_a
    :goto_3
    move v9, v5

    .line 345
    :goto_4
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 346
    .line 347
    if-eqz v4, :cond_f

    .line 348
    .line 349
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isDisplayed()Z

    .line 350
    .line 351
    .line 352
    move-result v11

    .line 353
    if-eqz v11, :cond_f

    .line 354
    .line 355
    if-nez v3, :cond_b

    .line 356
    .line 357
    const/4 v11, 0x2

    .line 358
    goto :goto_5

    .line 359
    :cond_b
    const/4 v11, 0x5

    .line 360
    :goto_5
    if-eqz v9, :cond_e

    .line 361
    .line 362
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 363
    .line 364
    invoke-virtual {v12, v11, v5}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 365
    .line 366
    .line 367
    move-result v12

    .line 368
    if-eqz v12, :cond_e

    .line 369
    .line 370
    aget-boolean v12, v10, v1

    .line 371
    .line 372
    if-eqz v12, :cond_c

    .line 373
    .line 374
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v12

    .line 378
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 379
    .line 380
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v18

    .line 384
    const/16 v16, 0x0

    .line 385
    .line 386
    const/16 v17, 0x0

    .line 387
    .line 388
    const-wide v14, 0x6c1ada244de03cd5L    # 5.649831272567811E212

    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    :cond_c
    if-eqz v3, :cond_d

    .line 397
    .line 398
    iget-object v12, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 399
    .line 400
    invoke-virtual {v12}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    .line 401
    .line 402
    .line 403
    move-result v12

    .line 404
    if-eqz v12, :cond_d

    .line 405
    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 407
    .line 408
    .line 409
    move-result-object v12

    .line 410
    iget-object v13, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 411
    .line 412
    iget-object v13, v13, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 413
    .line 414
    const v14, 0x7fffffff

    .line 415
    .line 416
    .line 417
    invoke-virtual {v12, v13, v14}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 418
    .line 419
    .line 420
    :cond_d
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 421
    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 423
    .line 424
    .line 425
    iget-object v12, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 426
    .line 427
    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 428
    .line 429
    .line 430
    :cond_e
    iget-object v12, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 431
    .line 432
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 433
    .line 434
    invoke-virtual {v12}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    .line 435
    .line 436
    .line 437
    move-result v12

    .line 438
    if-eqz v12, :cond_f

    .line 439
    .line 440
    iget-object v12, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 441
    .line 442
    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 443
    .line 444
    invoke-virtual {v12, v0, v11}, Lcom/android/server/wm/AccessibilityController;->onWindowTransition(Lcom/android/server/wm/WindowState;I)V

    .line 445
    .line 446
    .line 447
    :cond_f
    if-eqz v9, :cond_11

    .line 448
    .line 449
    iget-boolean v9, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 450
    .line 451
    if-nez v9, :cond_10

    .line 452
    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    .line 454
    .line 455
    .line 456
    move-result v9

    .line 457
    if-eqz v9, :cond_11

    .line 458
    .line 459
    :cond_10
    move v9, v1

    .line 460
    goto :goto_6

    .line 461
    :cond_11
    move v9, v5

    .line 462
    :goto_6
    if-eqz v9, :cond_12

    .line 463
    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 465
    .line 466
    .line 467
    move-result-object v11

    .line 468
    if-eqz v11, :cond_12

    .line 469
    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 471
    .line 472
    .line 473
    move-result-object v11

    .line 474
    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    .line 475
    .line 476
    .line 477
    move-result v11

    .line 478
    if-eqz v11, :cond_12

    .line 479
    .line 480
    iget-boolean v11, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 481
    .line 482
    if-nez v11, :cond_12

    .line 483
    .line 484
    const/16 v11, 0x10

    .line 485
    .line 486
    invoke-virtual {v0, v5, v11}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 487
    .line 488
    .line 489
    move-result v11

    .line 490
    if-nez v11, :cond_12

    .line 491
    .line 492
    move v9, v5

    .line 493
    :cond_12
    if-eqz v3, :cond_13

    .line 494
    .line 495
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 496
    .line 497
    if-eqz v3, :cond_13

    .line 498
    .line 499
    iget-object v11, v3, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 500
    .line 501
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 502
    .line 503
    .line 504
    move-result v11

    .line 505
    if-ne v11, v1, :cond_13

    .line 506
    .line 507
    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 508
    .line 509
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    if-ne v3, v0, :cond_13

    .line 514
    .line 515
    move v3, v1

    .line 516
    goto :goto_7

    .line 517
    :cond_13
    move v3, v5

    .line 518
    :goto_7
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 519
    .line 520
    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    .line 521
    .line 522
    .line 523
    move-result v11

    .line 524
    if-eqz v11, :cond_19

    .line 525
    .line 526
    if-nez v3, :cond_19

    .line 527
    .line 528
    if-eqz v9, :cond_19

    .line 529
    .line 530
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 531
    .line 532
    aget-boolean v2, v2, v1

    .line 533
    .line 534
    if-eqz v2, :cond_14

    .line 535
    .line 536
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 541
    .line 542
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v16

    .line 546
    const/4 v14, 0x0

    .line 547
    const/4 v15, 0x0

    .line 548
    const-wide v12, -0x3981e1c998d8c5e2L    # -3.817912311750701E31

    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    :cond_14
    aget-boolean v2, v10, v1

    .line 557
    .line 558
    if-eqz v2, :cond_15

    .line 559
    .line 560
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 565
    .line 566
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v14

    .line 570
    const/4 v12, 0x0

    .line 571
    const/4 v13, 0x0

    .line 572
    const-wide v10, 0x3d541e879b803df6L

    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 578
    .line 579
    .line 580
    :cond_15
    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 581
    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 583
    .line 584
    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 590
    .line 591
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->removeWindowLw(Lcom/android/server/wm/WindowState;)V

    .line 592
    .line 593
    .line 594
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 595
    .line 596
    const/4 v2, 0x3

    .line 597
    invoke-virtual {v1, v2, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 598
    .line 599
    .line 600
    move-result v1

    .line 601
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 602
    .line 603
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 604
    .line 605
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 606
    .line 607
    .line 608
    if-eqz v1, :cond_16

    .line 609
    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 615
    .line 616
    invoke-virtual {v1, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 617
    .line 618
    .line 619
    :cond_16
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 620
    .line 621
    if-eqz v0, :cond_17

    .line 622
    .line 623
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    .line 625
    .line 626
    :cond_17
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 627
    .line 628
    .line 629
    return-void

    .line 630
    :cond_18
    move v4, v5

    .line 631
    :cond_19
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->providesDisplayDecorInsets()Z

    .line 632
    .line 633
    .line 634
    move-result v2

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 636
    .line 637
    .line 638
    if-eqz v4, :cond_1a

    .line 639
    .line 640
    invoke-virtual {v6, v5}, Lcom/android/server/wm/DisplayContent;->updateOrientation(Z)Z

    .line 641
    .line 642
    .line 643
    move-result v3

    .line 644
    if-eqz v3, :cond_1a

    .line 645
    .line 646
    move v3, v1

    .line 647
    goto :goto_8

    .line 648
    :cond_1a
    move v3, v5

    .line 649
    :goto_8
    if-eqz v2, :cond_1b

    .line 650
    .line 651
    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 652
    .line 653
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->updateDecorInsetsInfo()Z

    .line 654
    .line 655
    .line 656
    move-result v2

    .line 657
    or-int/2addr v3, v2

    .line 658
    if-eqz v3, :cond_1b

    .line 659
    .line 660
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 661
    .line 662
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 663
    .line 664
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 665
    .line 666
    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    .line 667
    .line 668
    iput-boolean v1, v2, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;->mAvoidAppCompatDisplayInsets:Z

    .line 669
    .line 670
    :cond_1b
    if-eqz v3, :cond_1c

    .line 671
    .line 672
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    .line 673
    .line 674
    .line 675
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 676
    .line 677
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 678
    .line 679
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 680
    .line 681
    iget-object v2, v2, Lcom/android/server/wm/MultiTaskingAppCompatController;->mSizeCompatModePolicy:Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;

    .line 682
    .line 683
    iput-boolean v5, v2, Lcom/android/server/wm/MultiTaskingAppCompatSizeCompatModePolicy;->mAvoidAppCompatDisplayInsets:Z

    .line 684
    .line 685
    :cond_1c
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 686
    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    .line 688
    .line 689
    .line 690
    move-result v0

    .line 691
    if-eqz v0, :cond_1d

    .line 692
    .line 693
    const/4 v5, 0x4

    .line 694
    :cond_1d
    invoke-virtual {v2, v5, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 695
    .line 696
    .line 697
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 698
    .line 699
    .line 700
    return-void

    .line 701
    :goto_9
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 702
    .line 703
    .line 704
    throw v0
.end method

.method public final removeImmediately()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 4
    .line 5
    const/4 v8, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    .line 9
    .line 10
    aget-boolean v1, v1, v8

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 19
    .line 20
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const-wide v2, 0x12bfe80326b53b13L

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :cond_1
    iput-boolean v8, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 36
    .line 37
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 47
    .line 48
    check-cast v1, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/16 v9, 0x40

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 61
    .line 62
    invoke-virtual {v1, v9, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-super/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isImeOverlayLayeringTarget()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/4 v10, 0x0

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 76
    .line 77
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 78
    .line 79
    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 84
    .line 85
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 86
    .line 87
    iget-object v1, v3, Lcom/android/server/wm/WindowManagerService;->mImeTargetChangeListener:Lcom/android/server/wm/ImeTargetChangeListener;

    .line 88
    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    iget-object v1, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 92
    .line 93
    new-instance v11, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;

    .line 94
    .line 95
    move-object v2, v11

    .line 96
    move v6, v10

    .line 97
    move v7, v8

    .line 98
    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZZ)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isImeLayeringTarget()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    const/4 v3, 0x0

    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceByTarget(Lcom/android/server/wm/WindowContainer;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->setImeLayeringTarget(Lcom/android/server/wm/WindowState;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v8}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 122
    .line 123
    .line 124
    :cond_4
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 125
    .line 126
    if-ne v2, v0, :cond_6

    .line 127
    .line 128
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 129
    .line 130
    if-eqz v2, :cond_5

    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_5

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_5
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 140
    .line 141
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 142
    .line 143
    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v2, v4, v10, v8}, Lcom/android/server/wm/WindowManagerService;->dispatchImeInputTargetVisibilityChanged(Landroid/os/IBinder;ZZ)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->updateImeInputAndControlTarget(Lcom/android/server/wm/InputTarget;)V

    .line 151
    .line 152
    .line 153
    :cond_6
    :goto_0
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 154
    .line 155
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 156
    .line 157
    const/16 v4, 0x7f5

    .line 158
    .line 159
    if-eq v2, v4, :cond_7

    .line 160
    .line 161
    const/16 v4, 0x7ee

    .line 162
    .line 163
    if-ne v2, v4, :cond_8

    .line 164
    .line 165
    :cond_7
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 166
    .line 167
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 168
    .line 169
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 170
    .line 171
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    invoke-virtual {v2, v4, v10}, Landroid/hardware/display/DisplayManagerInternal;->onPresentation(IZ)V

    .line 176
    .line 177
    .line 178
    :cond_8
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 179
    .line 180
    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->removeWindowLw(Lcom/android/server/wm/WindowState;)V

    .line 181
    .line 182
    .line 183
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 184
    .line 185
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 186
    .line 187
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 188
    .line 189
    iget-object v2, v1, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformContainers:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_9

    .line 196
    .line 197
    iget-object v1, v1, Lcom/android/server/wm/FreeformController;->mForceHiddenFreeformContainers:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->syncNextBuffer()Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_a

    .line 207
    .line 208
    const-string v1, "WindowManager"

    .line 209
    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string/jumbo v4, "removeImmediately: Call immediatelyNotifyBlastSync, w="

    .line 213
    .line 214
    .line 215
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    const v1, 0x7fffffff

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/WindowState;->finishDrawing(Landroid/view/SurfaceControl$Transaction;I)Z

    .line 232
    .line 233
    .line 234
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 235
    .line 236
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 237
    .line 238
    invoke-virtual {v1, v9, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 242
    .line 243
    .line 244
    iput-object v3, v0, Lcom/android/server/wm/WindowState;->mOnBackInvokedCallbackInfo:Landroid/window/OnBackInvokedCallbackInfo;

    .line 245
    .line 246
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 247
    .line 248
    iget-object v2, v1, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    iget-object v2, v1, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-eqz v2, :cond_b

    .line 260
    .line 261
    invoke-virtual {v1}, Lcom/android/server/wm/Session;->killSessionLocked()V

    .line 262
    .line 263
    .line 264
    :cond_b
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    .line 270
    .line 271
    aget-boolean v2, v2, v8

    .line 272
    .line 273
    if-eqz v2, :cond_c

    .line 274
    .line 275
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 280
    .line 281
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v16

    .line 285
    const/4 v14, 0x0

    .line 286
    const/4 v15, 0x0

    .line 287
    const-wide v12, 0x491202655c343519L    # 1.0040553230613144E44

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    :cond_c
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 296
    .line 297
    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 302
    .line 303
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    invoke-static {}, Landroid/view/flags/Flags;->sensitiveContentAppProtection()Z

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-eqz v4, :cond_e

    .line 311
    .line 312
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 313
    .line 314
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 315
    .line 316
    .line 317
    monitor-enter v4

    .line 318
    :try_start_0
    iget-object v5, v1, Lcom/android/server/wm/WindowManagerService;->mOnWindowRemovedListeners:Ljava/util/List;

    .line 319
    .line 320
    check-cast v5, Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    if-eqz v5, :cond_d

    .line 327
    .line 328
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 330
    .line 331
    .line 332
    goto :goto_2

    .line 333
    :catchall_0
    move-exception v0

    .line 334
    goto :goto_1

    .line 335
    :cond_d
    :try_start_1
    iget-object v5, v1, Lcom/android/server/wm/WindowManagerService;->mOnWindowRemovedListeners:Ljava/util/List;

    .line 336
    .line 337
    check-cast v5, Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    new-array v5, v5, [Lcom/android/server/wm/WindowManagerInternal$OnWindowRemovedListener;

    .line 344
    .line 345
    iget-object v6, v1, Lcom/android/server/wm/WindowManagerService;->mOnWindowRemovedListeners:Ljava/util/List;

    .line 346
    .line 347
    check-cast v6, Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 354
    .line 355
    .line 356
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 357
    .line 358
    new-instance v6, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda3;

    .line 359
    .line 360
    const/4 v7, 0x1

    .line 361
    invoke-direct {v6, v7, v5, v2}, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    .line 366
    .line 367
    goto :goto_2

    .line 368
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 370
    .line 371
    .line 372
    throw v0

    .line 373
    :cond_e
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 378
    .line 379
    invoke-virtual {v4, v0, v10}, Lcom/android/server/wm/DisplayRotation;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 380
    .line 381
    .line 382
    iget v4, v0, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 383
    .line 384
    const/4 v5, -0x1

    .line 385
    if-eq v4, v5, :cond_f

    .line 386
    .line 387
    iget-boolean v5, v0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 388
    .line 389
    if-eqz v5, :cond_f

    .line 390
    .line 391
    iget-object v5, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 392
    .line 393
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 394
    .line 395
    iget v6, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 396
    .line 397
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 398
    .line 399
    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {v5, v4, v6, v7, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    :cond_f
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 405
    .line 406
    if-nez v4, :cond_10

    .line 407
    .line 408
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mWinRemovedSinceNullFocus:Ljava/util/ArrayList;

    .line 409
    .line 410
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    :cond_10
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mEmbeddedWindowController:Lcom/android/server/wm/EmbeddedWindowController;

    .line 414
    .line 415
    iget-object v5, v4, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    .line 416
    .line 417
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    sub-int/2addr v5, v8

    .line 422
    :goto_3
    if-ltz v5, :cond_12

    .line 423
    .line 424
    iget-object v6, v4, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    .line 425
    .line 426
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    check-cast v6, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 431
    .line 432
    iget-object v7, v6, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    .line 433
    .line 434
    if-ne v7, v0, :cond_11

    .line 435
    .line 436
    iget-object v7, v4, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    .line 437
    .line 438
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v7

    .line 442
    check-cast v7, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 443
    .line 444
    invoke-virtual {v7}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->onRemoved()V

    .line 445
    .line 446
    .line 447
    iget-object v7, v4, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    .line 448
    .line 449
    iget-object v9, v6, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputTransferToken:Landroid/window/InputTransferToken;

    .line 450
    .line 451
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    iget-object v7, v4, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    .line 455
    .line 456
    iget-object v6, v6, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/os/IBinder;

    .line 457
    .line 458
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    :cond_11
    add-int/lit8 v5, v5, -0x1

    .line 462
    .line 463
    goto :goto_3

    .line 464
    :cond_12
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 465
    .line 466
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    invoke-virtual {v1, v0, v10}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    .line 470
    .line 471
    .line 472
    iput-boolean v8, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 473
    .line 474
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:[Z

    .line 475
    .line 476
    aget-boolean v4, v4, v8

    .line 477
    .line 478
    if-eqz v4, :cond_13

    .line 479
    .line 480
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 485
    .line 486
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v14

    .line 490
    const/4 v12, 0x0

    .line 491
    const/4 v13, 0x0

    .line 492
    const-wide v10, -0x35654ec9983fc866L    # -2.4966878217762297E51

    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 505
    .line 506
    if-ne v5, v0, :cond_14

    .line 507
    .line 508
    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 509
    .line 510
    .line 511
    :cond_14
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 512
    .line 513
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    .line 514
    .line 515
    aget-boolean v4, v4, v8

    .line 516
    .line 517
    if-eqz v4, :cond_15

    .line 518
    .line 519
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v5

    .line 527
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 528
    .line 529
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v14

    .line 533
    const/4 v12, 0x0

    .line 534
    const/4 v13, 0x0

    .line 535
    const-wide v10, 0x13b355f4fc2e37a5L    # 8.97438188060422E-214

    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 541
    .line 542
    .line 543
    :cond_15
    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 544
    .line 545
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 546
    .line 547
    .line 548
    move-result v4

    .line 549
    if-eqz v4, :cond_16

    .line 550
    .line 551
    iget-boolean v4, v3, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    .line 552
    .line 553
    if-nez v4, :cond_16

    .line 554
    .line 555
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    .line 556
    .line 557
    .line 558
    :cond_16
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 559
    .line 560
    if-eqz v3, :cond_17

    .line 561
    .line 562
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityRecord;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    .line 563
    .line 564
    .line 565
    :cond_17
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 566
    .line 567
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 568
    .line 569
    const/16 v4, 0x7dd

    .line 570
    .line 571
    if-ne v3, v4, :cond_18

    .line 572
    .line 573
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 574
    .line 575
    const-wide/16 v4, 0x0

    .line 576
    .line 577
    iput-wide v4, v3, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 578
    .line 579
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 580
    .line 581
    or-int/lit8 v3, v3, 0x4

    .line 582
    .line 583
    iput v3, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 584
    .line 585
    goto :goto_4

    .line 586
    :cond_18
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 587
    .line 588
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    .line 589
    .line 590
    .line 591
    move-result v3

    .line 592
    if-eqz v3, :cond_19

    .line 593
    .line 594
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 595
    .line 596
    or-int/lit8 v3, v3, 0x4

    .line 597
    .line 598
    iput v3, v2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 599
    .line 600
    :cond_19
    :goto_4
    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 601
    .line 602
    iget-boolean v3, v3, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 603
    .line 604
    if-nez v3, :cond_1a

    .line 605
    .line 606
    invoke-virtual {v2, v8}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 607
    .line 608
    .line 609
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 610
    .line 611
    const/4 v3, 0x0

    .line 612
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 613
    .line 614
    .line 615
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 616
    .line 617
    if-eqz v1, :cond_1a

    .line 618
    .line 619
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 620
    .line 621
    .line 622
    :cond_1a
    iget-object v1, v2, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    .line 623
    .line 624
    invoke-virtual {v1, v8}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 625
    .line 626
    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->consumeInsetsChange()V

    .line 628
    .line 629
    .line 630
    return-void
.end method

.method public final reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isStartingWindowAssociatedToTask()Z

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
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final reportFocusChangedSerialized(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/view/IWindowFocusObserver;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/view/IWindowId$Stub;->asBinder()Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusGained(Landroid/os/IBinder;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/view/IWindowId$Stub;->asBinder()Landroid/os/IBinder;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusLost(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public final requestUpdateWallpaperIfNeeded()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    :cond_1
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 22
    .line 23
    or-int/lit8 v1, v1, 0x4

    .line 24
    .line 25
    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    add-int/lit8 v0, v0, -0x1

    .line 44
    .line 45
    :goto_0
    if-ltz v0, :cond_3

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v0, v0, -0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return-void
.end method

.method public final resetDragResizingChangeReported()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 3
    .line 4
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final sendAppVisibilityToClients()V
    .locals 5

    .line 1
    const-string v0, "WindowManager"

    .line 2
    .line 3
    const-string v1, "Setting visibility of "

    .line 4
    .line 5
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 9
    .line 10
    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 13
    .line 14
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ": "

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", caller="

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x5

    .line 44
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 59
    .line 60
    invoke-interface {v1, v2}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v3, "Exception thrown during dispatchAppVisibility "

    .line 68
    .line 69
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 83
    .line 84
    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 85
    .line 86
    sget v1, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 87
    .line 88
    if-eq v0, v1, :cond_2

    .line 89
    .line 90
    invoke-static {v0}, Landroid/os/Process;->getThreadGroupLeader(I)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-ne v0, v1, :cond_1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 98
    .line 99
    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 100
    .line 101
    invoke-static {v0}, Landroid/os/Process;->getUidForPid(I)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 106
    .line 107
    iget v1, p0, Lcom/android/server/wm/Session;->mUid:I

    .line 108
    .line 109
    if-ne v0, v1, :cond_2

    .line 110
    .line 111
    iget p0, p0, Lcom/android/server/wm/Session;->mPid:I

    .line 112
    .line 113
    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_0
    return-void
.end method

.method public final setAppOpVisibilityLw(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->show(Z)Z

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method public final setDisplayLayoutNeeded()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final setForceHideNonSystemOverlayWindowIfNeeded(Z)V
    .locals 4

    .line 1
    move-object v0, p0

    .line 2
    :goto_0
    move-object v1, v0

    .line 3
    :cond_0
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 17
    .line 18
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 21
    .line 22
    iget-boolean v1, v1, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 23
    .line 24
    if-nez v1, :cond_a

    .line 25
    .line 26
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    const/16 v1, 0x7d5

    .line 33
    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIgnoreHideNonSystemOverlayWindow:Z

    .line 39
    .line 40
    const-string v2, "WindowManager"

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "Hide non system overlay window ignored app - "

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    const/16 v1, 0x7f6

    .line 63
    .line 64
    if-ne v0, v1, :cond_4

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemApplicationOverlay()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 75
    .line 76
    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanCreateSystemApplicationOverlay:Z

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    const-string p0, "do not Hide non system overlay window in CarLife display"

    .line 96
    .line 97
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    .line 102
    .line 103
    if-ne v0, p1, :cond_6

    .line 104
    .line 105
    return-void

    .line 106
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    .line 107
    .line 108
    const/4 v0, 0x1

    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_7
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 116
    .line 117
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 122
    .line 123
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 124
    .line 125
    invoke-virtual {p1, v1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-nez v1, :cond_8

    .line 130
    .line 131
    iget-boolean v3, v2, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mAodShowing:Z

    .line 132
    .line 133
    if-eqz v3, :cond_8

    .line 134
    .line 135
    iget-boolean p1, v2, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mKeyguardGoingAway:Z

    .line 136
    .line 137
    xor-int/2addr p1, v0

    .line 138
    goto :goto_1

    .line 139
    :cond_8
    invoke-virtual {p1, v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    :goto_1
    if-eqz p1, :cond_9

    .line 144
    .line 145
    return-void

    .line 146
    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->show(Z)Z

    .line 147
    .line 148
    .line 149
    :cond_a
    :goto_2
    return-void
.end method

.method public final setHiddenWhileProfileLockedStateLocked(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 18
    .line 19
    const/16 v1, 0x7d5

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileProfileLockedState:Z

    .line 25
    .line 26
    if-ne v0, p1, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileProfileLockedState:Z

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->show(Z)Z

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_0
    return-void
.end method

.method public final setHiddenWhileSuspended(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 18
    .line 19
    const/16 v1, 0x7d5

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    .line 25
    .line 26
    if-ne v0, p1, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->show(Z)Z

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_0
    return-void
.end method

.method public final setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/window/flags/Flags;->surfaceTrustedOverlay()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWindowTrustedOverlay()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 22
    .line 23
    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {}, Lcom/android/window/flags/Flags;->secureWindowState()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 46
    .line 47
    iget-boolean p1, p1, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 48
    .line 49
    xor-int/2addr p1, v0

    .line 50
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 55
    .line 56
    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setCanOccludePresentation(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final setKeepClearAreas(Ljava/util/List;Ljava/util/List;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    xor-int/2addr v0, v1

    .line 11
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    .line 12
    .line 13
    check-cast v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    xor-int/2addr v2, v1

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    .line 29
    .line 30
    check-cast v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mKeepClearAreas:Ljava/util/List;

    .line 36
    .line 37
    check-cast v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    .line 45
    .line 46
    check-cast p1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mUnrestrictedKeepClearAreas:Ljava/util/List;

    .line 52
    .line 53
    check-cast p0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 56
    .line 57
    .line 58
    :cond_2
    return v1
.end method

.method public final setOrientationChanging(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 5
    .line 6
    if-ne v1, p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 18
    .line 19
    iget-boolean p1, p1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->shouldSyncRotationChange(Lcom/android/server/wm/WindowState;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotation(Lcom/android/server/wm/WindowToken;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method

.method public final setRequestedSize(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 6
    .line 7
    if-eq v0, p2, :cond_1

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 11
    .line 12
    iput p1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 13
    .line 14
    iput p2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public setRequestedVisibleTypes(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 2
    .line 3
    not-int v1, p2

    .line 4
    and-int/2addr v1, v0

    .line 5
    and-int/2addr p1, p2

    .line 6
    or-int/2addr p1, v1

    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final setSecureLocked(Z)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const/4 v4, 0x3

    .line 27
    const/4 v5, 0x0

    .line 28
    const-wide v2, 0x72c3b605e4fc36a1L    # 6.729390872251551E244

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {}, Lcom/android/window/flags/Flags;->secureWindowState()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 52
    .line 53
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 60
    .line 61
    if-eqz v0, :cond_7

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 77
    .line 78
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 79
    .line 80
    .line 81
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 82
    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 90
    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->canScreenshotIme()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    const/4 v1, 0x0

    .line 101
    goto :goto_2

    .line 102
    :cond_5
    :goto_1
    const/4 v1, 0x1

    .line 103
    :goto_2
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainer:Lcom/android/server/wm/DisplayContent$ImeContainer;

    .line 104
    .line 105
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->setCanScreenshot(Landroid/view/SurfaceControl$Transaction;Z)Z

    .line 106
    .line 107
    .line 108
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 111
    .line 112
    .line 113
    :cond_7
    :goto_3
    return-void
.end method

.method public final setViewVisibility(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 2
    .line 3
    return-void
.end method

.method public final setWindowScale(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4
    .line 5
    and-int/lit16 v1, v1, 0x4000

    .line 6
    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 12
    .line 13
    if-eq v1, p1, :cond_0

    .line 14
    .line 15
    int-to-float v1, v1

    .line 16
    int-to-float p1, p1

    .line 17
    div-float/2addr v1, p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    iput v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 21
    .line 22
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 23
    .line 24
    if-eq p1, p2, :cond_1

    .line 25
    .line 26
    int-to-float p1, p1

    .line 27
    int-to-float p2, p2

    .line 28
    div-float v2, p1, p2

    .line 29
    .line 30
    :cond_1
    iput v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    iput v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 34
    .line 35
    iput v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 36
    .line 37
    :goto_1
    return-void
.end method

.method public final shouldCheckTokenVisibleRequested()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    :goto_1
    return p0
.end method

.method public final shouldControlIme()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSplitEmbedded()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    xor-int/2addr p0, v1

    .line 34
    return p0
.end method

.method public final shouldMagnify()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasOneHandOpSpec()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/high16 v2, 0x400000

    .line 9
    .line 10
    const/16 v3, 0x7e8

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 18
    .line 19
    const/16 v5, 0x7df

    .line 20
    .line 21
    if-eq v0, v5, :cond_2

    .line 22
    .line 23
    if-eq v0, v3, :cond_3

    .line 24
    .line 25
    const/16 v3, 0xa3b

    .line 26
    .line 27
    if-eq v0, v3, :cond_1

    .line 28
    .line 29
    const/16 v3, 0xa28

    .line 30
    .line 31
    if-eq v0, v3, :cond_1

    .line 32
    .line 33
    const/16 v3, 0xa29

    .line 34
    .line 35
    if-eq v0, v3, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 39
    .line 40
    and-int/2addr p0, v2

    .line 41
    if-eqz p0, :cond_4

    .line 42
    .line 43
    :cond_1
    return v4

    .line 44
    :cond_2
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 45
    .line 46
    const/high16 v2, -0x80000000

    .line 47
    .line 48
    and-int/2addr v0, v2

    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    return v4

    .line 52
    :cond_3
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 53
    .line 54
    const/high16 v0, 0x100000

    .line 55
    .line 56
    and-int/2addr p0, v0

    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    return v4

    .line 60
    :cond_4
    :goto_0
    return v1

    .line 61
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 62
    .line 63
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 64
    .line 65
    const/16 v5, 0x7f7

    .line 66
    .line 67
    if-eq v0, v5, :cond_8

    .line 68
    .line 69
    const/16 v5, 0x7db

    .line 70
    .line 71
    if-eq v0, v5, :cond_8

    .line 72
    .line 73
    const/16 v5, 0x7dc

    .line 74
    .line 75
    if-eq v0, v5, :cond_8

    .line 76
    .line 77
    const/16 v5, 0x7eb

    .line 78
    .line 79
    if-eq v0, v5, :cond_8

    .line 80
    .line 81
    const/16 v5, 0x7e3

    .line 82
    .line 83
    if-eq v0, v5, :cond_8

    .line 84
    .line 85
    if-eq v0, v3, :cond_8

    .line 86
    .line 87
    const/16 v3, 0x44c

    .line 88
    .line 89
    if-ne v0, v3, :cond_6

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_6
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 93
    .line 94
    and-int/2addr p0, v2

    .line 95
    if-eqz p0, :cond_7

    .line 96
    .line 97
    return v4

    .line 98
    :cond_7
    return v1

    .line 99
    :cond_8
    :goto_1
    return v4
.end method

.method public final shouldSendRedrawForSync()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRedrawForSyncReported:Z

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
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mInRelayout:Z

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPrepareSyncSeqId:I

    .line 12
    .line 13
    if-gtz v0, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 20
    .line 21
    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v0, v2, :cond_2

    .line 25
    .line 26
    :cond_1
    return v1

    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->syncNextBuffer()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final shouldSyncWithBuffers()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    move p0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    if-eq p0, v3, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget p0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    .line 29
    .line 30
    :goto_0
    if-ne p0, v1, :cond_3

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_3
    move v1, v2

    .line 34
    :goto_1
    return v1
.end method

.method public final shouldUpdateSyncOnReparent()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
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

.method public final show(Z)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->showToCurrentUser()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    return v2

    .line 25
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    return v2

    .line 30
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    return v2

    .line 35
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    .line 36
    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    return v2

    .line 40
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileProfileLockedState:Z

    .line 41
    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    return v2

    .line 45
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    .line 46
    .line 47
    if-eqz v0, :cond_7

    .line 48
    .line 49
    return v2

    .line 50
    :cond_7
    if-eqz p1, :cond_9

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_8

    .line 59
    .line 60
    :goto_1
    move p1, v2

    .line 61
    goto :goto_2

    .line 62
    :cond_8
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 63
    .line 64
    and-int/2addr v0, v1

    .line 65
    if-eqz v0, :cond_9

    .line 66
    .line 67
    const/4 v0, 0x3

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_9

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_9
    :goto_2
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 76
    .line 77
    or-int/2addr v0, v1

    .line 78
    iput v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 83
    .line 84
    .line 85
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 86
    .line 87
    if-eqz p1, :cond_a

    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 90
    .line 91
    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 92
    .line 93
    .line 94
    :cond_a
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 100
    .line 101
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 102
    .line 103
    and-int/lit8 p1, p1, 0x8

    .line 104
    .line 105
    if-nez p1, :cond_b

    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 108
    .line 109
    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 110
    .line 111
    .line 112
    :cond_b
    return v1
.end method

.method public final showForAllUsers()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x7e8

    .line 9
    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x7ee

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const/16 v1, 0x7f2

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const/16 v1, 0x7f5

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    const/16 v1, 0x7ea

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    const/16 v1, 0x7eb

    .line 29
    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    .line 32
    packed-switch v0, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    packed-switch v0, :pswitch_data_1

    .line 36
    .line 37
    .line 38
    packed-switch v0, :pswitch_data_2

    .line 39
    .line 40
    .line 41
    packed-switch v0, :pswitch_data_3

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x96b

    .line 52
    .line 53
    if-eq v0, v1, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 56
    .line 57
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 58
    .line 59
    and-int/lit8 v0, v0, 0x10

    .line 60
    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    return p0

    .line 65
    :cond_0
    :pswitch_0
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    .line 66
    .line 67
    return p0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :pswitch_data_1
    .packed-switch 0x7d7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :pswitch_data_2
    .packed-switch 0x7e1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :pswitch_data_3
    .packed-switch 0x7f7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 2

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1, p3, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 11
    .line 12
    invoke-interface {p0, p1, p2, p3}, Landroid/view/IWindow;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "WindowManager"

    .line 18
    .line 19
    const-string p2, "Failed to deliver showInsets"

    .line 20
    .line 21
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0, p3, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public final showToCurrentUser()Z
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    :goto_0
    move-object v1, v0

    .line 3
    :cond_0
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 17
    .line 18
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 19
    .line 20
    const/16 v2, 0x7d0

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-ge v0, v2, :cond_2

    .line 24
    .line 25
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 42
    .line 43
    if-gt v4, v5, :cond_2

    .line 44
    .line 45
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 46
    .line 47
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    if-gt v4, v5, :cond_2

    .line 50
    .line 51
    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 52
    .line 53
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 54
    .line 55
    if-lt v4, v5, :cond_2

    .line 56
    .line 57
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 58
    .line 59
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 60
    .line 61
    if-lt v2, v0, :cond_2

    .line 62
    .line 63
    return v3

    .line 64
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->showForAllUsers()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 71
    .line 72
    iget v0, v1, Lcom/android/server/wm/WindowState;->mShowUserId:I

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->isUserVisible(I)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    const/4 v3, 0x0

    .line 84
    :cond_4
    :goto_1
    return v3
.end method

.method public final showWallpaper()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final startAnimation(Landroid/view/animation/Animation;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 27
    .line 28
    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 29
    .line 30
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v0, 0x2710

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Landroid/graphics/Point;

    .line 48
    .line 49
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/android/window/flags/Flags;->removePrepareSurfaceInPlacement()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 61
    .line 62
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 63
    .line 64
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 65
    .line 66
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    new-instance v1, Lcom/android/server/wm/LocalAnimationAdapter;

    .line 76
    .line 77
    new-instance v2, Lcom/android/server/wm/WindowAnimationSpec;

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    const/4 v4, 0x0

    .line 81
    invoke-direct {v2, p1, v0, v3, v4}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 87
    .line 88
    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 92
    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 105
    .line 106
    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    .line 107
    .line 108
    const/16 v2, 0x10

    .line 109
    .line 110
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegion:Landroid/graphics/Region;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 35
    .line 36
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 44
    .line 45
    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 46
    .line 47
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Region;->translate(II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_1

    .line 57
    .line 58
    sget-object p0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 59
    .line 60
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final switchUser(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->showToCurrentUser()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x2

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget p1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 12
    .line 13
    or-int/2addr p1, v0

    .line 14
    iput p1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final syncNextBuffer()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->syncNextBuffer()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 10
    .line 11
    if-ne v1, v0, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 16
    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    :cond_0
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "Window{"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " u"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    const-string v1, " EXITING}"

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const-string/jumbo v1, "}"

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    .line 81
    .line 82
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    .line 83
    .line 84
    return-object p0
.end method

.method public final transformFrameToSurfacePosition(IILandroid/graphics/Point;)V
    .locals 2

    .line 1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 17
    .line 18
    iget-object p2, p2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 19
    .line 20
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    neg-int v0, v0

    .line 23
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    neg-int p2, p2

    .line 26
    invoke-virtual {p3, v0, p2}, Landroid/graphics/Point;->offset(II)V

    .line 27
    .line 28
    .line 29
    iget p2, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 30
    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    .line 33
    cmpl-float v0, p2, v0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget v0, p3, Landroid/graphics/Point;->x:I

    .line 38
    .line 39
    int-to-float v0, v0

    .line 40
    mul-float/2addr v0, p2

    .line 41
    const/high16 v1, 0x3f000000    # 0.5f

    .line 42
    .line 43
    add-float/2addr v0, v1

    .line 44
    float-to-int v0, v0

    .line 45
    iput v0, p3, Landroid/graphics/Point;->x:I

    .line 46
    .line 47
    iget v0, p3, Landroid/graphics/Point;->y:I

    .line 48
    .line 49
    int-to-float v0, v0

    .line 50
    mul-float/2addr v0, p2

    .line 51
    add-float/2addr v0, v1

    .line 52
    float-to-int p2, v0

    .line 53
    iput p2, p3, Landroid/graphics/Point;->y:I

    .line 54
    .line 55
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 58
    .line 59
    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 60
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState;->transformSurfaceInsetsPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    .line 65
    .line 66
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 67
    .line 68
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 69
    .line 70
    invoke-virtual {p3, p2, p1}, Landroid/graphics/Point;->offset(II)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    if-eqz p1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isStartingWindowAssociatedToTask()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :goto_0
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 96
    .line 97
    neg-int p2, p2

    .line 98
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 99
    .line 100
    neg-int p1, p1

    .line 101
    invoke-virtual {p3, p2, p1}, Landroid/graphics/Point;->offset(II)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    .line 105
    .line 106
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 107
    .line 108
    iget-object p2, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 109
    .line 110
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/WindowState;->transformSurfaceInsetsPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    .line 114
    .line 115
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 116
    .line 117
    neg-int p2, p2

    .line 118
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 119
    .line 120
    neg-int p1, p1

    .line 121
    invoke-virtual {p3, p2, p1}, Landroid/graphics/Point;->offset(II)V

    .line 122
    .line 123
    .line 124
    iget p1, p3, Landroid/graphics/Point;->y:I

    .line 125
    .line 126
    iget p0, p0, Lcom/android/server/wm/WindowState;->mSurfaceTranslationY:I

    .line 127
    .line 128
    add-int/2addr p1, p0

    .line 129
    iput p1, p3, Landroid/graphics/Point;->y:I

    .line 130
    .line 131
    return-void
.end method

.method public final transformSurfaceInsetsPosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    cmpl-float v1, v0, v1

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    int-to-float p0, p0

    .line 17
    mul-float/2addr p0, v0

    .line 18
    const/high16 v1, 0x3f000000    # 0.5f

    .line 19
    .line 20
    add-float/2addr p0, v1

    .line 21
    float-to-int p0, p0

    .line 22
    iput p0, p2, Landroid/graphics/Point;->x:I

    .line 23
    .line 24
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 25
    .line 26
    int-to-float p0, p0

    .line 27
    mul-float/2addr p0, v0

    .line 28
    add-float/2addr p0, v1

    .line 29
    float-to-int p0, p0

    .line 30
    iput p0, p2, Landroid/graphics/Point;->y:I

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 34
    .line 35
    iput p0, p2, Landroid/graphics/Point;->x:I

    .line 36
    .line 37
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 38
    .line 39
    iput p0, p2, Landroid/graphics/Point;->y:I

    .line 40
    .line 41
    return-void
.end method

.method public final updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSources:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-static {p2, v0}, Lcom/android/server/wm/WindowContainer;->createMergedSparseArray(Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda5;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda5;-><init>(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public updateFrameRateSelectionPriorityIfNeeded()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    if-lez v2, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-eqz v1, :cond_1

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    move v1, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-eqz v1, :cond_2

    .line 35
    .line 36
    if-lez v2, :cond_2

    .line 37
    .line 38
    move v1, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v1, -0x1

    .line 41
    :goto_0
    iget v2, p0, Lcom/android/server/wm/WindowState;->mFrameRateSelectionPriority:I

    .line 42
    .line 43
    if-eq v2, v1, :cond_3

    .line 44
    .line 45
    iput v1, p0, Lcom/android/server/wm/WindowState;->mFrameRateSelectionPriority:I

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 52
    .line 53
    iget v5, p0, Lcom/android/server/wm/WindowState;->mFrameRateSelectionPriority:I

    .line 54
    .line 55
    invoke-virtual {v1, v2, v5}, Landroid/view/SurfaceControl$Transaction;->setFrameRateSelectionPriority(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object v1, v0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateSwitchingType()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x0

    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    .line 70
    .line 71
    invoke-virtual {v0, v4, v4, v2}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->update(IIF)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_4
    invoke-static {}, Lcom/android/window/flags/Flags;->explicitRefreshRateHints()Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_5

    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    .line 90
    .line 91
    invoke-virtual {v0, v4, v4, v2}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->update(IIF)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :cond_5
    const/16 v5, 0x64

    .line 98
    .line 99
    const/4 v6, 0x3

    .line 100
    if-eq v1, v6, :cond_8

    .line 101
    .line 102
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 103
    .line 104
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 105
    .line 106
    if-lez v7, :cond_8

    .line 107
    .line 108
    iget-object v8, v0, Lcom/android/server/wm/RefreshRatePolicy;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 109
    .line 110
    iget-object v8, v8, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 111
    .line 112
    array-length v9, v8

    .line 113
    move v10, v4

    .line 114
    :goto_1
    if-ge v10, v9, :cond_8

    .line 115
    .line 116
    aget-object v11, v8, v10

    .line 117
    .line 118
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getModeId()I

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    if-ne v7, v12, :cond_7

    .line 123
    .line 124
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HRR_CHINA_DELTA:Z

    .line 125
    .line 126
    if-eqz v1, :cond_6

    .line 127
    .line 128
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    const v6, 0x42effae1    # 119.99f

    .line 133
    .line 134
    .line 135
    cmpl-float v1, v1, v6

    .line 136
    .line 137
    if-ltz v1, :cond_6

    .line 138
    .line 139
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 140
    .line 141
    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 144
    .line 145
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 146
    .line 147
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 148
    .line 149
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mHighRefreshRateBlockList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_6

    .line 156
    .line 157
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    .line 158
    .line 159
    invoke-virtual {v0, v4, v4, v2}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->update(IIF)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    goto :goto_2

    .line 164
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    .line 165
    .line 166
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {v0, v5, v3, v1}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->update(IIF)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    goto :goto_2

    .line 175
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_8
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 179
    .line 180
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    .line 181
    .line 182
    cmpl-float v9, v8, v2

    .line 183
    .line 184
    if-lez v9, :cond_9

    .line 185
    .line 186
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    .line 187
    .line 188
    invoke-virtual {v0, v4, v3, v8}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->update(IIF)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    goto :goto_2

    .line 193
    :cond_9
    if-eq v1, v6, :cond_a

    .line 194
    .line 195
    iget-object v1, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 196
    .line 197
    iget-object v6, v0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    .line 198
    .line 199
    iget-object v7, v6, Lcom/android/server/wm/HighRefreshRateDenylist;->mLock:Ljava/lang/Object;

    .line 200
    .line 201
    monitor-enter v7

    .line 202
    :try_start_0
    iget-object v6, v6, Lcom/android/server/wm/HighRefreshRateDenylist;->mDenylistedPackages:Landroid/util/ArraySet;

    .line 203
    .line 204
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    if-eqz v1, :cond_a

    .line 210
    .line 211
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    .line 212
    .line 213
    iget-object v0, v0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    invoke-virtual {v1, v5, v3, v0}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->update(IIF)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    goto :goto_2

    .line 224
    :catchall_0
    move-exception p0

    .line 225
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    throw p0

    .line 227
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    .line 228
    .line 229
    invoke-virtual {v0, v4, v4, v2}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->update(IIF)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    :goto_2
    if-eqz v0, :cond_b

    .line 234
    .line 235
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 240
    .line 241
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    .line 242
    .line 243
    iget v4, v2, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mRefreshRate:F

    .line 244
    .line 245
    iget v2, v2, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mCompatibility:I

    .line 246
    .line 247
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setFrameRate(Landroid/view/SurfaceControl;FII)Landroid/view/SurfaceControl$Transaction;

    .line 248
    .line 249
    .line 250
    invoke-static {}, Lcom/android/window/flags/Flags;->explicitRefreshRateHints()Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_b

    .line 255
    .line 256
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 261
    .line 262
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    .line 263
    .line 264
    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->mSelectionStrategy:I

    .line 265
    .line 266
    invoke-virtual {v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setFrameRateSelectionStrategy(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 267
    .line 268
    .line 269
    :cond_b
    return-void
.end method

.method public final updateGlobalScale()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hasCompatScale()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOverrideScale:F

    .line 10
    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasSizeCompatBounds()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v0, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getCompatScale()F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :goto_1
    iput v0, p0, Lcom/android/server/wm/WindowState;->mCompatScale:F

    .line 33
    .line 34
    iget v2, p0, Lcom/android/server/wm/WindowState;->mOverrideScale:F

    .line 35
    .line 36
    mul-float/2addr v0, v2

    .line 37
    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 38
    .line 39
    div-float/2addr v1, v0

    .line 40
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    iput v1, p0, Lcom/android/server/wm/WindowState;->mCompatScale:F

    .line 44
    .line 45
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 46
    .line 47
    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 48
    .line 49
    return-void
.end method

.method public final updateLetterboxDirectionIfNeeded()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 11
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
    new-instance v2, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda4;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v2, v3}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->getLetterboxDirection()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/wm/AppCompatController;->mAppCompatLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->getLetterboxDirection()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLetterboxDirection:I

    .line 66
    .line 67
    if-eq v0, v1, :cond_3

    .line 68
    .line 69
    iput v1, p0, Lcom/android/server/wm/WindowState;->mLetterboxDirection:I

    .line 70
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 72
    .line 73
    invoke-interface {v0, v1}, Landroid/view/IWindow;->dispatchLetterboxDirectionChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v2, "Failed to deliver letterbox direction, w="

    .line 81
    .line 82
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string v1, "WindowManager"

    .line 93
    .line 94
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_1
    return-void
.end method

.method public final updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V
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
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_0

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
    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 26
    .line 27
    if-nez v0, :cond_4

    .line 28
    .line 29
    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 30
    .line 31
    if-nez v0, :cond_4

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 34
    .line 35
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    if-eq v0, v1, :cond_4

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v2, 0x0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 59
    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_2

    .line 69
    .line 70
    iget p0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 71
    .line 72
    add-int/lit8 p0, p0, 0x1

    .line 73
    .line 74
    iput p0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 75
    .line 76
    :cond_2
    iput-boolean v2, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_4

    .line 84
    .line 85
    iput-boolean v2, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    .line 86
    .line 87
    :cond_4
    :goto_1
    return-void
.end method

.method public final updateSourceFrame(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mInsetsSourceProviders:Landroid/util/SparseArray;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getInsetsSourceProviders()Landroid/util/SparseArray;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    :goto_0
    if-ltz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/android/server/wm/InsetsSourceProvider;->updateSourceFrame(Landroid/graphics/Rect;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsSurfacePositionPaused:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_a

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 25
    .line 26
    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 27
    .line 28
    if-lez v0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 38
    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 48
    .line 49
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 50
    .line 51
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 54
    .line 55
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    .line 59
    .line 60
    const/high16 v2, 0x3f800000    # 1.0f

    .line 61
    .line 62
    cmpl-float v1, v1, v2

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 71
    .line 72
    iget v3, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 73
    .line 74
    int-to-float v3, v3

    .line 75
    iget v4, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 76
    .line 77
    int-to-float v4, v4

    .line 78
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 79
    .line 80
    .line 81
    iget v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {v2, v3, v3, v4, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    .line 102
    .line 103
    const/4 v3, 0x2

    .line 104
    aget v2, v2, v3

    .line 105
    .line 106
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpMatrixArray:[F

    .line 111
    .line 112
    const/4 v4, 0x5

    .line 113
    aget v3, v3, v4

    .line 114
    .line 115
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 124
    .line 125
    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 126
    .line 127
    iget v3, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 128
    .line 129
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .line 130
    .line 131
    .line 132
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const/4 v2, 0x1

    .line 139
    if-eqz v1, :cond_5

    .line 140
    .line 141
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 142
    .line 143
    iget-object v1, v1, Lcom/android/server/wm/AsyncRotationController;->mTargetWindowTokens:Landroid/util/ArrayMap;

    .line 144
    .line 145
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Lcom/android/server/wm/AsyncRotationController$Operation;

    .line 150
    .line 151
    if-eqz v1, :cond_5

    .line 152
    .line 153
    iget v1, v1, Lcom/android/server/wm/AsyncRotationController$Operation;->mAction:I

    .line 154
    .line 155
    if-ne v1, v2, :cond_5

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    .line 159
    .line 160
    if-eqz v1, :cond_6

    .line 161
    .line 162
    :goto_2
    return-void

    .line 163
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_10

    .line 170
    .line 171
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 172
    .line 173
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 174
    .line 175
    invoke-virtual {v1, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_10

    .line 180
    .line 181
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 182
    .line 183
    iget-boolean v3, v1, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    .line 184
    .line 185
    if-nez v3, :cond_8

    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/android/server/wm/WindowFrames;->didFrameSizeChange()Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_7

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_7
    move v1, v0

    .line 195
    goto :goto_4

    .line 196
    :cond_8
    :goto_3
    move v1, v2

    .line 197
    :goto_4
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    .line 198
    .line 199
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 200
    .line 201
    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 202
    .line 203
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    xor-int/2addr v3, v2

    .line 208
    if-nez v1, :cond_a

    .line 209
    .line 210
    if-eqz v3, :cond_9

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_9
    move v1, v0

    .line 214
    goto :goto_6

    .line 215
    :cond_a
    :goto_5
    move v1, v2

    .line 216
    :goto_6
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 217
    .line 218
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 219
    .line 220
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 221
    .line 222
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 223
    .line 224
    invoke-virtual {v4, v6, v5}, Landroid/graphics/Point;->set(II)V

    .line 225
    .line 226
    .line 227
    if-eqz v3, :cond_b

    .line 228
    .line 229
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    .line 230
    .line 231
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 232
    .line 233
    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 234
    .line 235
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 236
    .line 237
    .line 238
    :cond_b
    if-eqz v1, :cond_c

    .line 239
    .line 240
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_c

    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->canPlayMoveAnimation()Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-nez v1, :cond_c

    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->okToDisplay()Z

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-eqz v1, :cond_c

    .line 259
    .line 260
    iget v1, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 261
    .line 262
    if-nez v1, :cond_c

    .line 263
    .line 264
    move v1, v2

    .line 265
    goto :goto_7

    .line 266
    :cond_c
    move v1, v0

    .line 267
    :goto_7
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 268
    .line 269
    if-eqz v3, :cond_d

    .line 270
    .line 271
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-eqz v4, :cond_d

    .line 276
    .line 277
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 278
    .line 279
    iget-object v3, v3, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 280
    .line 281
    iget-object v3, v3, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatOrientationOverrides:Lcom/android/server/wm/AppCompatOrientationOverrides;

    .line 282
    .line 283
    iget-object v3, v3, Lcom/android/server/wm/AppCompatOrientationOverrides;->mOrientationOverridesState:Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;

    .line 284
    .line 285
    iget-boolean v3, v3, Lcom/android/server/wm/AppCompatOrientationOverrides$OrientationOverridesState;->mIsRelaunchingAfterRequestedOrientationChanged:Z

    .line 286
    .line 287
    if-eqz v3, :cond_d

    .line 288
    .line 289
    goto :goto_8

    .line 290
    :cond_d
    move v2, v0

    .line 291
    :goto_8
    if-nez v1, :cond_f

    .line 292
    .line 293
    if-eqz v2, :cond_e

    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mSetSurfacePositionConsumer:Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;

    .line 297
    .line 298
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    goto :goto_a

    .line 302
    :cond_f
    :goto_9
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mSetSurfacePositionConsumer:Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda0;

    .line 303
    .line 304
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(ILjava/util/function/Consumer;)V

    .line 305
    .line 306
    .line 307
    :cond_10
    :goto_a
    return-void
.end method

.method public final updateTrustedOverlay()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWindowTrustedOverlay()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object v0, v0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/InputWindowHandle;->setTrustedOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    .line 22
    .line 23
    return-void
.end method

.method public final updateUseForceLayoutInUdcCutoutIfNeeded()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    throw v1

    .line 28
    :cond_1
    throw v1

    .line 29
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final waitForSyncTransactionCommit(Landroid/util/ArraySet;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawHandlers:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda4;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-direct {v1, v2}, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string/jumbo v0, "waitForSyncTransactionCommit: skip, split_to_pip_bounds_change"

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "WindowManager"

    .line 53
    .line 54
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->waitForSyncTransactionCommit(Landroid/util/ArraySet;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final wouldBeVisibleIfPolicyIgnored()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    :cond_2
    const/4 v1, 0x1

    .line 57
    :cond_3
    :goto_0
    return v1
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
    iget v2, p0, Lcom/android/server/wm/WindowState;->mShowUserId:I

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    const-wide v0, 0x10900000003L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
