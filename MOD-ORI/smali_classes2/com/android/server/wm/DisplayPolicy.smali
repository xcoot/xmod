.class public final Lcom/android/server/wm/DisplayPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SHOW_TYPES_FOR_PANIC:I

.field public static final SHOW_TYPES_FOR_SWIPE:I

.field public static final USE_CACHED_INSETS_FOR_DISPLAY_SWITCH:Z

.field public static final sTmpClientFrames:Landroid/window/ClientWindowFrames;

.field public static final sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

.field public static final sTmpRect:Landroid/graphics/Rect;

.field public static final sTmpRect2:Landroid/graphics/Rect;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAllowLockscreenWhenOn:Z

.field public final mAppTransitionListener:Lcom/android/server/wm/DisplayPolicy$2;

.field public volatile mAwake:Z

.field public mBottomGestureHost:Lcom/android/server/wm/WindowState;

.field public mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

.field public mCanSystemBarsBeShownByUser:Z

.field public final mCarDockEnablesAccelerometer:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserResources:Landroid/content/res/Resources;

.field public final mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

.field public final mDeskDockEnablesAccelerometer:Z

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public volatile mDockMode:I

.field public mDreamingLockscreen:Z

.field public mEdgeEnabled:Z

.field public final mExt:Lcom/android/server/wm/DisplayPolicyExt;

.field public mFocusedApp:Ljava/lang/String;

.field public mFocusedWindow:Lcom/android/server/wm/WindowState;

.field public final mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

.field public mForceShowNavigationBarEnabled:Z

.field public mForciblyShownTypes:I

.field public mFreeformTaskSurfaceOverlappingWithNavBar:Z

.field public final mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field public final mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

.field public volatile mHasNavigationBar:Z

.field public volatile mHdmiPlugged:Z

.field public final mHiddenNavPanic:Lcom/android/server/wm/DisplayPolicy$4;

.field public mImeInsetsConsumed:Z

.field public mImmersiveConfirmationWindowExists:Z

.field public final mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

.field public mImmersiveTaskId:I

.field public final mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

.field public mIsCaptionImmersiveMode:Z

.field public mIsFreeformWindowOverlappingWithNavBar:Z

.field public mIsImmersiveMode:Z

.field public mIsKnoxZtStarted:Z

.field public mIsPipWindowOverlappingWithNavBar:Z

.field public mIsResizingByDivider:Z

.field public mIsVisibleBySwipe:Z

.field public volatile mKeyguardDrawComplete:Z

.field public mLastAppearance:I

.field public mLastBehavior:I

.field public mLastDisableFlags:I

.field public mLastFocusIsFullscreen:Z

.field public mLastFocusedWindow:Lcom/android/server/wm/WindowState;

.field public mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

.field public mLastRequestedVisibleTypes:I

.field public mLastShowingDream:Z

.field public mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field public mLeftGestureHost:Lcom/android/server/wm/WindowState;

.field public mLeftGestureInset:I

.field public final mLetterboxDetails:Ljava/util/ArrayList;

.field public volatile mLidState:I

.field public final mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

.field public mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

.field public mNavBarOpacityMode:I

.field public mNavigationBar:Lcom/android/server/wm/WindowState;

.field public volatile mNavigationBarAlwaysShowOnSideGesture:Z

.field public volatile mNavigationBarCanMove:Z

.field public mNavigationBarPosition:I

.field public volatile mNotificationShade:Lcom/android/server/wm/WindowState;

.field public final mPanicThresholdMs:J

.field public mPanicTime:J

.field public mPendingPanicGestureUptime:J

.field public volatile mPersistentVrModeEnabled:Z

.field public mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field public final mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

.field public final mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

.field public mRemoteInsetsControllerControlsSystemBars:Z

.field public mRightGestureHost:Lcom/android/server/wm/WindowState;

.field public mRightGestureInset:I

.field public volatile mScreenOnEarly:Z

.field public volatile mScreenOnFully:Z

.field public volatile mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field public final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mServiceAcquireLock:Ljava/lang/Object;

.field public mShouldAttachNavBarToAppDuringTransition:Z

.field public mShowingDream:Z

.field public mSkipTransferTouchToStatusBar:Z

.field public mStatusBar:Lcom/android/server/wm/WindowState;

.field public final mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

.field public final mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

.field public final mStatusBarBackgroundWindows:Ljava/util/ArrayList;

.field public final mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public final mSystemBarColorApps:Landroid/util/ArraySet;

.field public final mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

.field public mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

.field public mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/DisplayPolicy$5;

.field public final mTmpFrame:Landroid/graphics/Rect;

.field public mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field public mTopGestureHost:Lcom/android/server/wm/WindowState;

.field public mTopIsFullscreen:Z

.field public mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

.field public mTouchEventViewHash:I

.field public mTransientWindowState:Lcom/android/server/wm/WindowState;

.field public final mUiContext:Landroid/content/Context;

.field public mWasStatusInvisible:Z

.field public final mWindowBounds:Landroid/graphics/Rect;

.field public final mWindowLayout:Landroid/view/WindowLayout;

.field public volatile mWindowManagerDrawComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    or-int/2addr v0, v1

    .line 10
    sput v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:I

    .line 11
    .line 12
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sput v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:I

    .line 17
    .line 18
    const-string/jumbo v0, "persist.wm.debug.cached_insets_switch"

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sput-boolean v0, Lcom/android/server/wm/DisplayPolicy;->USE_CACHED_INSETS_FOR_DISPLAY_SWITCH:Z

    .line 27
    .line 28
    new-instance v0, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 34
    .line 35
    new-instance v0, Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    .line 41
    .line 42
    new-instance v0, Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 48
    .line 49
    new-instance v0, Landroid/window/ClientWindowFrames;

    .line 50
    .line 51
    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 19
    .line 20
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    iput v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 24
    .line 25
    new-instance v3, Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    .line 31
    .line 32
    new-instance v3, Landroid/util/ArraySet;

    .line 33
    .line 34
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    .line 38
    .line 39
    new-instance v3, Landroid/util/ArraySet;

    .line 40
    .line 41
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    .line 45
    .line 46
    new-instance v3, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance v3, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    .line 59
    .line 60
    new-instance v3, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iput v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastRequestedVisibleTypes:I

    .line 72
    .line 73
    new-instance v3, Landroid/graphics/Rect;

    .line 74
    .line 75
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 79
    .line 80
    new-instance v3, Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    .line 86
    .line 87
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 88
    .line 89
    new-instance v3, Landroid/view/WindowLayout;

    .line 90
    .line 91
    invoke-direct {v3}, Landroid/view/WindowLayout;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    .line 95
    .line 96
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 97
    .line 98
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsKnoxZtStarted:Z

    .line 99
    .line 100
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventView:Lcom/android/server/knox/zt/usertrust/TouchEventView;

    .line 101
    .line 102
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTouchEventViewHash:I

    .line 103
    .line 104
    new-instance v3, Landroid/graphics/Rect;

    .line 105
    .line 106
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    .line 110
    .line 111
    new-instance v3, Landroid/graphics/Rect;

    .line 112
    .line 113
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowBounds:Landroid/graphics/Rect;

    .line 117
    .line 118
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsCaptionImmersiveMode:Z

    .line 119
    .line 120
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWasStatusInvisible:Z

    .line 121
    .line 122
    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveTaskId:I

    .line 123
    .line 124
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$4;

    .line 125
    .line 126
    invoke-direct {v0, p0}, Lcom/android/server/wm/DisplayPolicy$4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Lcom/android/server/wm/DisplayPolicy$4;

    .line 130
    .line 131
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 132
    .line 133
    iget-boolean v0, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 134
    .line 135
    if-eqz v0, :cond_0

    .line 136
    .line 137
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    iget-object v3, p2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 143
    .line 144
    invoke-virtual {v0, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 149
    .line 150
    iget-boolean v3, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 151
    .line 152
    if-eqz v3, :cond_1

    .line 153
    .line 154
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 155
    .line 156
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_1
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 160
    .line 161
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 162
    .line 163
    iget v4, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 164
    .line 165
    invoke-virtual {v3, v4}, Landroid/app/ActivityThread;->getSystemUiContext(I)Landroid/app/ContextImpl;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    :goto_1
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 170
    .line 171
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 172
    .line 173
    new-instance v4, Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 174
    .line 175
    invoke-direct {v4, p2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 176
    .line 177
    .line 178
    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 179
    .line 180
    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 181
    .line 182
    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 183
    .line 184
    new-instance v4, Lcom/android/server/wm/DisplayPolicyExt;

    .line 185
    .line 186
    invoke-direct {v4, v0, p1, p0}, Lcom/android/server/wm/DisplayPolicyExt;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayPolicy;)V

    .line 187
    .line 188
    .line 189
    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 190
    .line 191
    iget v4, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    const v6, 0x111006f

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    .line 205
    .line 206
    const v6, 0x1110137

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    iput-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    .line 214
    .line 215
    const v6, 0x1110006

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    const/4 v7, 0x1

    .line 223
    if-eqz v6, :cond_2

    .line 224
    .line 225
    const v6, 0x111020b

    .line 226
    .line 227
    .line 228
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    if-eqz v6, :cond_3

    .line 233
    .line 234
    :cond_2
    move v1, v7

    .line 235
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCanSystemBarsBeShownByUser:Z

    .line 236
    .line 237
    const v1, 0x10e00b9

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    int-to-long v5, v1

    .line 245
    iput-wide v5, p0, Lcom/android/server/wm/DisplayPolicy;->mPanicThresholdMs:J

    .line 246
    .line 247
    const-string v1, "accessibility"

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 254
    .line 255
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 256
    .line 257
    iget-boolean v1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 258
    .line 259
    if-nez v1, :cond_4

    .line 260
    .line 261
    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 262
    .line 263
    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 264
    .line 265
    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 266
    .line 267
    :cond_4
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    new-instance v5, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 276
    .line 277
    invoke-direct {v5, p0, v1}, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V

    .line 278
    .line 279
    .line 280
    iput-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 281
    .line 282
    sget-boolean v6, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    .line 283
    .line 284
    if-nez v6, :cond_5

    .line 285
    .line 286
    new-instance v7, Lcom/android/server/wm/DisplayPolicy$1;

    .line 287
    .line 288
    invoke-direct {v7, p0}, Lcom/android/server/wm/DisplayPolicy$1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 289
    .line 290
    .line 291
    new-instance v8, Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 292
    .line 293
    invoke-direct {v8, v3, v5, v7}, Lcom/android/server/wm/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayPolicy$PolicyHandler;Lcom/android/server/wm/DisplayPolicy$1;)V

    .line 294
    .line 295
    .line 296
    iput-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 297
    .line 298
    new-instance v7, Landroid/view/TwoFingerSwipeGestureDetector;

    .line 299
    .line 300
    new-instance v9, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda1;

    .line 301
    .line 302
    invoke-direct {v9, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 303
    .line 304
    .line 305
    const-string v10, "DP"

    .line 306
    .line 307
    invoke-direct {v7, v3, v9, v10}, Landroid/view/TwoFingerSwipeGestureDetector;-><init>(Landroid/content/Context;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p2, v7}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2, v8}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 314
    .line 315
    .line 316
    :cond_5
    new-instance v3, Lcom/android/server/wm/DisplayPolicy$2;

    .line 317
    .line 318
    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/DisplayPolicy$2;-><init>(Lcom/android/server/wm/DisplayPolicy;I)V

    .line 319
    .line 320
    .line 321
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mAppTransitionListener:Lcom/android/server/wm/DisplayPolicy$2;

    .line 322
    .line 323
    iget-object v4, p2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 324
    .line 325
    invoke-virtual {v4, v3}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 326
    .line 327
    .line 328
    iget-object v4, p2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 329
    .line 330
    invoke-virtual {v4, v3}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 331
    .line 332
    .line 333
    if-nez v6, :cond_7

    .line 334
    .line 335
    sget-boolean v3, Landroid/view/ViewRootImpl;->CLIENT_IMMERSIVE_CONFIRMATION:Z

    .line 336
    .line 337
    if-eqz v3, :cond_6

    .line 338
    .line 339
    goto :goto_2

    .line 340
    :cond_6
    new-instance v3, Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 341
    .line 342
    iget-boolean v4, p1, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    .line 343
    .line 344
    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/wm/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 345
    .line 346
    .line 347
    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 348
    .line 349
    goto :goto_3

    .line 350
    :cond_7
    :goto_2
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 351
    .line 352
    :goto_3
    iget-boolean v1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 353
    .line 354
    if-eqz v1, :cond_8

    .line 355
    .line 356
    new-instance v2, Lcom/android/internal/util/ScreenshotHelper;

    .line 357
    .line 358
    invoke-direct {v2, v0}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    .line 359
    .line 360
    .line 361
    :cond_8
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 362
    .line 363
    iget-boolean v1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 364
    .line 365
    if-eqz v1, :cond_9

    .line 366
    .line 367
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    const v2, 0x1110227

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 375
    .line 376
    .line 377
    move-result v1

    .line 378
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 379
    .line 380
    goto :goto_4

    .line 381
    :cond_9
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 386
    .line 387
    :goto_4
    new-instance v1, Lcom/android/server/wm/RefreshRatePolicy;

    .line 388
    .line 389
    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 390
    .line 391
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    .line 392
    .line 393
    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/wm/RefreshRatePolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateDenylist;)V

    .line 394
    .line 395
    .line 396
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 397
    .line 398
    new-instance p1, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 399
    .line 400
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 401
    .line 402
    .line 403
    move-result-object p2

    .line 404
    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;

    .line 405
    .line 406
    const/4 v2, 0x0

    .line 407
    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayPolicy;I)V

    .line 408
    .line 409
    .line 410
    invoke-direct {p1, v5, p2, v0, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 411
    .line 412
    .line 413
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 414
    .line 415
    new-instance p2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;

    .line 416
    .line 417
    const/4 v1, 0x0

    .line 418
    invoke-direct {p2, p1, v1}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;I)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v5, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    .line 423
    .line 424
    new-instance p1, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    .line 425
    .line 426
    invoke-direct {p1, v5, v0}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 427
    .line 428
    .line 429
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    .line 430
    .line 431
    new-instance p2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;

    .line 432
    .line 433
    const/4 v0, 0x3

    .line 434
    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayPolicy;I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p1, p2}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->setOnChangeRunnable(Ljava/lang/Runnable;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p1}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->isEnabled()Z

    .line 441
    .line 442
    .line 443
    move-result p2

    .line 444
    iput-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    .line 445
    .line 446
    new-instance p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;

    .line 447
    .line 448
    const/4 p2, 0x0

    .line 449
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v5, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 453
    .line 454
    .line 455
    return-void
.end method

.method public static calculateInsetsFrame(Landroid/graphics/Rect;Landroid/graphics/Insets;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p1, Landroid/graphics/Insets;->left:I

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget p1, p0, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    add-int/2addr p1, v0

    .line 11
    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget v0, p1, Landroid/graphics/Insets;->top:I

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget p1, p0, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    add-int/2addr p1, v0

    .line 21
    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget v0, p1, Landroid/graphics/Insets;->right:I

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget p1, p0, Landroid/graphics/Rect;->right:I

    .line 29
    .line 30
    sub-int/2addr p1, v0

    .line 31
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 39
    .line 40
    sub-int/2addr v0, p1

    .line 41
    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public static chooseNavigationBackgroundWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-static {p0}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RECENTS_BUG_FIX:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 14
    .line 15
    iget-boolean v0, v0, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    .line 16
    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x4

    .line 20
    if-ne p2, v0, :cond_3

    .line 21
    .line 22
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 25
    .line 26
    const/high16 v0, -0x80000000

    .line 27
    .line 28
    and-int/2addr p2, v0

    .line 29
    if-eqz p2, :cond_3

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 38
    .line 39
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 40
    .line 41
    invoke-static {p2}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_1
    return-object p0

    .line 49
    :cond_2
    return-object p1

    .line 50
    :cond_3
    return-object p0
.end method

.method public static drawsBarBackground(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 6
    .line 7
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 8
    .line 9
    const/high16 v2, -0x80000000

    .line 10
    .line 11
    and-int/2addr v1, v2

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move v1, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v1, v2

    .line 18
    :goto_0
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 19
    .line 20
    const v3, 0x8000

    .line 21
    .line 22
    .line 23
    and-int/2addr p0, v3

    .line 24
    if-eqz p0, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    if-eqz v1, :cond_3

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_3
    move v0, v2

    .line 31
    :goto_1
    return v0
.end method

.method public static intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    and-int/2addr v3, p2

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {p0, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 p0, 0x0

    .line 42
    return p0
.end method

.method public static isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

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
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFreeformStashed()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStashedBounds()Landroid/graphics/Rect;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-static {p0, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    :cond_1
    return v1

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 78
    .line 79
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 80
    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 91
    .line 92
    :goto_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-static {p0, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    return p0

    .line 101
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    goto :goto_1

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 113
    .line 114
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-static {v0, p0, v1}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    return p0
.end method


# virtual methods
.method public final addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 9

    .line 1
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2
    .line 3
    const/16 v1, 0x7d0

    .line 4
    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    .line 7
    const/16 v1, 0x7e3

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0x7f8

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :pswitch_1
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    :pswitch_2
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 26
    .line 27
    :goto_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 28
    .line 29
    const/high16 v1, 0x20000

    .line 30
    .line 31
    and-int/2addr v0, v1

    .line 32
    const/4 v1, 0x1

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveConfirmationWindowExists:Z

    .line 36
    .line 37
    :cond_3
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 38
    .line 39
    if-eqz v0, :cond_6

    .line 40
    .line 41
    array-length v0, v0

    .line 42
    sub-int/2addr v0, v1

    .line 43
    :goto_1
    if-ltz v0, :cond_6

    .line 44
    .line 45
    iget-object v2, p2, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 46
    .line 47
    aget-object v2, v2, v0

    .line 48
    .line 49
    new-instance v3, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    const/4 v4, -0x1

    .line 52
    invoke-direct {v3, p1, v0, v4}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowState;II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/view/InsetsFrameProvider;->getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    if-eqz v4, :cond_4

    .line 60
    .line 61
    new-instance v5, Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 64
    .line 65
    .line 66
    array-length v6, v4

    .line 67
    sub-int/2addr v6, v1

    .line 68
    :goto_2
    if-ltz v6, :cond_5

    .line 69
    .line 70
    aget-object v7, v4, v6

    .line 71
    .line 72
    invoke-virtual {v7}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->getWindowType()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    new-instance v8, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    invoke-direct {v8, p1, v0, v6}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowState;II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v6, v6, -0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    const/4 v5, 0x0

    .line 88
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 89
    .line 90
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/view/InsetsFrameProvider;->getId()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-virtual {v2}, Landroid/view/InsetsFrameProvider;->getType()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/InsetsStateController;->getOrCreateSourceProvider(II)Lcom/android/server/wm/InsetsSourceProvider;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    iget-object v6, v4, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 105
    .line 106
    invoke-virtual {v2}, Landroid/view/InsetsFrameProvider;->getFlags()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-virtual {v6, v2}, Landroid/view/InsetsSource;->setFlags(I)Landroid/view/InsetsSource;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, p1, v3, v5}, Lcom/android/server/wm/InsetsSourceProvider;->setWindowContainer(Lcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriFunction;Landroid/util/SparseArray;)V

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    .line 117
    .line 118
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    add-int/lit8 v0, v0, -0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 130
    .line 131
    const/16 v2, 0x7e8

    .line 132
    .line 133
    if-eq v0, v2, :cond_a

    .line 134
    .line 135
    const/16 p2, 0x833

    .line 136
    .line 137
    if-eq v0, p2, :cond_9

    .line 138
    .line 139
    const/16 p2, 0x97e

    .line 140
    .line 141
    if-eq v0, p2, :cond_8

    .line 142
    .line 143
    const/16 p2, 0x97f

    .line 144
    .line 145
    if-eq v0, p2, :cond_7

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_7
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_8
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayPolicyExt;->notifyRequestedGameToolsWin(Z)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_9
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 158
    .line 159
    if-eqz p2, :cond_d

    .line 160
    .line 161
    iput-object p1, p2, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_a
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 165
    .line 166
    const-string v2, "com.samsung.android.spay"

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_b

    .line 173
    .line 174
    iget-object p2, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 175
    .line 176
    const-string v0, "com.samsung.android.rajaampat"

    .line 177
    .line 178
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    if-eqz p2, :cond_c

    .line 183
    .line 184
    :cond_b
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    .line 185
    .line 186
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    if-eqz p2, :cond_d

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    iget-object p2, p2, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 197
    .line 198
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getType()I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-ne p2, v0, :cond_d

    .line 207
    .line 208
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 209
    .line 210
    iput-object p1, p2, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 211
    .line 212
    :cond_d
    :goto_3
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 213
    .line 214
    if-eqz p2, :cond_11

    .line 215
    .line 216
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 217
    .line 218
    iget-object v0, p2, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    .line 219
    .line 220
    if-nez v0, :cond_e

    .line 221
    .line 222
    iget-object v0, p2, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    .line 223
    .line 224
    if-eqz v0, :cond_11

    .line 225
    .line 226
    :cond_e
    iget-boolean p2, p2, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 227
    .line 228
    if-eqz p2, :cond_11

    .line 229
    .line 230
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 231
    .line 232
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 233
    .line 234
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    .line 235
    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 240
    .line 241
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 242
    .line 243
    .line 244
    move-result p2

    .line 245
    if-nez p2, :cond_11

    .line 246
    .line 247
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 248
    .line 249
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 250
    .line 251
    if-eq v0, v1, :cond_11

    .line 252
    .line 253
    const/4 v1, 0x3

    .line 254
    if-eq v0, v1, :cond_11

    .line 255
    .line 256
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 257
    .line 258
    and-int/lit8 p2, p2, 0x2

    .line 259
    .line 260
    if-eqz p2, :cond_11

    .line 261
    .line 262
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 263
    .line 264
    const/4 v0, 0x0

    .line 265
    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    if-nez p2, :cond_f

    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_f
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    .line 273
    .line 274
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-eqz v0, :cond_10

    .line 279
    .line 280
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 281
    .line 282
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 283
    .line 284
    and-int/lit8 v1, v1, 0x2

    .line 285
    .line 286
    iput v1, p2, Lcom/android/server/wm/WindowState;->mOriginalDimBehind:I

    .line 287
    .line 288
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 289
    .line 290
    iput v1, p2, Lcom/android/server/wm/WindowState;->mOriginalDimAmount:F

    .line 291
    .line 292
    iget-wide v0, v0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 293
    .line 294
    iput-wide v0, p2, Lcom/android/server/wm/WindowState;->mOriginalDimDuration:J

    .line 295
    .line 296
    :cond_10
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    .line 297
    .line 298
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    iget-object p1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 302
    .line 303
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/PopOverController;->updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 304
    .line 305
    .line 306
    :cond_11
    :goto_4
    return-void

    .line 307
    :pswitch_data_0
    .packed-switch 0xa3d
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 8

    .line 1
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/16 v3, 0x10

    .line 6
    .line 7
    if-eq v0, v2, :cond_5

    .line 8
    .line 9
    const/16 v2, 0x7dd

    .line 10
    .line 11
    if-eq v0, v2, :cond_4

    .line 12
    .line 13
    const/16 v2, 0x7df

    .line 14
    .line 15
    if-eq v0, v2, :cond_3

    .line 16
    .line 17
    const/16 v2, 0x7d5

    .line 18
    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    const/16 v1, 0x7d6

    .line 22
    .line 23
    if-eq v0, v1, :cond_3

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_0
    iget-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 28
    .line 29
    const-wide/16 v6, 0x0

    .line 30
    .line 31
    cmp-long v0, v4, v6

    .line 32
    .line 33
    const-wide/16 v6, 0x1004

    .line 34
    .line 35
    if-ltz v0, :cond_1

    .line 36
    .line 37
    cmp-long v0, v4, v6

    .line 38
    .line 39
    if-lez v0, :cond_2

    .line 40
    .line 41
    :cond_1
    iput-wide v6, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 44
    .line 45
    iget-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 46
    .line 47
    long-to-int v2, v4

    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    int-to-long v0, v0

    .line 53
    iput-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 54
    .line 55
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 56
    .line 57
    or-int/2addr v0, v3

    .line 58
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :cond_3
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 63
    .line 64
    or-int/lit8 v0, v0, 0x18

    .line 65
    .line 66
    const v1, -0x40001

    .line 67
    .line 68
    .line 69
    and-int/2addr v0, v1

    .line 70
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    const/4 v0, 0x3

    .line 74
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 84
    .line 85
    if-eqz v0, :cond_7

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 94
    .line 95
    const v2, 0x8000

    .line 96
    .line 97
    .line 98
    and-int/2addr v0, v2

    .line 99
    if-eqz v0, :cond_7

    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_6

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v1, "Illegal attributes: Main window of "

    .line 113
    .line 114
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p1, " that isn\'t translucent trying to fit insets. fitInsetsTypes="

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-static {p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_8

    .line 155
    .line 156
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 157
    .line 158
    and-int/2addr v0, v1

    .line 159
    iput v0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimBehind:I

    .line 160
    .line 161
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 162
    .line 163
    iput v0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimAmount:F

    .line 164
    .line 165
    iget-wide v0, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 166
    .line 167
    iput-wide v0, p1, Lcom/android/server/wm/WindowState;->mOriginalDimDuration:J

    .line 168
    .line 169
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    .line 172
    .line 173
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/PopOverController;->updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 174
    .line 175
    .line 176
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 177
    .line 178
    and-int/lit8 v0, v0, -0x21

    .line 179
    .line 180
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 181
    .line 182
    :cond_8
    :goto_1
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 183
    .line 184
    iget v1, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 185
    .line 186
    and-int/lit16 v2, v1, 0x200

    .line 187
    .line 188
    if-eqz v2, :cond_9

    .line 189
    .line 190
    or-int/2addr v1, v3

    .line 191
    iput v1, v0, Landroid/view/InsetsFlags;->appearance:I

    .line 192
    .line 193
    :cond_9
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 194
    .line 195
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_a

    .line 200
    .line 201
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 202
    .line 203
    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mMaximumObscuringOpacityForTouch:F

    .line 204
    .line 205
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 206
    .line 207
    cmpl-float v1, v1, v0

    .line 208
    .line 209
    if-lez v1, :cond_a

    .line 210
    .line 211
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 212
    .line 213
    and-int/2addr v1, v3

    .line 214
    if-eqz v1, :cond_a

    .line 215
    .line 216
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isTrustedOverlay()Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-nez v1, :cond_a

    .line 221
    .line 222
    iget-object v1, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 223
    .line 224
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 225
    .line 226
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 231
    .line 232
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    const-string v2, "App %s has a system alert window (type = %d) with FLAG_NOT_TOUCHABLE and LayoutParams.alpha = %.2f > %.2f, setting alpha to %.2f to let touches pass through (if this is isn\'t desirable, remove flag FLAG_NOT_TOUCHABLE)."

    .line 249
    .line 250
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    const-string v2, "WindowManager"

    .line 255
    .line 256
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 260
    .line 261
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 262
    .line 263
    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 264
    .line 265
    :cond_a
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 266
    .line 267
    iget-boolean p1, p1, Lcom/android/server/wm/Session;->mCanSetUnrestrictedGestureExclusion:Z

    .line 268
    .line 269
    if-nez p1, :cond_b

    .line 270
    .line 271
    iget p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 272
    .line 273
    and-int/lit8 p1, p1, -0x21

    .line 274
    .line 275
    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 276
    .line 277
    :cond_b
    iget-object p1, p2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 278
    .line 279
    iget v0, p1, Landroid/view/InsetsFlags;->appearance:I

    .line 280
    .line 281
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 282
    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 287
    .line 288
    const/high16 v1, 0x100000

    .line 289
    .line 290
    and-int/2addr p0, v1

    .line 291
    const/4 v1, 0x0

    .line 292
    if-eqz p0, :cond_d

    .line 293
    .line 294
    invoke-static {p2}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z

    .line 295
    .line 296
    .line 297
    move-result p0

    .line 298
    if-nez p0, :cond_d

    .line 299
    .line 300
    iget p0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 301
    .line 302
    const/high16 v2, -0x80000000

    .line 303
    .line 304
    and-int/2addr v2, p0

    .line 305
    if-eqz v2, :cond_c

    .line 306
    .line 307
    const/high16 v2, 0x8000000

    .line 308
    .line 309
    and-int/2addr v2, p0

    .line 310
    if-eqz v2, :cond_c

    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_c
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 314
    .line 315
    invoke-static {p2, p0, v1, v1}, Landroid/view/InsetsState;->clearsCompatInsets(IIII)Z

    .line 316
    .line 317
    .line 318
    move-result p0

    .line 319
    if-eqz p0, :cond_e

    .line 320
    .line 321
    :cond_d
    :goto_2
    move v3, v1

    .line 322
    :cond_e
    or-int p0, v0, v3

    .line 323
    .line 324
    iput p0, p1, Landroid/view/InsetsFlags;->appearance:I

    .line 325
    .line 326
    return-void
.end method

.method public final beginPostLayoutPolicyLw()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureHost:Lcom/android/server/wm/WindowState;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopGestureHost:Lcom/android/server/wm/WindowState;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureHost:Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureHost:Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarColorCheckedBounds:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundCheckedBounds:Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemBarColorApps:Landroid/util/ArraySet;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 48
    .line 49
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 52
    .line 53
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 56
    .line 57
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 58
    .line 59
    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 60
    .line 61
    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 62
    .line 63
    if-nez v3, :cond_2

    .line 64
    .line 65
    iget-object v3, v2, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 66
    .line 67
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 68
    .line 69
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 70
    .line 71
    iget-object v4, v3, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 72
    .line 73
    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const-string v5, "FreeformController"

    .line 80
    .line 81
    if-nez v4, :cond_0

    .line 82
    .line 83
    const-string v3, "Default display content is null"

    .line 84
    .line 85
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    iput-object v0, v3, Lcom/android/server/wm/FreeformController;->mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 90
    .line 91
    iput-object v0, v3, Lcom/android/server/wm/FreeformController;->mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 92
    .line 93
    new-instance v6, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;

    .line 94
    .line 95
    const/4 v7, 0x1

    .line 96
    invoke-direct {v6, v3, v7}, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/FreeformController;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 100
    .line 101
    .line 102
    iget-object v4, v3, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 103
    .line 104
    iget-object v6, v3, Lcom/android/server/wm/FreeformController;->mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 105
    .line 106
    const-string v7, ", new="

    .line 107
    .line 108
    if-eq v4, v6, :cond_1

    .line 109
    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v6, "beginPostLayoutPolicyLw: forceHideRequester changed, old="

    .line 113
    .line 114
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v6, v3, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 118
    .line 119
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v6, v3, Lcom/android/server/wm/FreeformController;->mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 126
    .line 127
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    iget-object v4, v3, Lcom/android/server/wm/FreeformController;->mTmpForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 138
    .line 139
    iput-object v4, v3, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 140
    .line 141
    invoke-virtual {v3, v1}, Lcom/android/server/wm/FreeformController;->setBlockToAddForceHideFreeformTasks(Z)V

    .line 142
    .line 143
    .line 144
    :cond_1
    iget-object v4, v3, Lcom/android/server/wm/FreeformController;->mForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 145
    .line 146
    iget-object v6, v3, Lcom/android/server/wm/FreeformController;->mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 147
    .line 148
    if-eq v4, v6, :cond_2

    .line 149
    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v6, "beginPostLayoutPolicyLw: forceHide minimize Requester changed, old="

    .line 153
    .line 154
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v6, v3, Lcom/android/server/wm/FreeformController;->mForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 158
    .line 159
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v6, v3, Lcom/android/server/wm/FreeformController;->mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 166
    .line 167
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    iget-object v4, v3, Lcom/android/server/wm/FreeformController;->mTmpForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 178
    .line 179
    iput-object v4, v3, Lcom/android/server/wm/FreeformController;->mForceHideMinimizeRequester:Lcom/android/server/wm/WindowState;

    .line 180
    .line 181
    :cond_2
    :goto_0
    iput-object v0, v2, Lcom/android/server/wm/DisplayPolicyExt;->mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 182
    .line 183
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 184
    .line 185
    if-eqz v2, :cond_4

    .line 186
    .line 187
    iget-object v3, v2, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 190
    .line 191
    .line 192
    iput-object v0, v2, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 193
    .line 194
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    .line 199
    .line 200
    if-nez v0, :cond_3

    .line 201
    .line 202
    iput-boolean v1, v2, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 203
    .line 204
    :cond_3
    iput-boolean v1, v2, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    .line 205
    .line 206
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    .line 207
    .line 208
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    .line 209
    .line 210
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mImeInsetsConsumed:Z

    .line 211
    .line 212
    return-void
.end method

.method public final finishPostLayoutPolicyLw()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 8
    .line 9
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->notifyKeyguardFlagsChanged()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 34
    .line 35
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 38
    .line 39
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x1

    .line 43
    if-nez v1, :cond_7

    .line 44
    .line 45
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 50
    .line 51
    iget-object v4, v1, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 52
    .line 53
    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 54
    .line 55
    iget-object v5, v5, Lcom/android/server/wm/RootWindowContainer;->mDefaultDisplay:Lcom/android/server/wm/DisplayContent;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    const/4 v6, 0x0

    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move-object v7, v6

    .line 70
    :goto_0
    if-eqz v7, :cond_3

    .line 71
    .line 72
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_3

    .line 77
    .line 78
    new-instance v7, Lcom/android/server/wm/FreeformController$$ExternalSyntheticLambda5;

    .line 79
    .line 80
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v7, v3}, Lcom/android/server/wm/DisplayArea;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    .line 90
    .line 91
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(ILcom/android/server/wm/ActivityRecord;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-object v4, v1, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 95
    .line 96
    if-nez v4, :cond_4

    .line 97
    .line 98
    iput-boolean v2, v1, Lcom/android/server/wm/FreeformController;->mIsForceHideWithoutAnimation:Z

    .line 99
    .line 100
    :cond_4
    if-eqz v4, :cond_6

    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_5

    .line 107
    .line 108
    iget-object v4, v1, Lcom/android/server/wm/FreeformController;->mForceHideFreeformRequester:Lcom/android/server/wm/WindowState;

    .line 109
    .line 110
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 111
    .line 112
    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 113
    .line 114
    const/16 v5, 0xa48

    .line 115
    .line 116
    if-ne v4, v5, :cond_6

    .line 117
    .line 118
    :cond_5
    move v4, v3

    .line 119
    goto :goto_1

    .line 120
    :cond_6
    move v4, v2

    .line 121
    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/server/wm/FreeformController;->setBlockToAddForceHideFreeformTasks(Z)V

    .line 122
    .line 123
    .line 124
    :cond_7
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 125
    .line 126
    if-eqz v1, :cond_d

    .line 127
    .line 128
    iget-boolean v4, v1, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    .line 129
    .line 130
    iget-object v5, v1, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 131
    .line 132
    if-eqz v4, :cond_8

    .line 133
    .line 134
    iget v4, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 135
    .line 136
    or-int/lit8 v4, v4, 0x4

    .line 137
    .line 138
    iput v4, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 139
    .line 140
    :cond_8
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    iget v4, v4, Lcom/samsung/android/cover/CoverState;->type:I

    .line 145
    .line 146
    packed-switch v4, :pswitch_data_0

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :pswitch_0
    invoke-virtual {v1}, Lcom/android/server/wm/CoverPolicy;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    if-eqz v4, :cond_d

    .line 155
    .line 156
    :try_start_0
    iget-object v6, v1, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 157
    .line 158
    if-eqz v6, :cond_9

    .line 159
    .line 160
    iget-boolean v6, v1, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 161
    .line 162
    if-nez v6, :cond_a

    .line 163
    .line 164
    invoke-interface {v4, v3}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    .line 165
    .line 166
    .line 167
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    and-int/lit8 v6, v4, 0x10

    .line 169
    .line 170
    if-eqz v6, :cond_b

    .line 171
    .line 172
    :try_start_1
    iput-boolean v3, v1, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 173
    .line 174
    iget-object v6, v1, Lcom/android/server/wm/CoverPolicy;->mHandler:Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;

    .line 175
    .line 176
    new-instance v7, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;

    .line 177
    .line 178
    invoke-direct {v7, v1}, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CoverPolicy;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :catch_0
    move-exception v1

    .line 186
    goto :goto_2

    .line 187
    :catch_1
    move-exception v1

    .line 188
    move v4, v2

    .line 189
    goto :goto_2

    .line 190
    :cond_9
    :try_start_2
    iget-boolean v6, v1, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 191
    .line 192
    if-eqz v6, :cond_a

    .line 193
    .line 194
    invoke-interface {v4, v2}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    .line 195
    .line 196
    .line 197
    move-result v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 198
    and-int/lit8 v6, v4, 0x20

    .line 199
    .line 200
    if-eqz v6, :cond_b

    .line 201
    .line 202
    :try_start_3
    iput-boolean v2, v1, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 203
    .line 204
    iget-object v6, v1, Lcom/android/server/wm/CoverPolicy;->mHandler:Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;

    .line 205
    .line 206
    new-instance v7, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;

    .line 207
    .line 208
    invoke-direct {v7, v1}, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CoverPolicy;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_a
    move v4, v2

    .line 216
    goto :goto_3

    .line 217
    :goto_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 218
    .line 219
    .line 220
    :cond_b
    :goto_3
    and-int/lit8 v1, v4, 0x1

    .line 221
    .line 222
    if-nez v1, :cond_c

    .line 223
    .line 224
    and-int/lit8 v1, v4, 0x2

    .line 225
    .line 226
    if-eqz v1, :cond_d

    .line 227
    .line 228
    :cond_c
    iget v1, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 229
    .line 230
    or-int/2addr v1, v3

    .line 231
    iput v1, v5, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 232
    .line 233
    :cond_d
    :goto_4
    iget v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    .line 234
    .line 235
    if-eqz v1, :cond_11

    .line 236
    .line 237
    new-instance v1, Landroid/graphics/Rect;

    .line 238
    .line 239
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 240
    .line 241
    .line 242
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    .line 243
    .line 244
    if-eqz v3, :cond_e

    .line 245
    .line 246
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    .line 251
    .line 252
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 253
    .line 254
    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 255
    .line 256
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 257
    .line 258
    .line 259
    :cond_e
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerVisible:Z

    .line 260
    .line 261
    if-ne v2, v3, :cond_f

    .line 262
    .line 263
    if-eqz v2, :cond_11

    .line 264
    .line 265
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    .line 266
    .line 267
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    if-nez v3, :cond_11

    .line 272
    .line 273
    :cond_f
    iput-boolean v2, v0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerVisible:Z

    .line 274
    .line 275
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    .line 276
    .line 277
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 278
    .line 279
    .line 280
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 281
    .line 282
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 287
    .line 288
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 289
    .line 290
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 291
    .line 292
    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 293
    .line 294
    iget-object v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 295
    .line 296
    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 297
    .line 298
    if-eqz v4, :cond_10

    .line 299
    .line 300
    :try_start_4
    iget-object v3, v3, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 301
    .line 302
    iget-object v3, v3, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 303
    .line 304
    invoke-interface {v3, v0, v2, v1}, Lcom/android/internal/statusbar/IStatusBar;->notifySamsungPayInfo(IZLandroid/graphics/Rect;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 305
    .line 306
    .line 307
    :catch_2
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string/jumbo v3, "notifySamsungPayInfo: "

    .line 310
    .line 311
    .line 312
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v2, ", "

    .line 319
    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    const-string v1, "DisplayPolicyExt"

    .line 331
    .line 332
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 336
    .line 337
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 338
    .line 339
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 340
    .line 341
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 342
    .line 343
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 344
    .line 345
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 346
    .line 347
    if-eqz p0, :cond_12

    .line 348
    .line 349
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 350
    .line 351
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_12
    iget-object p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    .line 360
    .line 361
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    :goto_5
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    nop

    .line 373
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move-object p0, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 26
    .line 27
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 30
    .line 31
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    new-instance v3, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object v4, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 47
    .line 48
    iget-object v5, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const/4 v6, 0x1

    .line 58
    sub-int/2addr v5, v6

    .line 59
    :goto_1
    if-ltz v5, :cond_7

    .line 60
    .line 61
    invoke-virtual {p1, v5}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getType()I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-eq v8, p2, :cond_2

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-ne p2, v8, :cond_6

    .line 77
    .line 78
    iget-object v8, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 79
    .line 80
    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v0, v6}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    iget v9, v8, Landroid/graphics/Insets;->left:I

    .line 88
    .line 89
    if-lez v9, :cond_3

    .line 90
    .line 91
    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 92
    .line 93
    iget v9, v2, Landroid/graphics/Insets;->left:I

    .line 94
    .line 95
    add-int/2addr v9, v8

    .line 96
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    iput v8, v1, Landroid/graphics/Rect;->left:I

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    iget v9, v8, Landroid/graphics/Insets;->top:I

    .line 104
    .line 105
    if-lez v9, :cond_4

    .line 106
    .line 107
    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 108
    .line 109
    iget v9, v2, Landroid/graphics/Insets;->top:I

    .line 110
    .line 111
    add-int/2addr v9, v8

    .line 112
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    iput v8, v1, Landroid/graphics/Rect;->top:I

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    iget v9, v8, Landroid/graphics/Insets;->right:I

    .line 120
    .line 121
    if-lez v9, :cond_5

    .line 122
    .line 123
    iget v8, v0, Landroid/graphics/Rect;->right:I

    .line 124
    .line 125
    iget v9, v2, Landroid/graphics/Insets;->right:I

    .line 126
    .line 127
    sub-int v9, v8, v9

    .line 128
    .line 129
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    iput v8, v1, Landroid/graphics/Rect;->right:I

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    iget v8, v8, Landroid/graphics/Insets;->bottom:I

    .line 137
    .line 138
    if-lez v8, :cond_6

    .line 139
    .line 140
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 141
    .line 142
    iget v9, v2, Landroid/graphics/Insets;->bottom:I

    .line 143
    .line 144
    sub-int v9, v8, v9

    .line 145
    .line 146
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 151
    .line 152
    :cond_6
    :goto_2
    invoke-virtual {v7}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 163
    .line 164
    .line 165
    :goto_3
    add-int/lit8 v5, v5, -0x1

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_7
    return-object v3
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public getCurrentUserResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 9
    .line 10
    return-object p0
.end method

.method public final getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 4
    .line 5
    aget-object v0, v0, p1

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNeedUpdate:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->update(IIILcom/android/server/wm/DisplayContent;)Landroid/view/InsetsState;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public final getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

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
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-object p0

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy;->getBarContentFrameForWindow(Lcom/android/server/wm/WindowState;I)Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    if-eqz p1, :cond_8

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 22
    .line 23
    iget-object v1, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    new-instance v1, Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    .line 33
    .line 34
    :cond_1
    iget-object v1, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    .line 35
    .line 36
    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget-object v1, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p2, Lcom/android/server/wm/UdcCutoutPolicy;->mTmpBarContentFrame:Landroid/graphics/Rect;

    .line 49
    .line 50
    :cond_2
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/wm/AppCompatController;->mAppCompatLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->isRunning()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_8

    .line 61
    .line 62
    iget-object p1, p1, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    .line 65
    .line 66
    array-length p2, p1

    .line 67
    const/4 v1, 0x0

    .line 68
    move v2, v1

    .line 69
    move v3, v2

    .line 70
    move v4, v3

    .line 71
    :goto_0
    if-ge v2, p2, :cond_6

    .line 72
    .line 73
    aget-object v5, p1, v2

    .line 74
    .line 75
    iget-object v5, v5, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    .line 76
    .line 77
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_3

    .line 82
    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-static {v5, p0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-nez v6, :cond_4

    .line 91
    .line 92
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    invoke-virtual {v5, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eqz v5, :cond_5

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    add-int/2addr v3, v4

    .line 106
    array-length p0, p1

    .line 107
    if-ne v3, p0, :cond_7

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_7
    move v0, v1

    .line 111
    :cond_8
    :goto_2
    return v0
.end method

.method public final isImmersiveMode(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/16 v2, 0x7d0

    .line 20
    .line 21
    invoke-static {v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-gt v1, v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 37
    .line 38
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->hasHiddenSources(I)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :cond_2
    :goto_0
    return v0
.end method

.method public final layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
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
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_WALLPAPER_POLICY:Z

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->canShowInCurrentDevice()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 48
    .line 49
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move-object/from16 v3, p3

    .line 55
    .line 56
    :goto_1
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 57
    .line 58
    iget v5, v3, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    sget-object v4, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 70
    .line 71
    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    move-object v2, v5

    .line 75
    :goto_2
    iput-object v2, v4, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 76
    .line 77
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 78
    .line 79
    const/4 v15, 0x1

    .line 80
    const/4 v14, 0x0

    .line 81
    if-ne v7, v2, :cond_5

    .line 82
    .line 83
    move v2, v15

    .line 84
    goto :goto_3

    .line 85
    :cond_5
    move v2, v14

    .line 86
    :goto_3
    const/4 v6, -0x1

    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    iget v8, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 90
    .line 91
    move v12, v8

    .line 92
    goto :goto_4

    .line 93
    :cond_6
    move v12, v6

    .line 94
    :goto_4
    if-eqz v2, :cond_7

    .line 95
    .line 96
    iget v2, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 97
    .line 98
    move v13, v2

    .line 99
    goto :goto_5

    .line 100
    :cond_7
    move v13, v6

    .line 101
    :goto_5
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowBounds:Landroid/graphics/Rect;

    .line 102
    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_11

    .line 115
    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-nez v2, :cond_8

    .line 121
    .line 122
    goto/16 :goto_8

    .line 123
    .line 124
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    iget-object v8, v6, Lcom/android/server/wm/DisplayContent;->mImeInputTarget:Lcom/android/server/wm/InputTarget;

    .line 129
    .line 130
    if-eqz v8, :cond_9

    .line 131
    .line 132
    invoke-interface {v8}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    :cond_9
    if-eqz v5, :cond_b

    .line 137
    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-eqz v8, :cond_a

    .line 143
    .line 144
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    if-ne v2, v5, :cond_b

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_a
    if-ne v1, v5, :cond_b

    .line 152
    .line 153
    :goto_6
    move v2, v15

    .line 154
    goto :goto_7

    .line 155
    :cond_b
    move v2, v14

    .line 156
    :goto_7
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 157
    .line 158
    if-eqz v2, :cond_10

    .line 159
    .line 160
    if-eqz v5, :cond_10

    .line 161
    .line 162
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_10

    .line 167
    .line 168
    iget-object v2, v6, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 169
    .line 170
    iget-object v2, v2, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 171
    .line 172
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    .line 173
    .line 174
    invoke-virtual {v2}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 179
    .line 180
    .line 181
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    .line 182
    .line 183
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    or-int/2addr v8, v9

    .line 192
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    or-int/2addr v8, v9

    .line 197
    invoke-virtual {v2, v5, v8, v14}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 209
    .line 210
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    .line 211
    .line 212
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 213
    .line 214
    sub-int/2addr v2, v5

    .line 215
    if-lez v2, :cond_11

    .line 216
    .line 217
    iget-object v5, v6, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    .line 218
    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 224
    .line 225
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mTmpFrame:Landroid/graphics/Rect;

    .line 226
    .line 227
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 228
    .line 229
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    if-nez v9, :cond_c

    .line 237
    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    if-eqz v9, :cond_e

    .line 243
    .line 244
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getCaptionHeight()I

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    sub-int/2addr v6, v9

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 250
    .line 251
    .line 252
    move-result v9

    .line 253
    if-eqz v9, :cond_d

    .line 254
    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getFreeformThickness()I

    .line 256
    .line 257
    .line 258
    move-result v9

    .line 259
    sub-int/2addr v6, v9

    .line 260
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 261
    .line 262
    .line 263
    move-result v9

    .line 264
    if-eqz v9, :cond_e

    .line 265
    .line 266
    iget-object v5, v5, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 267
    .line 268
    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 269
    .line 270
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 271
    .line 272
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    const/high16 v9, 0x42000000    # 32.0f

    .line 281
    .line 282
    invoke-static {v15, v9, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    float-to-int v5, v5

    .line 287
    sub-int/2addr v6, v5

    .line 288
    :cond_e
    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    sub-int/2addr v5, v8

    .line 293
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowBounds:Landroid/graphics/Rect;

    .line 302
    .line 303
    neg-int v2, v2

    .line 304
    invoke-virtual {v5, v14, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 305
    .line 306
    .line 307
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLayoutWithIme:Z

    .line 308
    .line 309
    if-nez v2, :cond_f

    .line 310
    .line 311
    iput-boolean v15, v1, Lcom/android/server/wm/WindowState;->mLayoutWithIme:Z

    .line 312
    .line 313
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 314
    .line 315
    iput-boolean v15, v2, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    .line 316
    .line 317
    :cond_f
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 318
    .line 319
    iput-boolean v15, v2, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    .line 320
    .line 321
    goto :goto_8

    .line 322
    :cond_10
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLayoutWithIme:Z

    .line 323
    .line 324
    if-eqz v2, :cond_11

    .line 325
    .line 326
    iput-boolean v14, v1, Lcom/android/server/wm/WindowState;->mLayoutWithIme:Z

    .line 327
    .line 328
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 329
    .line 330
    iput-boolean v15, v2, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    .line 331
    .line 332
    :cond_11
    :goto_8
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    .line 333
    .line 334
    invoke-virtual {v1, v14}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 339
    .line 340
    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowBounds:Landroid/graphics/Rect;

    .line 341
    .line 342
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 343
    .line 344
    .line 345
    move-result v11

    .line 346
    iget v0, v1, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 347
    .line 348
    iget v2, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 349
    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 351
    .line 352
    .line 353
    move-result v17

    .line 354
    move v3, v14

    .line 355
    move v14, v0

    .line 356
    move v0, v15

    .line 357
    move v15, v2

    .line 358
    move-object/from16 v16, v4

    .line 359
    .line 360
    invoke-virtual/range {v6 .. v17}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;I)V

    .line 361
    .line 362
    .line 363
    iget v2, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 364
    .line 365
    iget v5, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 366
    .line 367
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 368
    .line 369
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 370
    .line 371
    iget-object v8, v6, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 372
    .line 373
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 374
    .line 375
    .line 376
    iget-object v7, v6, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 377
    .line 378
    iget-object v8, v4, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 379
    .line 380
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 381
    .line 382
    .line 383
    iget-object v7, v6, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 384
    .line 385
    iget-object v8, v4, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 386
    .line 387
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 388
    .line 389
    .line 390
    iget-object v7, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 391
    .line 392
    iget-object v8, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 393
    .line 394
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 395
    .line 396
    .line 397
    iget-object v7, v6, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 398
    .line 399
    iget-object v8, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 400
    .line 401
    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 402
    .line 403
    .line 404
    iget v7, v1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 405
    .line 406
    iget-object v8, v6, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 407
    .line 408
    const/high16 v9, 0x3f800000    # 1.0f

    .line 409
    .line 410
    cmpl-float v10, v7, v9

    .line 411
    .line 412
    if-eqz v10, :cond_13

    .line 413
    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    .line 415
    .line 416
    .line 417
    move-result-object v10

    .line 418
    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 419
    .line 420
    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getCompatSandboxInvScale()F

    .line 421
    .line 422
    .line 423
    move-result v10

    .line 424
    cmpl-float v10, v10, v9

    .line 425
    .line 426
    if-nez v10, :cond_12

    .line 427
    .line 428
    goto :goto_9

    .line 429
    :cond_12
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 430
    .line 431
    .line 432
    move-result v9

    .line 433
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 434
    .line 435
    .line 436
    move-result v10

    .line 437
    iget v11, v8, Landroid/graphics/Rect;->left:I

    .line 438
    .line 439
    int-to-float v11, v11

    .line 440
    mul-float/2addr v11, v7

    .line 441
    const/high16 v12, 0x3f000000    # 0.5f

    .line 442
    .line 443
    add-float/2addr v11, v12

    .line 444
    float-to-int v11, v11

    .line 445
    iput v11, v8, Landroid/graphics/Rect;->left:I

    .line 446
    .line 447
    iget v13, v8, Landroid/graphics/Rect;->top:I

    .line 448
    .line 449
    int-to-float v13, v13

    .line 450
    mul-float/2addr v13, v7

    .line 451
    add-float/2addr v13, v12

    .line 452
    float-to-int v13, v13

    .line 453
    iput v13, v8, Landroid/graphics/Rect;->top:I

    .line 454
    .line 455
    int-to-float v9, v9

    .line 456
    mul-float/2addr v9, v7

    .line 457
    add-float/2addr v9, v12

    .line 458
    float-to-int v9, v9

    .line 459
    add-int/2addr v11, v9

    .line 460
    iput v11, v8, Landroid/graphics/Rect;->right:I

    .line 461
    .line 462
    int-to-float v9, v10

    .line 463
    mul-float/2addr v9, v7

    .line 464
    add-float/2addr v9, v12

    .line 465
    float-to-int v7, v9

    .line 466
    add-int/2addr v13, v7

    .line 467
    iput v13, v8, Landroid/graphics/Rect;->bottom:I

    .line 468
    .line 469
    goto :goto_a

    .line 470
    :cond_13
    :goto_9
    iget v7, v1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 471
    .line 472
    cmpl-float v8, v7, v9

    .line 473
    .line 474
    if-eqz v8, :cond_14

    .line 475
    .line 476
    iget-object v8, v6, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 477
    .line 478
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->scale(F)V

    .line 479
    .line 480
    .line 481
    :cond_14
    :goto_a
    iget-boolean v4, v4, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 482
    .line 483
    iput-boolean v4, v6, Lcom/android/server/wm/WindowFrames;->mParentFrameWasClippedByDisplayCutout:Z

    .line 484
    .line 485
    iget-object v4, v6, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    .line 486
    .line 487
    iget-object v7, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 488
    .line 489
    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 490
    .line 491
    .line 492
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 497
    .line 498
    if-eqz v7, :cond_15

    .line 499
    .line 500
    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 501
    .line 502
    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 503
    .line 504
    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 505
    .line 506
    iget v14, v4, Landroid/graphics/Rect;->left:I

    .line 507
    .line 508
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 509
    .line 510
    goto :goto_b

    .line 511
    :cond_15
    if-eqz v4, :cond_16

    .line 512
    .line 513
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    iget v14, v4, Landroid/graphics/Rect;->left:I

    .line 518
    .line 519
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 520
    .line 521
    goto :goto_b

    .line 522
    :cond_16
    move v4, v3

    .line 523
    move v14, v4

    .line 524
    :goto_b
    iget-object v7, v6, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    .line 525
    .line 526
    iget-object v8, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 527
    .line 528
    iget v9, v8, Landroid/graphics/Rect;->left:I

    .line 529
    .line 530
    sub-int/2addr v9, v14

    .line 531
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 532
    .line 533
    sub-int/2addr v8, v4

    .line 534
    invoke-virtual {v7, v9, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 535
    .line 536
    .line 537
    iget v4, v1, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 538
    .line 539
    if-ne v2, v4, :cond_17

    .line 540
    .line 541
    iget v4, v1, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 542
    .line 543
    if-ne v5, v4, :cond_17

    .line 544
    .line 545
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 546
    .line 547
    iget-object v7, v6, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 548
    .line 549
    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v4

    .line 553
    if-nez v4, :cond_18

    .line 554
    .line 555
    :cond_17
    iput v2, v1, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 556
    .line 557
    iput v5, v1, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 558
    .line 559
    iput-boolean v0, v6, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    .line 560
    .line 561
    :cond_18
    iget-object v2, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 562
    .line 563
    iget-object v4, v6, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 564
    .line 565
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v2

    .line 569
    if-eqz v2, :cond_19

    .line 570
    .line 571
    iget-object v2, v6, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    .line 572
    .line 573
    iget-object v4, v6, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    .line 574
    .line 575
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    if-nez v2, :cond_1a

    .line 580
    .line 581
    :cond_19
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 582
    .line 583
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFrameChangingWindows:Ljava/util/ArrayList;

    .line 584
    .line 585
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    :cond_1a
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 589
    .line 590
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 591
    .line 592
    const/16 v4, 0x7f2

    .line 593
    .line 594
    if-ne v2, v4, :cond_1b

    .line 595
    .line 596
    iget-object v2, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 597
    .line 598
    iget-object v4, v6, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 599
    .line 600
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    if-nez v2, :cond_1b

    .line 605
    .line 606
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 607
    .line 608
    :cond_1b
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 609
    .line 610
    if-eqz v2, :cond_1d

    .line 611
    .line 612
    iget-object v2, v6, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 613
    .line 614
    iget-object v4, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 615
    .line 616
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 617
    .line 618
    .line 619
    move-result v5

    .line 620
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 621
    .line 622
    .line 623
    move-result v7

    .line 624
    if-ne v5, v7, :cond_1c

    .line 625
    .line 626
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 627
    .line 628
    .line 629
    move-result v2

    .line 630
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 631
    .line 632
    .line 633
    move-result v4

    .line 634
    if-eq v2, v4, :cond_1d

    .line 635
    .line 636
    :cond_1c
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 637
    .line 638
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 639
    .line 640
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z

    .line 641
    .line 642
    .line 643
    :cond_1d
    iget-object v2, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 644
    .line 645
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowState;->updateSourceFrame(Landroid/graphics/Rect;)V

    .line 646
    .line 647
    .line 648
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 649
    .line 650
    if-eqz v2, :cond_1e

    .line 651
    .line 652
    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 653
    .line 654
    if-nez v3, :cond_1e

    .line 655
    .line 656
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 657
    .line 658
    iget-object v2, v2, Lcom/android/server/wm/AppCompatController;->mAppCompatLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 659
    .line 660
    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->start(Lcom/android/server/wm/WindowState;)V

    .line 661
    .line 662
    .line 663
    :cond_1e
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mSurfacePlacementNeeded:Z

    .line 664
    .line 665
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 666
    .line 667
    return-void
.end method

.method public final onConfigurationChanged()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const v1, 0x1110227

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 23
    .line 24
    .line 25
    const v1, 0x10e00f0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    .line 49
    .line 50
    const v1, 0x11101e7

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    .line 58
    .line 59
    const v1, 0x1110006

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 69
    .line 70
    .line 71
    const v1, 0x111003a

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/4 v1, 0x0

    .line 79
    const/4 v2, 0x1

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    invoke-static {}, Lcom/android/wm/shell/Flags;->enableTinyTaskbar()Z

    .line 83
    .line 84
    .line 85
    move v0, v2

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    move v0, v1

    .line 88
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    .line 89
    .line 90
    if-eq v3, v0, :cond_2

    .line 91
    .line 92
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    .line 93
    .line 94
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    iget v4, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    .line 103
    .line 104
    const v5, 0x10e00ef

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    iput v5, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    .line 112
    .line 113
    if-eq v4, v5, :cond_3

    .line 114
    .line 115
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 116
    .line 117
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 118
    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v5, "DisplayPolicyExt#onConfigurationChanged, NavigationMode(new)="

    .line 124
    .line 125
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget v5, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavigationMode:I

    .line 129
    .line 130
    const-string v6, ", NavigationMode(old)="

    .line 131
    .line 132
    const-string v7, ", callers="

    .line 133
    .line 134
    invoke-static {v5, v4, v6, v7, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 135
    .line 136
    .line 137
    const/4 v4, 0x3

    .line 138
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const-string v4, "DisplayPolicyExt"

    .line 150
    .line 151
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    .line 155
    .line 156
    if-nez v0, :cond_4

    .line 157
    .line 158
    const v0, 0x11101eb

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    :cond_4
    move v1, v2

    .line 168
    :cond_5
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mNavBarImeBtnAllRotationsAllowed:Z

    .line 169
    .line 170
    return-void
.end method

.method public final onDisplaySwitchFinished()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/server/wm/WallpaperController;->mIsWallpaperNotifiedOnDisplaySwitch:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 13
    .line 14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 15
    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iput-boolean v2, v0, Lcom/android/server/wm/WallpaperController;->mIsWallpaperNotifiedOnDisplaySwitch:Z

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WallpaperController;->notifyDisplaySwitch(Z)Z

    .line 21
    .line 22
    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DisplayUpdater;

    .line 37
    .line 38
    invoke-interface {p0, v2}, Lcom/android/server/wm/DisplayUpdater;->onDisplaySwitching(Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    if-ne v0, p1, :cond_1

    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 17
    .line 18
    if-ne v0, p1, :cond_2

    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 21
    .line 22
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 23
    .line 24
    if-ne v0, p1, :cond_3

    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 27
    .line 28
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mInsetsSourceProviders:Landroid/util/SparseArray;

    .line 29
    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getInsetsSourceProviders()Landroid/util/SparseArray;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    add-int/lit8 v3, v3, -0x1

    .line 45
    .line 46
    :goto_1
    if-ltz v3, :cond_5

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    .line 53
    .line 54
    invoke-virtual {v4, v1, v1, v1}, Lcom/android/server/wm/InsetsSourceProvider;->setWindowContainer(Lcom/android/server/wm/WindowContainer;Lcom/android/internal/util/function/TriFunction;Landroid/util/SparseArray;)V

    .line 55
    .line 56
    .line 57
    iget-object v4, v4, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getId()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    sget v5, Landroid/view/InsetsSource;->ID_IME:I

    .line 67
    .line 68
    if-eq v4, v5, :cond_4

    .line 69
    .line 70
    iget-object v5, v2, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 71
    .line 72
    invoke-virtual {v5, v4}, Landroid/view/InsetsState;->removeSource(I)V

    .line 73
    .line 74
    .line 75
    iget-object v5, v2, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 76
    .line 77
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 78
    .line 79
    .line 80
    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 89
    .line 90
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 91
    .line 92
    if-eqz v2, :cond_6

    .line 93
    .line 94
    iget-object v3, v2, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    .line 95
    .line 96
    if-ne v3, p1, :cond_6

    .line 97
    .line 98
    iput-object v1, v2, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    .line 99
    .line 100
    :cond_6
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    .line 101
    .line 102
    if-ne v2, p1, :cond_7

    .line 103
    .line 104
    iput-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mPayHandlerWin:Lcom/android/server/wm/WindowState;

    .line 105
    .line 106
    :cond_7
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 107
    .line 108
    const/4 v3, 0x0

    .line 109
    if-eqz v2, :cond_9

    .line 110
    .line 111
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 112
    .line 113
    iget-object v4, v2, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    .line 114
    .line 115
    if-nez v4, :cond_8

    .line 116
    .line 117
    iget-object v2, v2, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    .line 118
    .line 119
    if-eqz v2, :cond_9

    .line 120
    .line 121
    :cond_8
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 122
    .line 123
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 124
    .line 125
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mPopOverController:Lcom/android/server/wm/PopOverController;

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 131
    .line 132
    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    if-eqz v4, :cond_9

    .line 137
    .line 138
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    .line 139
    .line 140
    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-eqz v5, :cond_9

    .line 145
    .line 146
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mChildDimmingDialogs:Landroid/util/ArraySet;

    .line 147
    .line 148
    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 152
    .line 153
    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/PopOverController;->updatePopOverDimAttributesLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 154
    .line 155
    .line 156
    :cond_9
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 157
    .line 158
    iget-object v4, v2, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 159
    .line 160
    if-ne v4, p1, :cond_a

    .line 161
    .line 162
    iput-object v1, v2, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 163
    .line 164
    invoke-virtual {v2}, Lcom/android/server/wm/TaskbarController;->getNavigationBarProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    if-eqz v4, :cond_a

    .line 169
    .line 170
    invoke-virtual {v2}, Lcom/android/server/wm/TaskbarController;->getNavigationBarProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    iget-object v4, v4, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 175
    .line 176
    if-eqz v4, :cond_a

    .line 177
    .line 178
    iget-object v4, v2, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 179
    .line 180
    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 181
    .line 182
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 183
    .line 184
    invoke-virtual {v2}, Lcom/android/server/wm/TaskbarController;->getNavigationBarProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    iget-object v2, v2, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 189
    .line 190
    invoke-virtual {v4, v2}, Lcom/android/server/wm/InsetsStateController;->notifyControlChanged(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 191
    .line 192
    .line 193
    :cond_a
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    .line 194
    .line 195
    if-ne v2, p1, :cond_b

    .line 196
    .line 197
    iput-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsWindow:Lcom/android/server/wm/WindowState;

    .line 198
    .line 199
    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayPolicyExt;->notifyRequestedGameToolsWin(Z)V

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_b
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    .line 204
    .line 205
    if-ne v2, p1, :cond_c

    .line 206
    .line 207
    iput-object v1, v0, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    .line 208
    .line 209
    :cond_c
    :goto_2
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 210
    .line 211
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 212
    .line 213
    const/high16 v0, 0x20000

    .line 214
    .line 215
    and-int/2addr p1, v0

    .line 216
    if-eqz p1, :cond_d

    .line 217
    .line 218
    iput-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveConfirmationWindowExists:Z

    .line 219
    .line 220
    :cond_d
    return-void
.end method

.method public requestTransientBars(Lcom/android/server/wm/WindowState;Z)V
    .locals 8

    .line 1
    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    .line 7
    .line 8
    const-string v2, "WindowManager"

    .line 9
    .line 10
    if-nez v1, :cond_10

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v1}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_10

    .line 19
    .line 20
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    if-ne p1, v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 38
    .line 39
    iget v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockTaskModeState:I

    .line 40
    .line 41
    if-ne v1, v3, :cond_2

    .line 42
    .line 43
    const-string p0, "Not showing transient bar, because lock task mode pinned"

    .line 44
    .line 45
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    if-eqz p1, :cond_f

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 54
    .line 55
    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCanSystemBarsBeShownByUser:Z

    .line 66
    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    const-string p0, "Remote insets controller disallows showing system bars - ignoring request"

    .line 70
    .line 71
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const/4 v4, 0x0

    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    iget-object v1, v1, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    move-object v1, v4

    .line 86
    :goto_0
    if-eqz v1, :cond_f

    .line 87
    .line 88
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 89
    .line 90
    if-ne v1, v5, :cond_6

    .line 91
    .line 92
    goto/16 :goto_3

    .line 93
    .line 94
    :cond_6
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-eqz v5, :cond_7

    .line 99
    .line 100
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_7

    .line 105
    .line 106
    return-void

    .line 107
    :cond_7
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    or-int/2addr v5, v6

    .line 116
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibleTypes()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    and-int/2addr v5, v6

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string/jumbo v7, "requestTransientBars: swipeTarget="

    .line 124
    .line 125
    .line 126
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v7, ", controlTarget="

    .line 133
    .line 134
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v7, ", canShowTransient="

    .line 141
    .line 142
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->canShowTransient()Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v7, ", restorePositionTypes=0x"

    .line 153
    .line 154
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v7, ", from="

    .line 165
    .line 166
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    const/4 v6, 0x0

    .line 188
    if-eqz v3, :cond_8

    .line 189
    .line 190
    iget-object v3, v3, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 191
    .line 192
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    if-ne v3, v7, :cond_8

    .line 201
    .line 202
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    and-int/2addr v3, v5

    .line 207
    if-eqz v3, :cond_8

    .line 208
    .line 209
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    invoke-interface {v1, p0, v6, v4}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_8
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->canShowTransient()Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-eqz v3, :cond_9

    .line 222
    .line 223
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 224
    .line 225
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 226
    .line 227
    instance-of v2, v1, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    .line 228
    .line 229
    iput-boolean v2, p1, Lcom/android/server/wm/InsetsPolicy;->mLastTransientRequestedByPolicyControl:Z

    .line 230
    .line 231
    sget v2, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:I

    .line 232
    .line 233
    invoke-virtual {p1, v2, p2}, Lcom/android/server/wm/InsetsPolicy;->showTransient(IZ)V

    .line 234
    .line 235
    .line 236
    invoke-interface {v1, v5, v6, v4}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_9
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 241
    .line 242
    .line 243
    move-result p2

    .line 244
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    or-int/2addr p2, v3

    .line 249
    invoke-interface {v1, p2, v6, v4}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 250
    .line 251
    .line 252
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 253
    .line 254
    if-ne p1, p2, :cond_b

    .line 255
    .line 256
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mSkipTransferTouchToStatusBar:Z

    .line 257
    .line 258
    if-eqz p1, :cond_a

    .line 259
    .line 260
    return-void

    .line 261
    :cond_a
    iget-object p1, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 262
    .line 263
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 264
    .line 265
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    .line 266
    .line 267
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    invoke-virtual {p1, v1, p2}, Lcom/android/server/input/InputManagerService;->transferTouch(Landroid/os/IBinder;I)Z

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    if-nez p1, :cond_b

    .line 276
    .line 277
    const-string p1, "Could not transfer touch to the status bar"

    .line 278
    .line 279
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    :cond_b
    :goto_1
    sget-boolean p1, Landroid/view/ViewRootImpl;->CLIENT_IMMERSIVE_CONFIRMATION:Z

    .line 283
    .line 284
    if-nez p1, :cond_d

    .line 285
    .line 286
    if-eqz v0, :cond_c

    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 290
    .line 291
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 292
    .line 293
    if-eqz p1, :cond_f

    .line 294
    .line 295
    iget-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Lcom/android/server/wm/ImmersiveModeConfirmation$1;

    .line 296
    .line 297
    iget-object p0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    .line 298
    .line 299
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_d
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 304
    .line 305
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 306
    .line 307
    iget-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 308
    .line 309
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 310
    .line 311
    if-nez p1, :cond_e

    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_e
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 315
    .line 316
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 317
    .line 318
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBar;->confirmImmersivePrompt()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .line 320
    .line 321
    :catch_0
    :cond_f
    :goto_3
    return-void

    .line 322
    :cond_10
    :goto_4
    const-string p0, "Not showing transient bar, because factory test mode"

    .line 323
    .line 324
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .line 326
    .line 327
    return-void
.end method

.method public final screenTurnedOff()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final screenTurningOn(Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 9
    .line 10
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 11
    .line 12
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 15
    .line 16
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 33
    .line 34
    iput-object p1, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 41
    .line 42
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 43
    .line 44
    if-ne v2, v1, :cond_1

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 47
    .line 48
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    const-wide/16 v0, 0x20

    .line 52
    .line 53
    const-string/jumbo v2, "screenTurnedOnWhileDozing"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setProcessAnimatingWhileDozing(Lcom/android/server/wm/WindowProcessController;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void

    .line 67
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p0
.end method

.method public final setAwake(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 5
    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 13
    .line 14
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 28
    .line 29
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_2
    if-eqz p1, :cond_3

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 60
    .line 61
    iget-object v2, v2, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    .line 62
    .line 63
    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    .line 64
    .line 65
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 70
    .line 71
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->updateDeferTransitionForAod(Z)V

    .line 74
    .line 75
    .line 76
    if-nez p1, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onDisplaySwitchFinished()V

    .line 79
    .line 80
    .line 81
    :cond_5
    monitor-exit v0

    .line 82
    return-void

    .line 83
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0
.end method

.method public setCanSystemBarsBeShownByUser(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mCanSystemBarsBeShownByUser:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDropInputModePolicy(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 1
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2
    .line 3
    const/16 v1, 0x7d5

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 8
    .line 9
    const/high16 v0, 0x20000000

    .line 10
    .line 11
    and-int/2addr p2, v0

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setDropInputMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final setHdmiPlugged(ZZ)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-boolean p2, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 4
    .line 5
    if-eq p2, p1, :cond_1

    .line 6
    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p2, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v0, "android.intent.action.HDMI_PLUGGED"

    .line 18
    .line 19
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/high16 v0, 0x4000000

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string/jumbo v0, "state"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 36
    .line 37
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final setPointerLocationEnabled(Z)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 8
    .line 9
    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    .line 10
    .line 11
    const v2, 0x8000

    .line 12
    .line 13
    .line 14
    and-int/2addr v0, v2

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string p0, "SPEG"

    .line 18
    .line 19
    const-string p1, "Pointer location is not supported"

    .line 20
    .line 21
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    return-void

    .line 37
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 38
    .line 39
    const/4 p1, 0x4

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    const/4 p1, 0x5

    .line 42
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public setRemoteInsetsControllerControlsSystemBars(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setTransientVisibilityChangeListener(Lcom/android/server/wm/WindowState;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTransientWindowState:Lcom/android/server/wm/WindowState;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/DisplayPolicy$5;

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    new-instance p1, Lcom/android/server/wm/DisplayPolicy$5;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/android/server/wm/DisplayPolicy$5;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/DisplayPolicy$5;

    .line 39
    .line 40
    :cond_0
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/DisplayPolicy$5;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerInternal;->registerTaskSystemBarsListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTransientWindowState:Lcom/android/server/wm/WindowState;

    .line 50
    .line 51
    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/DisplayPolicy$5;

    .line 52
    .line 53
    if-eqz p2, :cond_3

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->unregisterTaskSystemBarsListener(Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTaskSystemBarsVisibilityListener:Lcom/android/server/wm/DisplayPolicy$5;

    .line 61
    .line 62
    :cond_3
    :goto_0
    return-void
.end method

.method public final shouldAttachNavBarToAppDuringTransition()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShouldAttachNavBarToAppDuringTransition:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

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

.method public final shouldKeepSystemUiControllingWindow()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    :goto_0
    return p0
.end method

.method public final simulateLayoutDisplay(Lcom/android/server/wm/DisplayFrames;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v2, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/lit8 v2, v2, -0x1

    .line 17
    .line 18
    :goto_0
    if-ltz v2, :cond_2

    .line 19
    .line 20
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mInsetsSourceWindowsExceptIme:Landroid/util/ArraySet;

    .line 21
    .line 22
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 27
    .line 28
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mWindowLayout:Landroid/view/WindowLayout;

    .line 29
    .line 30
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 31
    .line 32
    iget v7, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 33
    .line 34
    invoke-virtual {v6, v7}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 39
    .line 40
    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 41
    .line 42
    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    iget v13, v4, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 49
    .line 50
    iget v14, v4, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 51
    .line 52
    sget-object v15, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    .line 55
    .line 56
    .line 57
    move-result v16

    .line 58
    const/4 v11, -0x1

    .line 59
    const/4 v12, -0x1

    .line 60
    invoke-virtual/range {v5 .. v16}, Landroid/view/WindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getInsetsSourceProviders()Landroid/util/SparseArray;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 68
    .line 69
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    add-int/lit8 v6, v6, -0x1

    .line 74
    .line 75
    :goto_1
    if-ltz v6, :cond_1

    .line 76
    .line 77
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Lcom/android/server/wm/InsetsSourceProvider;

    .line 82
    .line 83
    sget-object v8, Lcom/android/server/wm/DisplayPolicy;->sTmpClientFrames:Landroid/window/ClientWindowFrames;

    .line 84
    .line 85
    iget-object v8, v8, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    new-instance v9, Landroid/view/InsetsSource;

    .line 91
    .line 92
    iget-object v10, v7, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 93
    .line 94
    invoke-direct {v9, v10}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 95
    .line 96
    .line 97
    iget-object v10, v7, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 98
    .line 99
    invoke-virtual {v10, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 100
    .line 101
    .line 102
    iget-object v8, v7, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriFunction;

    .line 103
    .line 104
    if-eqz v8, :cond_0

    .line 105
    .line 106
    iget-object v10, v7, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 107
    .line 108
    iget-object v11, v7, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 109
    .line 110
    invoke-interface {v8, v1, v10, v11}, Lcom/android/internal/util/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :cond_0
    iget-object v7, v7, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 114
    .line 115
    invoke-virtual {v9, v7}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 116
    .line 117
    .line 118
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 119
    .line 120
    invoke-virtual {v9, v7}, Landroid/view/InsetsSource;->updateSideHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v3}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v9}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v6, v6, -0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    return-void
.end method

.method public final startEnableTouchEvent(Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x6b

    .line 7
    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/16 p1, 0x65

    .line 13
    .line 14
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 p1, 0x66

    .line 18
    .line 19
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 20
    .line 21
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final systemReady()V
    .locals 4

    .line 1
    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v2, Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 26
    .line 27
    iget-object v2, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    const-string v3, "SystemGesture"

    .line 30
    .line 31
    invoke-direct {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 37
    .line 38
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->startEnableTouchEvent(Z)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string/jumbo v1, "systemReady() >> KnoxZT startEnableTouchEvent called for Display Id : "

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 59
    .line 60
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 61
    .line 62
    const-string v1, "WindowManager"

    .line 63
    .line 64
    invoke-static {v0, p0, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final topAppHidesSystemBar(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    .line 10
    .line 11
    and-int/2addr p0, p1

    .line 12
    if-ne p0, p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    xor-int/lit8 p0, p0, 0x1

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public updateCachedDecorInsets()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    iput v2, v1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V

    .line 38
    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->setTo(Lcom/android/server/wm/DisplayPolicy$DecorInsets;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mActive:Z

    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public final updateConfigurationAndScreenSizeDependentBehaviors()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_MOVABLE_POLICY:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    .line 13
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 14
    .line 15
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 16
    .line 17
    if-eq v3, v1, :cond_1

    .line 18
    .line 19
    const v1, 0x11101e8

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const v2, 0x1110023

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput-boolean v0, v1, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 46
    .line 47
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TSP_STATE_CONTROLLER:Z

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 54
    .line 55
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 56
    .line 57
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 58
    .line 59
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 60
    .line 61
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 71
    .line 72
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mTspStateController:Lcom/android/server/wm/TspStateController;

    .line 81
    .line 82
    iget-object v1, v0, Lcom/android/server/wm/TspStateController;->mDeviceSize:Lcom/android/server/wm/TspStateController$DeviceSize;

    .line 83
    .line 84
    iput v2, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    .line 85
    .line 86
    iput v3, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    .line 87
    .line 88
    iput v4, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    .line 89
    .line 90
    iput p0, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/android/server/wm/TspStateController;->initDefaultValues()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/android/server/wm/TspStateController;->updateCustomValue()V

    .line 96
    .line 97
    .line 98
    iget p0, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    .line 99
    .line 100
    iget v1, v1, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    .line 101
    .line 102
    iget-object v0, v0, Lcom/android/server/wm/TspStateController;->mTspDebug:Lcom/android/server/wm/TspStateController$TspDebug;

    .line 103
    .line 104
    iput p0, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayWidth:I

    .line 105
    .line 106
    iput v1, v0, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayHeight:I

    .line 107
    .line 108
    :cond_2
    return-void
.end method

.method public final updateCurrentUserResources()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getOverlayPaths()[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v0}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 61
    .line 62
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 63
    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    const/4 v12, 0x0

    .line 77
    const/4 v13, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    const/4 v10, 0x0

    .line 80
    invoke-virtual/range {v2 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 85
    .line 86
    return-void
.end method

.method public final updateDecorInsetsInfo()Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-boolean v4, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mActive:Z

    .line 9
    .line 10
    if-eqz v4, :cond_1

    .line 11
    .line 12
    iget v4, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    .line 13
    .line 14
    if-eq v4, v2, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TransitionController;->inTransition(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :cond_0
    move v0, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v1

    .line 31
    :goto_0
    if-eqz v0, :cond_2

    .line 32
    .line 33
    return v1

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 35
    .line 36
    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 37
    .line 38
    iget v5, v4, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 39
    .line 40
    iget v6, v4, Lcom/android/server/wm/DisplayFrames;->mWidth:I

    .line 41
    .line 42
    iget v4, v4, Lcom/android/server/wm/DisplayFrames;->mHeight:I

    .line 43
    .line 44
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 45
    .line 46
    iget-object v7, v7, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mTmpInfo:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 47
    .line 48
    invoke-virtual {v7, v5, v6, v4, v0}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->update(IIILcom/android/server/wm/DisplayContent;)Landroid/view/InsetsState;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v5, v6, v4}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    iget-object v9, v7, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    .line 57
    .line 58
    iget-object v10, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-eqz v9, :cond_f

    .line 65
    .line 66
    iget-object v9, v7, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    .line 67
    .line 68
    iget-object v8, v8, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_f

    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 77
    .line 78
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 81
    .line 82
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 83
    .line 84
    iget v8, v8, Lcom/android/server/wm/WindowManagerService;->mConfigTypes:I

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/view/InsetsState;->sourceSize()I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    sub-int/2addr v9, v3

    .line 91
    move v10, v1

    .line 92
    :goto_1
    if-ltz v9, :cond_5

    .line 93
    .line 94
    invoke-virtual {v0, v9}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    invoke-virtual {v11}, Landroid/view/InsetsSource;->getType()I

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    and-int/2addr v12, v8

    .line 103
    if-nez v12, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 107
    .line 108
    invoke-virtual {v11}, Landroid/view/InsetsSource;->getId()I

    .line 109
    .line 110
    .line 111
    move-result v12

    .line 112
    invoke-virtual {v2, v12}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    if-eqz v12, :cond_8

    .line 117
    .line 118
    invoke-virtual {v12}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 119
    .line 120
    .line 121
    move-result-object v12

    .line 122
    invoke-virtual {v11}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    if-nez v11, :cond_4

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, -0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    invoke-virtual {v2}, Landroid/view/InsetsState;->sourceSize()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    sub-int/2addr v0, v3

    .line 141
    move v9, v1

    .line 142
    :goto_3
    if-ltz v0, :cond_7

    .line 143
    .line 144
    invoke-virtual {v2, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    invoke-virtual {v11}, Landroid/view/InsetsSource;->getType()I

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    and-int/2addr v11, v8

    .line 153
    if-eqz v11, :cond_6

    .line 154
    .line 155
    add-int/lit8 v9, v9, 0x1

    .line 156
    .line 157
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_7
    if-eq v10, v9, :cond_e

    .line 161
    .line 162
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 163
    .line 164
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 165
    .line 166
    array-length v0, v0

    .line 167
    sub-int/2addr v0, v3

    .line 168
    :goto_5
    if-ltz v0, :cond_d

    .line 169
    .line 170
    if-eq v0, v5, :cond_c

    .line 171
    .line 172
    add-int v2, v0, v5

    .line 173
    .line 174
    rem-int/lit8 v2, v2, 0x2

    .line 175
    .line 176
    if-ne v2, v3, :cond_9

    .line 177
    .line 178
    move v2, v3

    .line 179
    goto :goto_6

    .line 180
    :cond_9
    move v2, v1

    .line 181
    :goto_6
    if-eqz v2, :cond_a

    .line 182
    .line 183
    move v8, v4

    .line 184
    goto :goto_7

    .line 185
    :cond_a
    move v8, v6

    .line 186
    :goto_7
    if-eqz v2, :cond_b

    .line 187
    .line 188
    move v2, v6

    .line 189
    goto :goto_8

    .line 190
    :cond_b
    move v2, v4

    .line 191
    :goto_8
    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 192
    .line 193
    iget-object v9, v9, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 194
    .line 195
    aget-object v9, v9, v0

    .line 196
    .line 197
    iget-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 198
    .line 199
    invoke-virtual {v9, v0, v8, v2, v10}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->update(IIILcom/android/server/wm/DisplayContent;)Landroid/view/InsetsState;

    .line 200
    .line 201
    .line 202
    :cond_c
    add-int/lit8 v0, v0, -0x1

    .line 203
    .line 204
    goto :goto_5

    .line 205
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 208
    .line 209
    aget-object p0, p0, v5

    .line 210
    .line 211
    invoke-virtual {p0, v7}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->set(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;)V

    .line 212
    .line 213
    .line 214
    :cond_e
    return v1

    .line 215
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 216
    .line 217
    if-eqz v0, :cond_11

    .line 218
    .line 219
    iget v4, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mPreserveId:I

    .line 220
    .line 221
    if-eq v4, v2, :cond_11

    .line 222
    .line 223
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 224
    .line 225
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 226
    .line 227
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 228
    .line 229
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TransitionController;->inTransition(I)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_10

    .line 234
    .line 235
    goto :goto_9

    .line 236
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 237
    .line 238
    if-eqz v0, :cond_11

    .line 239
    .line 240
    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCachedDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;

    .line 242
    .line 243
    :cond_11
    :goto_9
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 244
    .line 245
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 246
    .line 247
    array-length v2, v0

    .line 248
    :goto_a
    if-ge v1, v2, :cond_12

    .line 249
    .line 250
    aget-object v4, v0, v1

    .line 251
    .line 252
    iput-boolean v3, v4, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNeedUpdate:Z

    .line 253
    .line 254
    add-int/lit8 v1, v1, 0x1

    .line 255
    .line 256
    goto :goto_a

    .line 257
    :cond_12
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    .line 258
    .line 259
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;->mInfoForRotation:[Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    .line 260
    .line 261
    aget-object p0, p0, v5

    .line 262
    .line 263
    invoke-virtual {p0, v7}, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->set(Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;)V

    .line 264
    .line 265
    .line 266
    return v3
.end method

.method public final updateForceShowNavBarSettings()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavBarSettingsObserver:Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/internal/policy/ForceShowNavBarSettingsObserver;->isEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

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

.method public updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;)I
    .locals 4

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p2, v2}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v1, v3, v0}, Lcom/android/server/wm/DisplayPolicy;->intersectsAnyInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsResizingByDivider:Z

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 26
    .line 27
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 36
    .line 37
    iget-boolean p0, p0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    .line 38
    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    :cond_1
    if-nez v0, :cond_3

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    and-int/lit8 p0, p1, -0x11

    .line 48
    .line 49
    iget-object p1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 50
    .line 51
    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 52
    .line 53
    iget p1, p1, Landroid/view/InsetsFlags;->appearance:I

    .line 54
    .line 55
    and-int/lit8 p1, p1, 0x10

    .line 56
    .line 57
    or-int/2addr p0, p1

    .line 58
    return p0

    .line 59
    :cond_3
    :goto_0
    and-int/lit8 p0, p1, -0x11

    .line 60
    .line 61
    return p0

    .line 62
    :cond_4
    :goto_1
    and-int/lit8 p1, p1, -0x11

    .line 63
    .line 64
    if-eqz p2, :cond_5

    .line 65
    .line 66
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicyExt;->isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_5

    .line 78
    .line 79
    iget-object p0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 80
    .line 81
    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 82
    .line 83
    iget p0, p0, Landroid/view/InsetsFlags;->appearance:I

    .line 84
    .line 85
    and-int/lit8 p0, p0, 0x10

    .line 86
    .line 87
    or-int/2addr p1, p0

    .line 88
    :cond_5
    return p1
.end method

.method public final updateSystemBarAttributes()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    :goto_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->shouldKeepSystemUiControllingWindow()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 21
    .line 22
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 23
    .line 24
    const/high16 v3, 0x20000

    .line 25
    .line 26
    and-int/2addr v2, v3

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_5

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 59
    .line 60
    :goto_1
    if-nez v1, :cond_5

    .line 61
    .line 62
    return-void

    .line 63
    :cond_5
    iput-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    .line 64
    .line 65
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 66
    .line 67
    iget v14, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 68
    .line 69
    iget v4, v1, Lcom/android/server/wm/WindowState;->mDisableFlags:I

    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    new-instance v5, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda15;

    .line 76
    .line 77
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const/4 v6, 0x1

    .line 85
    if-eqz v5, :cond_6

    .line 86
    .line 87
    :goto_2
    move v5, v6

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    invoke-virtual {v2, v6, v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-eqz v5, :cond_7

    .line 94
    .line 95
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_7

    .line 100
    .line 101
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_7

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_7
    move v5, v3

    .line 113
    :goto_3
    const/4 v7, 0x5

    .line 114
    invoke-virtual {v2, v7, v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-eqz v2, :cond_8

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_8

    .line 125
    .line 126
    move v2, v6

    .line 127
    goto :goto_4

    .line 128
    :cond_8
    move v2, v3

    .line 129
    :goto_4
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 130
    .line 131
    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 132
    .line 133
    if-nez v5, :cond_a

    .line 134
    .line 135
    iget-object v8, v7, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 136
    .line 137
    iget-boolean v8, v8, Lcom/android/server/wm/DisplayPolicy;->mForceShowNavigationBarEnabled:Z

    .line 138
    .line 139
    if-eqz v8, :cond_9

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-ne v8, v6, :cond_9

    .line 146
    .line 147
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    goto :goto_5

    .line 152
    :cond_9
    move v8, v3

    .line 153
    goto :goto_5

    .line 154
    :cond_a
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    or-int/2addr v8, v9

    .line 166
    :goto_5
    iput v8, v7, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    .line 167
    .line 168
    if-eqz v5, :cond_d

    .line 169
    .line 170
    iget-object v8, v7, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 171
    .line 172
    invoke-static {v8}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-nez v8, :cond_b

    .line 177
    .line 178
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    invoke-virtual {v7, v8}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    if-nez v8, :cond_c

    .line 187
    .line 188
    :cond_b
    iget-object v8, v7, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 189
    .line 190
    invoke-static {v8}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    if-nez v8, :cond_d

    .line 195
    .line 196
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    invoke-virtual {v7, v8}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    if-eqz v8, :cond_d

    .line 205
    .line 206
    :cond_c
    invoke-virtual {v7}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    .line 207
    .line 208
    .line 209
    :cond_d
    iget v8, v7, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    .line 210
    .line 211
    invoke-virtual {v7, v1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/WindowState;)Z

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    if-eqz v9, :cond_e

    .line 216
    .line 217
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 222
    .line 223
    .line 224
    move-result v10

    .line 225
    or-int/2addr v9, v10

    .line 226
    goto :goto_6

    .line 227
    :cond_e
    move v9, v3

    .line 228
    :goto_6
    or-int/2addr v8, v9

    .line 229
    iget-object v9, v7, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 230
    .line 231
    iget v10, v9, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    .line 232
    .line 233
    const/4 v11, 0x4

    .line 234
    if-eq v10, v8, :cond_11

    .line 235
    .line 236
    iput v8, v9, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    .line 237
    .line 238
    iget-object v10, v9, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 239
    .line 240
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 241
    .line 242
    .line 243
    move-result v10

    .line 244
    sub-int/2addr v10, v6

    .line 245
    move v12, v3

    .line 246
    :goto_7
    if-ltz v10, :cond_10

    .line 247
    .line 248
    iget-object v13, v9, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 249
    .line 250
    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v13

    .line 254
    check-cast v13, Lcom/android/server/wm/InsetsSourceProvider;

    .line 255
    .line 256
    iget-object v15, v13, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 257
    .line 258
    invoke-virtual {v15}, Landroid/view/InsetsSource;->getType()I

    .line 259
    .line 260
    .line 261
    move-result v15

    .line 262
    and-int/2addr v15, v8

    .line 263
    if-eqz v15, :cond_f

    .line 264
    .line 265
    move v15, v11

    .line 266
    goto :goto_8

    .line 267
    :cond_f
    move v15, v3

    .line 268
    :goto_8
    invoke-virtual {v13, v15}, Lcom/android/server/wm/InsetsSourceProvider;->setFlags(I)Z

    .line 269
    .line 270
    .line 271
    move-result v13

    .line 272
    or-int/2addr v12, v13

    .line 273
    add-int/lit8 v10, v10, -0x1

    .line 274
    .line 275
    goto :goto_7

    .line 276
    :cond_10
    if-eqz v12, :cond_11

    .line 277
    .line 278
    invoke-virtual {v9}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 279
    .line 280
    .line 281
    :cond_11
    invoke-virtual {v7, v1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 282
    .line 283
    .line 284
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    invoke-virtual {v0, v7}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 293
    .line 294
    if-eqz v8, :cond_12

    .line 295
    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 297
    .line 298
    .line 299
    move-result-object v8

    .line 300
    if-eqz v8, :cond_12

    .line 301
    .line 302
    check-cast v8, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 303
    .line 304
    iget-object v8, v8, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 305
    .line 306
    iget-object v8, v8, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 307
    .line 308
    if-eqz v8, :cond_12

    .line 309
    .line 310
    :try_start_0
    invoke-interface {v8, v7}, Lcom/android/internal/statusbar/IStatusBar;->setTopAppHidesStatusBar(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .line 312
    .line 313
    :catch_0
    :cond_12
    if-eqz v7, :cond_14

    .line 314
    .line 315
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 316
    .line 317
    if-eqz v7, :cond_13

    .line 318
    .line 319
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 320
    .line 321
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    if-nez v7, :cond_14

    .line 326
    .line 327
    :cond_13
    move v7, v6

    .line 328
    goto :goto_9

    .line 329
    :cond_14
    move v7, v3

    .line 330
    :goto_9
    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    .line 331
    .line 332
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    sub-int/2addr v7, v6

    .line 339
    move v8, v6

    .line 340
    move v9, v8

    .line 341
    :goto_a
    if-ltz v7, :cond_15

    .line 342
    .line 343
    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarBackgroundWindows:Ljava/util/ArrayList;

    .line 344
    .line 345
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v10

    .line 349
    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 350
    .line 351
    invoke-static {v10}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(Lcom/android/server/wm/WindowState;)Z

    .line 352
    .line 353
    .line 354
    move-result v12

    .line 355
    and-int/2addr v8, v12

    .line 356
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 357
    .line 358
    .line 359
    move-result v12

    .line 360
    invoke-virtual {v0, v10, v12}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    .line 361
    .line 362
    .line 363
    move-result v10

    .line 364
    and-int/2addr v9, v10

    .line 365
    add-int/lit8 v7, v7, -0x1

    .line 366
    .line 367
    goto :goto_a

    .line 368
    :cond_15
    const/4 v7, 0x2

    .line 369
    if-eqz v8, :cond_16

    .line 370
    .line 371
    move v8, v7

    .line 372
    goto :goto_b

    .line 373
    :cond_16
    const/4 v8, 0x3

    .line 374
    :goto_b
    if-nez v9, :cond_17

    .line 375
    .line 376
    or-int/lit8 v8, v8, 0x20

    .line 377
    .line 378
    :cond_17
    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 379
    .line 380
    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 381
    .line 382
    iget-object v12, v10, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 383
    .line 384
    iget v13, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 385
    .line 386
    invoke-static {v9, v12, v13}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationBackgroundWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;

    .line 387
    .line 388
    .line 389
    move-result-object v9

    .line 390
    if-nez v9, :cond_19

    .line 391
    .line 392
    iget-object v12, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 393
    .line 394
    if-nez v12, :cond_18

    .line 395
    .line 396
    goto :goto_c

    .line 397
    :cond_18
    move v12, v3

    .line 398
    goto :goto_d

    .line 399
    :cond_19
    :goto_c
    move v12, v6

    .line 400
    :goto_d
    iget v13, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 401
    .line 402
    const/high16 v16, 0x100000

    .line 403
    .line 404
    if-ne v13, v7, :cond_1c

    .line 405
    .line 406
    if-eqz v2, :cond_1b

    .line 407
    .line 408
    iget-boolean v13, v0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 409
    .line 410
    if-nez v13, :cond_1a

    .line 411
    .line 412
    iget-boolean v13, v0, Lcom/android/server/wm/DisplayPolicy;->mFreeformTaskSurfaceOverlappingWithNavBar:Z

    .line 413
    .line 414
    if-eqz v13, :cond_1b

    .line 415
    .line 416
    :cond_1a
    :goto_e
    and-int/lit8 v8, v8, -0x3

    .line 417
    .line 418
    or-int v8, v8, v16

    .line 419
    .line 420
    goto :goto_11

    .line 421
    :cond_1b
    if-eqz v12, :cond_20

    .line 422
    .line 423
    :goto_f
    and-int/lit8 v8, v8, -0x3

    .line 424
    .line 425
    goto :goto_11

    .line 426
    :cond_1c
    if-nez v13, :cond_1f

    .line 427
    .line 428
    if-nez v5, :cond_1e

    .line 429
    .line 430
    if-eqz v2, :cond_1d

    .line 431
    .line 432
    goto :goto_10

    .line 433
    :cond_1d
    if-eqz v12, :cond_20

    .line 434
    .line 435
    goto :goto_f

    .line 436
    :cond_1e
    :goto_10
    iget-boolean v13, v0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 437
    .line 438
    if-nez v13, :cond_1a

    .line 439
    .line 440
    iget-boolean v13, v0, Lcom/android/server/wm/DisplayPolicy;->mFreeformTaskSurfaceOverlappingWithNavBar:Z

    .line 441
    .line 442
    if-eqz v13, :cond_20

    .line 443
    .line 444
    goto :goto_e

    .line 445
    :cond_1f
    if-ne v13, v6, :cond_20

    .line 446
    .line 447
    if-eqz v2, :cond_20

    .line 448
    .line 449
    goto :goto_f

    .line 450
    :cond_20
    :goto_11
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 451
    .line 452
    .line 453
    move-result v13

    .line 454
    invoke-virtual {v0, v9, v13}, Lcom/android/server/wm/DisplayPolicy;->isFullyTransparentAllowed(Lcom/android/server/wm/WindowState;I)Z

    .line 455
    .line 456
    .line 457
    move-result v13

    .line 458
    if-nez v13, :cond_21

    .line 459
    .line 460
    or-int/lit8 v8, v8, 0x40

    .line 461
    .line 462
    :cond_21
    iget-object v13, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 463
    .line 464
    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 465
    .line 466
    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 467
    .line 468
    iget-boolean v13, v13, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    .line 469
    .line 470
    const/4 v15, -0x1

    .line 471
    const/high16 v17, 0x200000

    .line 472
    .line 473
    if-nez v13, :cond_24

    .line 474
    .line 475
    iget-object v13, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 476
    .line 477
    iget-object v13, v13, Lcom/android/server/wm/DisplayPolicyExt;->mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

    .line 478
    .line 479
    if-eqz v13, :cond_22

    .line 480
    .line 481
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 482
    .line 483
    .line 484
    move-result v13

    .line 485
    if-eqz v13, :cond_22

    .line 486
    .line 487
    goto :goto_12

    .line 488
    :cond_22
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_SYSTEM_BAR_POLICY:Z

    .line 489
    .line 490
    if-eqz v13, :cond_23

    .line 491
    .line 492
    iget-object v13, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 493
    .line 494
    if-eqz v13, :cond_23

    .line 495
    .line 496
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->isSplitEmbedded()Z

    .line 497
    .line 498
    .line 499
    move-result v13

    .line 500
    if-eqz v13, :cond_23

    .line 501
    .line 502
    and-int/lit8 v2, v8, -0x3

    .line 503
    .line 504
    or-int v16, v2, v17

    .line 505
    .line 506
    goto/16 :goto_17

    .line 507
    .line 508
    :cond_23
    if-eqz v2, :cond_25

    .line 509
    .line 510
    if-eqz v12, :cond_25

    .line 511
    .line 512
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 513
    .line 514
    if-eqz v2, :cond_24

    .line 515
    .line 516
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 517
    .line 518
    .line 519
    move-result v5

    .line 520
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    .line 521
    .line 522
    .line 523
    move-result v2

    .line 524
    if-nez v2, :cond_24

    .line 525
    .line 526
    goto/16 :goto_17

    .line 527
    .line 528
    :cond_24
    :goto_12
    and-int/lit8 v16, v8, -0x3

    .line 529
    .line 530
    goto/16 :goto_17

    .line 531
    .line 532
    :cond_25
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_SYSTEMUI_VISIBILITY:Z

    .line 533
    .line 534
    if-eqz v2, :cond_26

    .line 535
    .line 536
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    if-eqz v2, :cond_26

    .line 545
    .line 546
    invoke-virtual {v10}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isFlexPanelEnabled()Z

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    if-nez v2, :cond_24

    .line 555
    .line 556
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 557
    .line 558
    if-eqz v2, :cond_26

    .line 559
    .line 560
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 561
    .line 562
    if-eqz v2, :cond_26

    .line 563
    .line 564
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mIsFlexPanel:Z

    .line 565
    .line 566
    if-eqz v2, :cond_26

    .line 567
    .line 568
    goto :goto_12

    .line 569
    :cond_26
    iget-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mIsPipWindowOverlappingWithNavBar:Z

    .line 570
    .line 571
    if-eqz v2, :cond_27

    .line 572
    .line 573
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    invoke-virtual {v2, v7, v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    if-eqz v2, :cond_27

    .line 582
    .line 583
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 584
    .line 585
    .line 586
    move-result v2

    .line 587
    if-eqz v2, :cond_27

    .line 588
    .line 589
    and-int/lit8 v2, v8, -0x3

    .line 590
    .line 591
    or-int/lit8 v16, v2, 0x40

    .line 592
    .line 593
    goto/16 :goto_17

    .line 594
    .line 595
    :cond_27
    if-eqz v5, :cond_30

    .line 596
    .line 597
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_TRANSPARENT_NAVIGATION_BAR:Z

    .line 598
    .line 599
    if-eqz v2, :cond_2f

    .line 600
    .line 601
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 602
    .line 603
    if-nez v2, :cond_29

    .line 604
    .line 605
    iget v2, v0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 606
    .line 607
    and-int/2addr v2, v7

    .line 608
    if-nez v2, :cond_28

    .line 609
    .line 610
    goto :goto_15

    .line 611
    :cond_28
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 612
    .line 613
    if-nez v2, :cond_2e

    .line 614
    .line 615
    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 616
    .line 617
    if-eqz v2, :cond_33

    .line 618
    .line 619
    goto :goto_15

    .line 620
    :cond_29
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 621
    .line 622
    .line 623
    move-result v2

    .line 624
    if-nez v2, :cond_2a

    .line 625
    .line 626
    goto :goto_15

    .line 627
    :cond_2a
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 628
    .line 629
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 630
    .line 631
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 632
    .line 633
    .line 634
    move-result v9

    .line 635
    invoke-virtual {v2, v9}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    .line 636
    .line 637
    .line 638
    move-result v2

    .line 639
    if-eqz v2, :cond_2b

    .line 640
    .line 641
    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 642
    .line 643
    const/high16 v9, -0x80000000

    .line 644
    .line 645
    and-int/2addr v2, v9

    .line 646
    if-eqz v2, :cond_2b

    .line 647
    .line 648
    move v2, v6

    .line 649
    goto :goto_13

    .line 650
    :cond_2b
    move v2, v3

    .line 651
    :goto_13
    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 652
    .line 653
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 654
    .line 655
    .line 656
    move-result-object v9

    .line 657
    if-eqz v2, :cond_2c

    .line 658
    .line 659
    if-eqz v9, :cond_2c

    .line 660
    .line 661
    iget v10, v9, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 662
    .line 663
    if-eq v10, v15, :cond_2c

    .line 664
    .line 665
    sget-object v10, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 666
    .line 667
    invoke-virtual {v9, v10}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 671
    .line 672
    .line 673
    move-result v10

    .line 674
    iget v9, v9, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 675
    .line 676
    if-ge v10, v9, :cond_2c

    .line 677
    .line 678
    move v2, v3

    .line 679
    :cond_2c
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 680
    .line 681
    and-int/2addr v5, v11

    .line 682
    if-eqz v5, :cond_2d

    .line 683
    .line 684
    move v5, v6

    .line 685
    goto :goto_14

    .line 686
    :cond_2d
    move v5, v3

    .line 687
    :goto_14
    if-nez v2, :cond_2e

    .line 688
    .line 689
    if-eqz v5, :cond_33

    .line 690
    .line 691
    :cond_2e
    :goto_15
    and-int/lit8 v2, v8, -0x3

    .line 692
    .line 693
    move/from16 v16, v2

    .line 694
    .line 695
    goto :goto_17

    .line 696
    :cond_2f
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    .line 697
    .line 698
    if-eqz v2, :cond_33

    .line 699
    .line 700
    goto/16 :goto_12

    .line 701
    .line 702
    :cond_30
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_MINIMIZED_IME_INSET_ANIM:Z

    .line 703
    .line 704
    if-eqz v2, :cond_33

    .line 705
    .line 706
    if-eqz v9, :cond_33

    .line 707
    .line 708
    iget-object v2, v10, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 709
    .line 710
    if-ne v9, v2, :cond_33

    .line 711
    .line 712
    iget-object v2, v9, Lcom/android/server/wm/WindowState;->mMinimizedInsets:Landroid/graphics/Rect;

    .line 713
    .line 714
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 715
    .line 716
    if-nez v2, :cond_31

    .line 717
    .line 718
    goto :goto_16

    .line 719
    :cond_31
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    .line 720
    .line 721
    .line 722
    move-result v2

    .line 723
    if-nez v2, :cond_32

    .line 724
    .line 725
    goto :goto_16

    .line 726
    :cond_32
    and-int/lit8 v2, v8, -0x41

    .line 727
    .line 728
    or-int/lit8 v16, v2, 0x2

    .line 729
    .line 730
    goto :goto_17

    .line 731
    :cond_33
    :goto_16
    move/from16 v16, v8

    .line 732
    .line 733
    :goto_17
    iget-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mIsImmersiveMode:Z

    .line 734
    .line 735
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    .line 736
    .line 737
    .line 738
    move-result v5

    .line 739
    if-eq v2, v5, :cond_37

    .line 740
    .line 741
    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mIsImmersiveMode:Z

    .line 742
    .line 743
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    if-nez v2, :cond_34

    .line 748
    .line 749
    move v2, v15

    .line 750
    goto :goto_18

    .line 751
    :cond_34
    iget v2, v2, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 752
    .line 753
    :goto_18
    sget-boolean v8, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    .line 754
    .line 755
    if-nez v8, :cond_36

    .line 756
    .line 757
    sget-boolean v8, Landroid/view/ViewRootImpl;->CLIENT_IMMERSIVE_CONFIRMATION:Z

    .line 758
    .line 759
    if-nez v8, :cond_36

    .line 760
    .line 761
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 762
    .line 763
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 764
    .line 765
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 766
    .line 767
    check-cast v8, Lcom/android/server/policy/PhoneWindowManager;

    .line 768
    .line 769
    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    .line 770
    .line 771
    .line 772
    iget-object v2, v2, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    .line 773
    .line 774
    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 775
    .line 776
    .line 777
    if-eqz v5, :cond_35

    .line 778
    .line 779
    goto :goto_19

    .line 780
    :cond_35
    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 781
    .line 782
    .line 783
    goto :goto_19

    .line 784
    :cond_36
    new-instance v8, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;

    .line 785
    .line 786
    invoke-direct {v8, v2, v5}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda16;-><init>(IZ)V

    .line 787
    .line 788
    .line 789
    new-instance v2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;

    .line 790
    .line 791
    invoke-direct {v2, v0, v8}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V

    .line 792
    .line 793
    .line 794
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 795
    .line 796
    invoke-virtual {v8, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 797
    .line 798
    .line 799
    :goto_19
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_IMMERSIVE_MODE:Z

    .line 800
    .line 801
    if-eqz v2, :cond_37

    .line 802
    .line 803
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 804
    .line 805
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 806
    .line 807
    .line 808
    move-result v2

    .line 809
    if-eqz v2, :cond_37

    .line 810
    .line 811
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 812
    .line 813
    .line 814
    move-result-object v2

    .line 815
    if-eqz v2, :cond_37

    .line 816
    .line 817
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 818
    .line 819
    .line 820
    move-result-object v2

    .line 821
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 822
    .line 823
    .line 824
    move-result v2

    .line 825
    if-eqz v2, :cond_37

    .line 826
    .line 827
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 828
    .line 829
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 830
    .line 831
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 832
    .line 833
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 834
    .line 835
    .line 836
    move-result-object v8

    .line 837
    iget-boolean v9, v0, Lcom/android/server/wm/DisplayPolicy;->mIsImmersiveMode:Z

    .line 838
    .line 839
    invoke-virtual {v2, v8, v9}, Lcom/android/server/wm/TaskOrganizerController;->onImmersiveModeChanged(Lcom/android/server/wm/Task;Z)V

    .line 840
    .line 841
    .line 842
    :cond_37
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_IMMERSIVE_MODE:Z

    .line 843
    .line 844
    if-eqz v2, :cond_49

    .line 845
    .line 846
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 847
    .line 848
    if-eqz v8, :cond_49

    .line 849
    .line 850
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 851
    .line 852
    .line 853
    move-result-object v8

    .line 854
    if-eqz v8, :cond_49

    .line 855
    .line 856
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 857
    .line 858
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 859
    .line 860
    .line 861
    move-result-object v8

    .line 862
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    .line 863
    .line 864
    .line 865
    move-result v8

    .line 866
    if-eqz v8, :cond_49

    .line 867
    .line 868
    iget-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mIsCaptionImmersiveMode:Z

    .line 869
    .line 870
    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 871
    .line 872
    if-eqz v2, :cond_3a

    .line 873
    .line 874
    if-nez v9, :cond_38

    .line 875
    .line 876
    goto :goto_1a

    .line 877
    :cond_38
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 878
    .line 879
    if-eq v9, v2, :cond_3a

    .line 880
    .line 881
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeDream()Z

    .line 882
    .line 883
    .line 884
    move-result v2

    .line 885
    if-eqz v2, :cond_39

    .line 886
    .line 887
    goto :goto_1a

    .line 888
    :cond_39
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX:Z

    .line 889
    .line 890
    if-eqz v2, :cond_3b

    .line 891
    .line 892
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 893
    .line 894
    .line 895
    move-result v2

    .line 896
    if-eqz v2, :cond_3b

    .line 897
    .line 898
    :cond_3a
    :goto_1a
    move v2, v3

    .line 899
    goto :goto_1b

    .line 900
    :cond_3b
    iget-boolean v2, v9, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 901
    .line 902
    const/4 v10, 0x0

    .line 903
    if-eqz v2, :cond_3c

    .line 904
    .line 905
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 906
    .line 907
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 908
    .line 909
    invoke-virtual {v2, v9, v3}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    .line 910
    .line 911
    .line 912
    move-result-object v2

    .line 913
    if-eqz v2, :cond_3c

    .line 914
    .line 915
    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 916
    .line 917
    .line 918
    move-result-object v10

    .line 919
    :cond_3c
    if-eqz v10, :cond_3d

    .line 920
    .line 921
    move-object v9, v10

    .line 922
    :cond_3d
    iget-object v2, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 923
    .line 924
    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 925
    .line 926
    iget v2, v2, Landroid/view/InsetsFlags;->behavior:I

    .line 927
    .line 928
    if-ne v2, v7, :cond_3a

    .line 929
    .line 930
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 931
    .line 932
    .line 933
    move-result v2

    .line 934
    if-eq v2, v6, :cond_3e

    .line 935
    .line 936
    goto :goto_1a

    .line 937
    :cond_3e
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 938
    .line 939
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 940
    .line 941
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 942
    .line 943
    .line 944
    move-result v9

    .line 945
    invoke-virtual {v2, v9}, Lcom/android/server/wm/InsetsPolicy;->hasHiddenSources(I)Z

    .line 946
    .line 947
    .line 948
    move-result v2

    .line 949
    if-nez v2, :cond_3f

    .line 950
    .line 951
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 952
    .line 953
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 954
    .line 955
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 956
    .line 957
    .line 958
    move-result v9

    .line 959
    invoke-virtual {v2, v9}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    .line 960
    .line 961
    .line 962
    move-result v2

    .line 963
    if-eqz v2, :cond_3a

    .line 964
    .line 965
    :cond_3f
    move v2, v6

    .line 966
    :goto_1b
    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 967
    .line 968
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 969
    .line 970
    .line 971
    move-result v9

    .line 972
    if-eqz v9, :cond_46

    .line 973
    .line 974
    if-eqz v2, :cond_40

    .line 975
    .line 976
    if-eqz v8, :cond_40

    .line 977
    .line 978
    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 979
    .line 980
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 981
    .line 982
    .line 983
    move-result-object v9

    .line 984
    iget v9, v9, Lcom/android/server/wm/Task;->mTaskId:I

    .line 985
    .line 986
    iget v10, v0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveTaskId:I

    .line 987
    .line 988
    if-eq v9, v10, :cond_40

    .line 989
    .line 990
    move v9, v6

    .line 991
    goto :goto_1c

    .line 992
    :cond_40
    move v9, v3

    .line 993
    :goto_1c
    if-ne v8, v2, :cond_44

    .line 994
    .line 995
    if-eqz v9, :cond_41

    .line 996
    .line 997
    goto :goto_1e

    .line 998
    :cond_41
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 999
    .line 1000
    if-eqz v2, :cond_42

    .line 1001
    .line 1002
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 1003
    .line 1004
    .line 1005
    move-result v2

    .line 1006
    if-eqz v2, :cond_42

    .line 1007
    .line 1008
    move v2, v6

    .line 1009
    goto :goto_1d

    .line 1010
    :cond_42
    move v2, v3

    .line 1011
    :goto_1d
    xor-int/2addr v2, v6

    .line 1012
    iget-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mWasStatusInvisible:Z

    .line 1013
    .line 1014
    if-eq v8, v2, :cond_49

    .line 1015
    .line 1016
    iput-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mWasStatusInvisible:Z

    .line 1017
    .line 1018
    iget-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mIsVisibleBySwipe:Z

    .line 1019
    .line 1020
    if-eqz v8, :cond_43

    .line 1021
    .line 1022
    iput-boolean v3, v0, Lcom/android/server/wm/DisplayPolicy;->mIsVisibleBySwipe:Z

    .line 1023
    .line 1024
    goto/16 :goto_21

    .line 1025
    .line 1026
    :cond_43
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1027
    .line 1028
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1029
    .line 1030
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 1031
    .line 1032
    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1033
    .line 1034
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v9

    .line 1038
    invoke-virtual {v8, v9, v2}, Lcom/android/server/wm/TaskOrganizerController;->onImmersiveModeChanged(Lcom/android/server/wm/Task;Z)V

    .line 1039
    .line 1040
    .line 1041
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1042
    .line 1043
    invoke-virtual {v0, v8, v2}, Lcom/android/server/wm/DisplayPolicy;->setTransientVisibilityChangeListener(Lcom/android/server/wm/WindowState;Z)V

    .line 1044
    .line 1045
    .line 1046
    goto :goto_21

    .line 1047
    :cond_44
    :goto_1e
    iput-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mIsCaptionImmersiveMode:Z

    .line 1048
    .line 1049
    if-eqz v2, :cond_45

    .line 1050
    .line 1051
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1052
    .line 1053
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v8

    .line 1057
    iget v15, v8, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1058
    .line 1059
    :cond_45
    iput v15, v0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveTaskId:I

    .line 1060
    .line 1061
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1062
    .line 1063
    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1064
    .line 1065
    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 1066
    .line 1067
    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1068
    .line 1069
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v9

    .line 1073
    invoke-virtual {v8, v9, v2}, Lcom/android/server/wm/TaskOrganizerController;->onImmersiveModeChanged(Lcom/android/server/wm/Task;Z)V

    .line 1074
    .line 1075
    .line 1076
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 1077
    .line 1078
    invoke-virtual {v0, v8, v2}, Lcom/android/server/wm/DisplayPolicy;->setTransientVisibilityChangeListener(Lcom/android/server/wm/WindowState;Z)V

    .line 1079
    .line 1080
    .line 1081
    goto :goto_21

    .line 1082
    :cond_46
    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1083
    .line 1084
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    .line 1085
    .line 1086
    .line 1087
    move-result v9

    .line 1088
    if-nez v9, :cond_49

    .line 1089
    .line 1090
    if-eq v8, v2, :cond_49

    .line 1091
    .line 1092
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v8

    .line 1096
    if-eqz v8, :cond_49

    .line 1097
    .line 1098
    iput-boolean v2, v0, Lcom/android/server/wm/DisplayPolicy;->mIsCaptionImmersiveMode:Z

    .line 1099
    .line 1100
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v8

    .line 1104
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 1105
    .line 1106
    .line 1107
    move-result v9

    .line 1108
    if-nez v9, :cond_48

    .line 1109
    .line 1110
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    .line 1111
    .line 1112
    .line 1113
    move-result v9

    .line 1114
    if-nez v9, :cond_48

    .line 1115
    .line 1116
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    .line 1117
    .line 1118
    .line 1119
    move-result v9

    .line 1120
    if-eqz v9, :cond_47

    .line 1121
    .line 1122
    goto :goto_1f

    .line 1123
    :cond_47
    new-instance v9, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 1124
    .line 1125
    const/16 v10, 0xc

    .line 1126
    .line 1127
    invoke-direct {v9, v10}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1128
    .line 1129
    .line 1130
    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v9

    .line 1134
    if-eqz v9, :cond_48

    .line 1135
    .line 1136
    if-eqz v2, :cond_48

    .line 1137
    .line 1138
    move v2, v6

    .line 1139
    goto :goto_20

    .line 1140
    :cond_48
    :goto_1f
    move v2, v3

    .line 1141
    :goto_20
    iget-boolean v9, v8, Lcom/android/server/wm/Task;->mIsCaptionFullScreenState:Z

    .line 1142
    .line 1143
    if-eq v9, v2, :cond_49

    .line 1144
    .line 1145
    iput-boolean v2, v8, Lcom/android/server/wm/Task;->mIsCaptionFullScreenState:Z

    .line 1146
    .line 1147
    invoke-virtual {v8, v3}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 1148
    .line 1149
    .line 1150
    :cond_49
    :goto_21
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 1151
    .line 1152
    .line 1153
    move-result v2

    .line 1154
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    .line 1155
    .line 1156
    .line 1157
    move-result v2

    .line 1158
    xor-int/2addr v2, v6

    .line 1159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1160
    .line 1161
    .line 1162
    move-result-wide v8

    .line 1163
    iget-wide v12, v0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    .line 1164
    .line 1165
    const-wide/16 v6, 0x0

    .line 1166
    .line 1167
    cmp-long v18, v12, v6

    .line 1168
    .line 1169
    if-eqz v18, :cond_4a

    .line 1170
    .line 1171
    sub-long/2addr v8, v12

    .line 1172
    const-wide/16 v12, 0x7530

    .line 1173
    .line 1174
    cmp-long v8, v8, v12

    .line 1175
    .line 1176
    if-gtz v8, :cond_4a

    .line 1177
    .line 1178
    const/4 v8, 0x1

    .line 1179
    goto :goto_22

    .line 1180
    :cond_4a
    move v8, v3

    .line 1181
    :goto_22
    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1182
    .line 1183
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v9

    .line 1187
    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1188
    .line 1189
    if-eqz v8, :cond_4b

    .line 1190
    .line 1191
    if-eqz v2, :cond_4b

    .line 1192
    .line 1193
    if-eqz v5, :cond_4b

    .line 1194
    .line 1195
    iget-boolean v2, v9, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 1196
    .line 1197
    if-eqz v2, :cond_4b

    .line 1198
    .line 1199
    iput-wide v6, v0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    .line 1200
    .line 1201
    const/high16 v2, 0x1600000

    .line 1202
    .line 1203
    and-int v5, v4, v2

    .line 1204
    .line 1205
    if-ne v5, v2, :cond_4c

    .line 1206
    .line 1207
    :cond_4b
    const/4 v6, 0x1

    .line 1208
    goto :goto_23

    .line 1209
    :cond_4c
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1210
    .line 1211
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mInsetsPolicy:Lcom/android/server/wm/InsetsPolicy;

    .line 1212
    .line 1213
    sget v5, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:I

    .line 1214
    .line 1215
    const/4 v6, 0x1

    .line 1216
    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/InsetsPolicy;->showTransient(IZ)V

    .line 1217
    .line 1218
    .line 1219
    :goto_23
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mRelaunchingSystemBarColorApps:Landroid/util/ArraySet;

    .line 1220
    .line 1221
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 1222
    .line 1223
    .line 1224
    move-result v2

    .line 1225
    if-nez v2, :cond_4d

    .line 1226
    .line 1227
    return-void

    .line 1228
    :cond_4d
    iget-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarColorWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1229
    .line 1230
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1231
    .line 1232
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1233
    .line 1234
    iget v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 1235
    .line 1236
    invoke-static {v2, v5, v7}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v2

    .line 1240
    if-eqz v2, :cond_4e

    .line 1241
    .line 1242
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1243
    .line 1244
    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1245
    .line 1246
    if-ne v2, v5, :cond_4e

    .line 1247
    .line 1248
    move/from16 v18, v6

    .line 1249
    .line 1250
    goto :goto_24

    .line 1251
    :cond_4e
    move/from16 v18, v3

    .line 1252
    .line 1253
    :goto_24
    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 1254
    .line 1255
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1256
    .line 1257
    .line 1258
    if-ne v1, v2, :cond_4f

    .line 1259
    .line 1260
    :goto_25
    move v13, v3

    .line 1261
    goto :goto_27

    .line 1262
    :cond_4f
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1263
    .line 1264
    if-eqz v5, :cond_50

    .line 1265
    .line 1266
    goto :goto_25

    .line 1267
    :cond_50
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;)Z

    .line 1268
    .line 1269
    .line 1270
    move-result v5

    .line 1271
    if-nez v5, :cond_51

    .line 1272
    .line 1273
    goto :goto_25

    .line 1274
    :cond_51
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1275
    .line 1276
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1277
    .line 1278
    and-int/lit8 v5, v5, 0x20

    .line 1279
    .line 1280
    if-eqz v5, :cond_52

    .line 1281
    .line 1282
    move v5, v6

    .line 1283
    goto :goto_26

    .line 1284
    :cond_52
    move v5, v3

    .line 1285
    :goto_26
    move v13, v5

    .line 1286
    :goto_27
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1287
    .line 1288
    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 1289
    .line 1290
    iget v5, v5, Landroid/view/InsetsFlags;->appearance:I

    .line 1291
    .line 1292
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 1293
    .line 1294
    .line 1295
    move-result v7

    .line 1296
    if-eqz v7, :cond_53

    .line 1297
    .line 1298
    and-int/lit8 v7, v5, 0x4

    .line 1299
    .line 1300
    if-eqz v7, :cond_53

    .line 1301
    .line 1302
    and-int/lit8 v5, v5, -0x5

    .line 1303
    .line 1304
    :cond_53
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_SYSTEM_BAR_POLICY:Z

    .line 1305
    .line 1306
    if-eqz v7, :cond_54

    .line 1307
    .line 1308
    if-eqz v18, :cond_54

    .line 1309
    .line 1310
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarBackgroundWindowCandidate:Lcom/android/server/wm/WindowState;

    .line 1311
    .line 1312
    if-eqz v7, :cond_54

    .line 1313
    .line 1314
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isSplitEmbedded()Z

    .line 1315
    .line 1316
    .line 1317
    move-result v7

    .line 1318
    if-eqz v7, :cond_54

    .line 1319
    .line 1320
    and-int v7, v16, v17

    .line 1321
    .line 1322
    if-eqz v7, :cond_54

    .line 1323
    .line 1324
    const v7, -0x200001

    .line 1325
    .line 1326
    .line 1327
    and-int v16, v16, v7

    .line 1328
    .line 1329
    :cond_54
    if-eqz v13, :cond_55

    .line 1330
    .line 1331
    move-object v7, v1

    .line 1332
    goto :goto_28

    .line 1333
    :cond_55
    move-object v7, v2

    .line 1334
    :goto_28
    invoke-virtual {v0, v5, v7}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;)I

    .line 1335
    .line 1336
    .line 1337
    move-result v5

    .line 1338
    or-int v12, v5, v16

    .line 1339
    .line 1340
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 1341
    .line 1342
    .line 1343
    move-result v5

    .line 1344
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    .line 1345
    .line 1346
    .line 1347
    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 1348
    .line 1349
    if-nez v5, :cond_56

    .line 1350
    .line 1351
    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 1352
    .line 1353
    if-eqz v5, :cond_57

    .line 1354
    .line 1355
    :cond_56
    invoke-static {v1}, Lcom/android/server/wm/PolicyControl;->canBeSplitImmersiveTarget(Lcom/android/server/wm/WindowState;)Z

    .line 1356
    .line 1357
    .line 1358
    move-result v5

    .line 1359
    if-eqz v5, :cond_57

    .line 1360
    .line 1361
    const/4 v15, 0x2

    .line 1362
    goto :goto_29

    .line 1363
    :cond_57
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1364
    .line 1365
    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    .line 1366
    .line 1367
    iget v7, v5, Landroid/view/InsetsFlags;->behavior:I

    .line 1368
    .line 1369
    move v15, v7

    .line 1370
    :goto_29
    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1371
    .line 1372
    iget-object v10, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1373
    .line 1374
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 1375
    .line 1376
    .line 1377
    move-result v5

    .line 1378
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    .line 1379
    .line 1380
    .line 1381
    move-result v5

    .line 1382
    if-eqz v5, :cond_59

    .line 1383
    .line 1384
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 1385
    .line 1386
    .line 1387
    move-result v5

    .line 1388
    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    .line 1389
    .line 1390
    .line 1391
    move-result v5

    .line 1392
    if-nez v5, :cond_58

    .line 1393
    .line 1394
    goto :goto_2a

    .line 1395
    :cond_58
    move v5, v3

    .line 1396
    goto :goto_2b

    .line 1397
    :cond_59
    :goto_2a
    move v5, v6

    .line 1398
    :goto_2b
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 1399
    .line 1400
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1401
    .line 1402
    .line 1403
    move-result v7

    .line 1404
    new-array v9, v7, [Lcom/android/internal/view/AppearanceRegion;

    .line 1405
    .line 1406
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 1407
    .line 1408
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1409
    .line 1410
    .line 1411
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 1412
    .line 1413
    invoke-static {v7, v14}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 1414
    .line 1415
    .line 1416
    iget v7, v0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    .line 1417
    .line 1418
    if-eq v7, v4, :cond_5a

    .line 1419
    .line 1420
    iput v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    .line 1421
    .line 1422
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v7

    .line 1426
    new-instance v8, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;

    .line 1427
    .line 1428
    invoke-direct {v8, v14, v4, v7}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda8;-><init>(IILjava/lang/String;)V

    .line 1429
    .line 1430
    .line 1431
    new-instance v4, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;

    .line 1432
    .line 1433
    invoke-direct {v4, v0, v8}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V

    .line 1434
    .line 1435
    .line 1436
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 1437
    .line 1438
    invoke-virtual {v7, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1439
    .line 1440
    .line 1441
    :cond_5a
    iget v8, v1, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 1442
    .line 1443
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    .line 1444
    .line 1445
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1446
    .line 1447
    .line 1448
    move-result v4

    .line 1449
    new-array v7, v4, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 1450
    .line 1451
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLetterboxDetails:Ljava/util/ArrayList;

    .line 1452
    .line 1453
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1454
    .line 1455
    .line 1456
    iget v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 1457
    .line 1458
    if-ne v4, v12, :cond_5b

    .line 1459
    .line 1460
    iget v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    .line 1461
    .line 1462
    if-ne v4, v15, :cond_5b

    .line 1463
    .line 1464
    iget v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastRequestedVisibleTypes:I

    .line 1465
    .line 1466
    if-ne v4, v8, :cond_5b

    .line 1467
    .line 1468
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Ljava/lang/String;

    .line 1469
    .line 1470
    invoke-static {v4, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1471
    .line 1472
    .line 1473
    move-result v4

    .line 1474
    if-eqz v4, :cond_5b

    .line 1475
    .line 1476
    iget-boolean v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 1477
    .line 1478
    if-ne v4, v5, :cond_5b

    .line 1479
    .line 1480
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1481
    .line 1482
    invoke-static {v4, v9}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 1483
    .line 1484
    .line 1485
    move-result v4

    .line 1486
    if-eqz v4, :cond_5b

    .line 1487
    .line 1488
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 1489
    .line 1490
    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 1491
    .line 1492
    .line 1493
    move-result v4

    .line 1494
    if-eqz v4, :cond_5b

    .line 1495
    .line 1496
    return-void

    .line 1497
    :cond_5b
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1498
    .line 1499
    iget-boolean v4, v4, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 1500
    .line 1501
    if-eqz v4, :cond_5f

    .line 1502
    .line 1503
    iget-boolean v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 1504
    .line 1505
    if-ne v4, v5, :cond_5c

    .line 1506
    .line 1507
    iget v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 1508
    .line 1509
    xor-int/2addr v4, v12

    .line 1510
    and-int/2addr v4, v11

    .line 1511
    if-eqz v4, :cond_5f

    .line 1512
    .line 1513
    :cond_5c
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1514
    .line 1515
    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 1516
    .line 1517
    if-nez v5, :cond_5d

    .line 1518
    .line 1519
    and-int/lit8 v11, v12, 0x4

    .line 1520
    .line 1521
    if-eqz v11, :cond_5e

    .line 1522
    .line 1523
    :cond_5d
    move v3, v6

    .line 1524
    :cond_5e
    invoke-virtual {v4, v3}, Lcom/android/server/input/InputManagerService;->setSystemUiLightsOut(Z)V

    .line 1525
    .line 1526
    .line 1527
    :cond_5f
    iput v12, v0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 1528
    .line 1529
    iput v15, v0, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    .line 1530
    .line 1531
    iput v8, v0, Lcom/android/server/wm/DisplayPolicy;->mLastRequestedVisibleTypes:I

    .line 1532
    .line 1533
    iput-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mFocusedApp:Ljava/lang/String;

    .line 1534
    .line 1535
    iput-boolean v5, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 1536
    .line 1537
    iput-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mLastStatusBarAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 1538
    .line 1539
    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mLastLetterboxDetails:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 1540
    .line 1541
    new-instance v3, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;

    .line 1542
    .line 1543
    const/16 v16, 0x0

    .line 1544
    .line 1545
    move-object v4, v3

    .line 1546
    move v5, v14

    .line 1547
    move v6, v12

    .line 1548
    move-object/from16 v17, v7

    .line 1549
    .line 1550
    move-object v7, v9

    .line 1551
    move v11, v8

    .line 1552
    move/from16 v8, v18

    .line 1553
    .line 1554
    move-object/from16 v19, v9

    .line 1555
    .line 1556
    move v9, v15

    .line 1557
    move-object/from16 v20, v10

    .line 1558
    .line 1559
    move v10, v11

    .line 1560
    move/from16 v21, v11

    .line 1561
    .line 1562
    move-object/from16 v11, v20

    .line 1563
    .line 1564
    move/from16 v22, v12

    .line 1565
    .line 1566
    move-object/from16 v12, v17

    .line 1567
    .line 1568
    move-object/from16 v23, v2

    .line 1569
    .line 1570
    move v2, v13

    .line 1571
    move/from16 v13, v16

    .line 1572
    .line 1573
    invoke-direct/range {v4 .. v13}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;-><init>(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;I)V

    .line 1574
    .line 1575
    .line 1576
    new-instance v4, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;

    .line 1577
    .line 1578
    invoke-direct {v4, v0, v3}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V

    .line 1579
    .line 1580
    .line 1581
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 1582
    .line 1583
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1584
    .line 1585
    .line 1586
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    .line 1587
    .line 1588
    if-eqz v3, :cond_60

    .line 1589
    .line 1590
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1591
    .line 1592
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 1593
    .line 1594
    .line 1595
    move-result v3

    .line 1596
    if-eqz v3, :cond_60

    .line 1597
    .line 1598
    new-instance v3, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;

    .line 1599
    .line 1600
    const/4 v13, 0x1

    .line 1601
    move-object v4, v3

    .line 1602
    move v5, v14

    .line 1603
    move/from16 v6, v22

    .line 1604
    .line 1605
    move-object/from16 v7, v19

    .line 1606
    .line 1607
    move/from16 v8, v18

    .line 1608
    .line 1609
    move v9, v15

    .line 1610
    move/from16 v10, v21

    .line 1611
    .line 1612
    move-object/from16 v11, v20

    .line 1613
    .line 1614
    move-object/from16 v12, v17

    .line 1615
    .line 1616
    invoke-direct/range {v4 .. v13}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda9;-><init>(II[Lcom/android/internal/view/AppearanceRegion;ZIILjava/lang/String;[Lcom/android/internal/statusbar/LetterboxDetails;I)V

    .line 1617
    .line 1618
    .line 1619
    new-instance v4, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;

    .line 1620
    .line 1621
    invoke-direct {v4, v0, v3}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/DisplayPolicy;Ljava/util/function/Consumer;)V

    .line 1622
    .line 1623
    .line 1624
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    .line 1625
    .line 1626
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1627
    .line 1628
    .line 1629
    :cond_60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1630
    .line 1631
    const-string/jumbo v4, "updateSystemBarAttributes: displayId="

    .line 1632
    .line 1633
    .line 1634
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1635
    .line 1636
    .line 1637
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1638
    .line 1639
    .line 1640
    const-string v4, ", focusedCanBeNavColorWin="

    .line 1641
    .line 1642
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1643
    .line 1644
    .line 1645
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1646
    .line 1647
    .line 1648
    const-string v2, ", win="

    .line 1649
    .line 1650
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    .line 1652
    .line 1653
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1654
    .line 1655
    .line 1656
    const-string v1, ", navColorWin="

    .line 1657
    .line 1658
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    .line 1660
    .line 1661
    move-object/from16 v1, v23

    .line 1662
    .line 1663
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1664
    .line 1665
    .line 1666
    const-string v1, ", caller="

    .line 1667
    .line 1668
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    .line 1670
    .line 1671
    const/4 v1, 0x3

    .line 1672
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v1

    .line 1676
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    .line 1678
    .line 1679
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v1

    .line 1683
    const-string v2, "WindowManager"

    .line 1684
    .line 1685
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    .line 1687
    .line 1688
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1689
    .line 1690
    const-string/jumbo v3, "updateSystemBarAttributes, bhv="

    .line 1691
    .line 1692
    .line 1693
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1694
    .line 1695
    .line 1696
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1697
    .line 1698
    .line 1699
    const-string v3, ", apr="

    .line 1700
    .line 1701
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    .line 1703
    .line 1704
    move/from16 v3, v22

    .line 1705
    .line 1706
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1707
    .line 1708
    .line 1709
    const-string v3, ", statusBarAprRegions="

    .line 1710
    .line 1711
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    .line 1713
    .line 1714
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarAppearanceRegionList:Ljava/util/ArrayList;

    .line 1715
    .line 1716
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1717
    .line 1718
    .line 1719
    const-string v0, ", requestedVisibilities="

    .line 1720
    .line 1721
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    .line 1723
    .line 1724
    move/from16 v0, v21

    .line 1725
    .line 1726
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1727
    .line 1728
    .line 1729
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1730
    .line 1731
    .line 1732
    move-result-object v0

    .line 1733
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    .line 1735
    .line 1736
    return-void
.end method

.method public final validateAddingWindowLw(Landroid/view/WindowManager$LayoutParams;II)I
    .locals 6

    .line 1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2
    .line 3
    const/high16 v1, 0x20000000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    const-string v1, "DisplayPolicy"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 13
    .line 14
    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 18
    .line 19
    const/high16 v2, -0x80000000

    .line 20
    .line 21
    and-int/2addr v0, v2

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 28
    .line 29
    const/16 v2, 0x7d0

    .line 30
    .line 31
    const/4 v3, -0x7

    .line 32
    const-string v4, "android.permission.STATUS_BAR_SERVICE"

    .line 33
    .line 34
    if-eq v0, v2, :cond_7

    .line 35
    .line 36
    const/16 v2, 0x7de

    .line 37
    .line 38
    const/16 v5, -0xa

    .line 39
    .line 40
    if-eq v0, v2, :cond_6

    .line 41
    .line 42
    const/16 v2, 0x7e1

    .line 43
    .line 44
    if-eq v0, v2, :cond_5

    .line 45
    .line 46
    const/16 v2, 0x7e3

    .line 47
    .line 48
    if-eq v0, v2, :cond_4

    .line 49
    .line 50
    const/16 v2, 0x7e8

    .line 51
    .line 52
    if-eq v0, v2, :cond_3

    .line 53
    .line 54
    const/16 v2, 0x7f1

    .line 55
    .line 56
    if-eq v0, v2, :cond_5

    .line 57
    .line 58
    const/16 v2, 0x7f8

    .line 59
    .line 60
    if-eq v0, v2, :cond_2

    .line 61
    .line 62
    const/16 v2, 0x7f9

    .line 63
    .line 64
    if-eq v0, v2, :cond_5

    .line 65
    .line 66
    const-string v2, "WindowManager"

    .line 67
    .line 68
    packed-switch v0, :pswitch_data_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :pswitch_0
    const-string/jumbo p0, "validateAddingWindowLw: failed, TYPE_NAVIGATION_BAR_STANDALONE"

    .line 73
    .line 74
    .line 75
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    return v5

    .line 79
    :pswitch_1
    const-string/jumbo p0, "validateAddingWindowLw: failed, TYPE_NOTIFICATION_SHADE_STANDALONE"

    .line 80
    .line 81
    .line 82
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return v5

    .line 86
    :pswitch_2
    const-string/jumbo p0, "validateAddingWindowLw: failed, TYPE_STATUS_BAR_STANDALONE"

    .line 87
    .line 88
    .line 89
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    return v5

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    invoke-virtual {v0, v4, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 99
    .line 100
    if-eqz v0, :cond_8

    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 105
    .line 106
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_8

    .line 115
    .line 116
    return v3

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 118
    .line 119
    invoke-virtual {v0, v4, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v0, v4, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 129
    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 133
    .line 134
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_8

    .line 143
    .line 144
    return v3

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    invoke-virtual {v0, v4, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_6
    return v5

    .line 152
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {v0, v4, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 158
    .line 159
    if-eqz v0, :cond_8

    .line 160
    .line 161
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 162
    .line 163
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_8

    .line 172
    .line 173
    return v3

    .line 174
    :cond_8
    :goto_0
    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 175
    .line 176
    if-eqz p1, :cond_9

    .line 177
    .line 178
    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 179
    .line 180
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 181
    .line 182
    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-nez p1, :cond_9

    .line 187
    .line 188
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 189
    .line 190
    invoke-virtual {p0, v4, p2, p3, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_9
    const/4 p0, 0x0

    .line 194
    return p0

    .line 195
    :pswitch_data_0
    .packed-switch 0xa3d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
