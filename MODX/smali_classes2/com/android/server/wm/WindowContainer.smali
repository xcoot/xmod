.class public abstract Lcom/android/server/wm/WindowContainer;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;
.implements Lcom/android/server/wm/InsetsControlTarget;


# static fields
.field private static final INVALID_SYNC_ID:I = -0x1

.field static final POSITION_BOTTOM:I = -0x80000000

.field static final POSITION_TOP:I = 0x7fffffff

.field public static final SYNC_STATE_NONE:I = 0x0

.field public static final SYNC_STATE_READY:I = 0x2

.field public static final SYNC_STATE_WAITING_FOR_DRAW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field mAnimationBoundsLayer:Landroid/view/SurfaceControl;

.field private mAnimationLeash:Landroid/view/SurfaceControl;

.field protected final mChildren:Lcom/android/server/wm/WindowList;

.field private mCommittedReparentToAnimationLeash:Z

.field private final mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

.field protected mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

.field mDimAnimator:Lcom/android/server/wm/DimAnimator;

.field protected mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field protected final mExt:Lcom/android/server/wm/WindowManagerServiceExt;

.field mFreeformAlpha:F

.field private mInsetsOwnerDeathRecipientMap:Landroid/util/ArrayMap;

.field protected mInsetsSourceProviders:Landroid/util/SparseArray;

.field private mIsFocusable:Z

.field protected mLastDeltaRotation:I

.field private mLastLayer:I

.field private mLastMagnificationSpec:Landroid/view/MagnificationSpec;

.field protected mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

.field private mLastRelativeToLayer:Landroid/view/SurfaceControl;

.field protected final mLastSurfacePosition:Landroid/graphics/Point;

.field mLaunchTaskBehind:Z

.field private final mListeners:Ljava/util/List;

.field mLocalInsetsSources:Landroid/util/SparseArray;

.field mNeedsAnimationBoundsLayer:Z

.field mNeedsZBoost:Z

.field protected mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

.field private mOverrideOrientation:I

.field private mParent:Lcom/android/server/wm/WindowContainer;

.field private final mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

.field mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

.field mReparenting:Z

.field private final mSurfaceAnimationSources:Landroid/util/ArraySet;

.field protected final mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field protected mSurfaceControl:Landroid/view/SurfaceControl;

.field final mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

.field mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

.field mSyncIdForReparentSurfaceControl:I

.field mSyncMethodOverride:I

.field mSyncState:I

.field final mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mSyncTransactionCommitCallbackDepth:I

.field mThumbnail:Lcom/android/server/wm/WindowContainerThumbnail;

.field private final mTmpChain1:Ljava/util/LinkedList;

.field private final mTmpChain2:Ljava/util/LinkedList;

.field final mTmpPoint:Landroid/graphics/Point;

.field private final mTmpPos:Landroid/graphics/Point;

.field final mTmpPrevBounds:Landroid/graphics/Rect;

.field protected final mTmpRect:Landroid/graphics/Rect;

.field mTransit:I

.field mTransitFlags:I

.field final mTransitionController:Lcom/android/server/wm/TransitionController;

.field private mTreeWeight:I

.field mUseConfigurationInUdcCutout:Z

.field mUseLayoutInUdcCutout:Z

.field protected mVisibleRequested:Z

.field final mWaitingForDrawn:Ljava/util/ArrayList;

.field protected final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmInsetsOwnerDeathRecipientMap(Lcom/android/server/wm/WindowContainer;)Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mInsetsOwnerDeathRecipientMap:Landroid/util/ArrayMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSources:Landroid/util/SparseArray;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mInsetsSourceProviders:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/wm/WindowList;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/android/server/wm/WindowList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 17
    .line 18
    const/4 v1, -0x2

    .line 19
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mOverrideOrientation:I

    .line 20
    .line 21
    new-instance v1, Landroid/util/Pools$SynchronizedPool;

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    invoke-direct {v1, v2}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 33
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance v2, Landroid/util/ArraySet;

    .line 42
    .line 43
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    .line 47
    .line 48
    new-instance v2, Landroid/graphics/Point;

    .line 49
    .line 50
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    .line 54
    .line 55
    new-instance v2, Landroid/graphics/Point;

    .line 56
    .line 57
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 61
    .line 62
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    iput v2, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 66
    .line 67
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    .line 68
    .line 69
    new-instance v3, Landroid/graphics/Point;

    .line 70
    .line 71
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    .line 75
    .line 76
    new-instance v3, Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 82
    .line 83
    new-instance v3, Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 89
    .line 90
    iput-boolean v2, p0, Lcom/android/server/wm/WindowContainer;->mIsFocusable:Z

    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 95
    .line 96
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 97
    .line 98
    const/4 v0, -0x1

    .line 99
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    .line 100
    .line 101
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncIdForReparentSurfaceControl:I

    .line 102
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    .line 109
    .line 110
    const/high16 v0, 0x3f800000    # 1.0f

    .line 111
    .line 112
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mFreeformAlpha:F

    .line 113
    .line 114
    new-instance v0, Ljava/util/LinkedList;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    .line 120
    .line 121
    new-instance v0, Ljava/util/LinkedList;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    .line 127
    .line 128
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 129
    .line 130
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 131
    .line 132
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 135
    .line 136
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 137
    .line 138
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 145
    .line 146
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 147
    .line 148
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 155
    .line 156
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 157
    .line 158
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    .line 159
    .line 160
    new-instance v1, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;

    .line 161
    .line 162
    const/4 v2, 0x0

    .line 163
    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    .line 167
    .line 168
    .line 169
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 170
    .line 171
    new-instance v0, Lcom/android/server/wm/SurfaceFreezer;

    .line 172
    .line 173
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/SurfaceFreezer;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowManagerService;)V

    .line 174
    .line 175
    .line 176
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 177
    .line 178
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 179
    .line 180
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 181
    .line 182
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM_WITH_DIM:Z

    .line 183
    .line 184
    if-eqz p1, :cond_0

    .line 185
    .line 186
    new-instance p1, Lcom/android/server/wm/DimAnimator;

    .line 187
    .line 188
    invoke-direct {p1, p0}, Lcom/android/server/wm/DimAnimator;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 189
    .line 190
    .line 191
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 192
    .line 193
    :cond_0
    return-void
.end method

.method public static alwaysTruePredicate()Ljava/util/function/Predicate;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/wm/utils/AlwaysTruePredicate;->INSTANCE:Lcom/android/server/wm/utils/AlwaysTruePredicate;

    .line 2
    .line 3
    return-object v0
.end method

.method public static computeScreenLayout(III)I
    .locals 1

    .line 1
    and-int/lit8 p0, p0, 0x3f

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p0, v0, p1}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static createMergedSparseArray(Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v2, v0

    .line 18
    :goto_1
    new-instance v3, Landroid/util/SparseArray;

    .line 19
    .line 20
    add-int v4, v1, v2

    .line 21
    .line 22
    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 23
    .line 24
    .line 25
    if-lez v1, :cond_2

    .line 26
    .line 27
    move v4, v0

    .line 28
    :goto_2
    if-ge v4, v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v4, v4, 0x1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    if-lez v2, :cond_3

    .line 45
    .line 46
    :goto_3
    if-ge v0, v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v3, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    return-object v3
.end method

.method public static enforceSurfaceVisible(Lcom/android/server/wm/WindowContainer;)V
    .locals 4

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
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 31
    .line 32
    if-eq v0, v2, :cond_3

    .line 33
    .line 34
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iput-boolean v1, v2, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public static fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;
    .locals 1

    .line 1
    sget v0, Lcom/android/server/wm/WindowContainer$RemoteToken;->$r8$clinit:I

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$RemoteToken;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/wm/WindowContainer;

    .line 12
    .line 13
    return-object p0
.end method

.method public static overrideConfigurationPropagation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$ConfigurationMerger;)Lcom/android/server/wm/WindowContainerListener;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/server/wm/WindowContainer$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/WindowContainer$1;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$ConfigurationMerger;)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 4
    new-instance p2, Lcom/android/server/wm/WindowContainer$2;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/wm/WindowContainer$2;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$1;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    return-object p2
.end method

.method public static overrideConfigurationPropagation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->overrideConfigurationPropagation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$ConfigurationMerger;)Lcom/android/server/wm/WindowContainerListener;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 3

    .line 10
    iget-boolean v0, p1, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addChild: container="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already a child of container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can\'t add to container="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n callers="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xf

    const-string p1, "\n"

    .line 14
    invoke-static {p0, p1}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    const/high16 v0, -0x80000000

    if-gez p2, :cond_2

    if-ne p2, v0, :cond_3

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-le p2, v1, :cond_4

    if-ne p2, v2, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "addChild: invalid position="

    const-string v1, ", children number="

    .line 18
    invoke-static {p2, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 19
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    if-ne p2, v2, :cond_5

    .line 21
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_2

    :cond_5
    if-ne p2, v0, :cond_6

    const/4 p2, 0x0

    .line 22
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 23
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addChild: container="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already a child of container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can\'t add to container="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    const/4 v0, -0x1

    if-eqz p2, :cond_3

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 6
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-interface {p2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_2
    if-ne v2, v0, :cond_4

    .line 7
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 8
    :cond_4
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 9
    :goto_3
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public addLocalInsetsFrameProvider(Landroid/view/InsetsFrameProvider;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    if-eqz p2, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    const-string v1, "WindowManager"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string p2, "Can\'t add insets frame provider when detached. "

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mInsetsOwnerDeathRecipientMap:Landroid/util/ArrayMap;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mInsetsOwnerDeathRecipientMap:Landroid/util/ArrayMap;

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mInsetsOwnerDeathRecipientMap:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/server/wm/WindowContainer$DeathRecipient;

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    new-instance v0, Lcom/android/server/wm/WindowContainer$DeathRecipient;

    .line 51
    .line 52
    invoke-direct {v0, p2, p0}, Lcom/android/server/wm/WindowContainer$DeathRecipient;-><init>(Landroid/os/IBinder;Lcom/android/server/wm/WindowContainer;)V

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    :try_start_0
    invoke-interface {p2, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mInsetsOwnerDeathRecipientMap:Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string p2, "Failed to add source for "

    .line 68
    .line 69
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, " since the owner has died."

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getId()I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mSourceIds:Landroid/util/ArraySet;

    .line 93
    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSources:Landroid/util/SparseArray;

    .line 102
    .line 103
    if-nez v0, :cond_3

    .line 104
    .line 105
    new-instance v0, Landroid/util/SparseArray;

    .line 106
    .line 107
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSources:Landroid/util/SparseArray;

    .line 111
    .line 112
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSources:Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    new-instance v0, Landroid/view/InsetsSource;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getType()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-direct {v0, p2, v1}, Landroid/view/InsetsSource;-><init>(II)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getArbitraryRectangle()Landroid/graphics/Rect;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->updateSideHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getBoundingRects()[Landroid/graphics/Rect;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->setBoundingRects([Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getFlags()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    invoke-virtual {v0, p1}, Landroid/view/InsetsSource;->setFlags(I)Landroid/view/InsetsSource;

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSources:Landroid/util/SparseArray;

    .line 157
    .line 158
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 164
    .line 165
    const/4 p1, 0x1

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 171
    .line 172
    const-string p1, "Insets provider or owner not specified."

    .line 173
    .line 174
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0
.end method

.method public addTrustedOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;Lcom/android/server/wm/WindowState;)V
    .locals 13

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/android/server/wm/TrustedOverlayHost;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/android/server/wm/TrustedOverlayHost;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 19
    .line 20
    iget-object v3, v1, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 21
    .line 22
    iget-object v4, v1, Lcom/android/server/wm/TrustedOverlayHost;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3, v5}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v6, "TrustedOverlayHost.requireOverlaySurfaceControl"

    .line 41
    .line 42
    invoke-virtual {v3, v6}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-string v6, "Overlay Host Leash"

    .line 47
    .line 48
    invoke-virtual {v3, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iput-object v3, v1, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 57
    .line 58
    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 59
    .line 60
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Landroid/view/SurfaceControl$Transaction;

    .line 65
    .line 66
    iget-object v6, v1, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 67
    .line 68
    invoke-virtual {v3, v6, v5}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    sub-int/2addr v3, v5

    .line 82
    const/4 v6, 0x0

    .line 83
    move v7, v6

    .line 84
    :goto_0
    if-ltz v3, :cond_3

    .line 85
    .line 86
    iget-object v8, v1, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    check-cast v8, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 93
    .line 94
    invoke-virtual {v8}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-virtual {v8, v9}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_2

    .line 107
    .line 108
    move v7, v5

    .line 109
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    if-nez v7, :cond_4

    .line 113
    .line 114
    iget-object v3, v1, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_4
    iget-object v3, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 120
    .line 121
    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Landroid/view/SurfaceControl$Transaction;

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    iget-object v5, v1, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 132
    .line 133
    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 142
    .line 143
    .line 144
    iget-object v4, v1, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 145
    .line 146
    if-nez v4, :cond_5

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_5
    invoke-virtual {v3, v4, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 150
    .line 151
    .line 152
    if-eqz v2, :cond_6

    .line 153
    .line 154
    iget-object v1, v1, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 155
    .line 156
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_6
    iget-object v1, v1, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 161
    .line 162
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 163
    .line 164
    .line 165
    :goto_1
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 166
    .line 167
    .line 168
    const/4 v1, 0x4

    .line 169
    :try_start_0
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-interface {v2, v3}, Landroid/view/ISurfaceControlViewHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :catch_0
    aget-boolean v2, v0, v1

    .line 182
    .line 183
    if-eqz v2, :cond_7

    .line 184
    .line 185
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 186
    .line 187
    const-wide v8, -0x3b39502bb358c142L    # -2.142710812439071E23

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    const/4 v10, 0x0

    .line 193
    const/4 v11, 0x0

    .line 194
    const/4 v12, 0x0

    .line 195
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeTrustedOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 199
    .line 200
    .line 201
    :goto_2
    if-eqz p2, :cond_9

    .line 202
    .line 203
    invoke-virtual {p2, v6}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    :try_start_1
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-interface {v3, p2, v2}, Landroid/view/ISurfaceControlViewHost;->onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :catch_1
    aget-boolean p2, v0, v1

    .line 220
    .line 221
    if-eqz p2, :cond_8

    .line 222
    .line 223
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 224
    .line 225
    const-wide v1, 0x47e1bef179153996L    # 1.8870647988284907E38

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    const/4 v3, 0x0

    .line 231
    const/4 v4, 0x0

    .line 232
    const/4 v5, 0x0

    .line 233
    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeTrustedOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 237
    .line 238
    .line 239
    :cond_9
    :goto_3
    return-void
.end method

.method public allSyncFinished()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    return v3

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sub-int/2addr v0, v1

    .line 23
    :goto_0
    if-ltz v0, :cond_3

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->allSyncFinished()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    return v3

    .line 40
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    return v1
.end method

.method public allowEdgeExtension()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 3
    .line 4
    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    aget-boolean v1, v3, v2

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    const-wide v3, -0x79284b0abffdc37aL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    return v0

    .line 40
    :cond_1
    const-wide/16 v7, 0x20

    .line 41
    .line 42
    :try_start_0
    const-string v1, "WC#applyAnimation"

    .line 43
    .line 44
    invoke-static {v7, v8, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    aget-boolean v1, v3, v2

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 70
    .line 71
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    filled-new-array {v1, v3, v2}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v14

    .line 79
    const-wide v10, 0x20cdf87f2237306aL

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    const/16 v12, 0xc

    .line 85
    .line 86
    const/4 v13, 0x0

    .line 87
    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    :goto_0
    move-object v1, p0

    .line 94
    move-object/from16 v2, p1

    .line 95
    .line 96
    move/from16 v3, p3

    .line 97
    .line 98
    move/from16 v4, p2

    .line 99
    .line 100
    move/from16 v5, p4

    .line 101
    .line 102
    move-object/from16 v6, p5

    .line 103
    .line 104
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    .line 111
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    return v0

    .line 119
    :goto_2
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 120
    .line 121
    .line 122
    throw v0
.end method

.method public applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V
    .locals 11

    .line 1
    move-object v8, p0

    .line 2
    move v0, p2

    .line 3
    move v1, p3

    .line 4
    move-object/from16 v2, p5

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-nez v6, :cond_0

    .line 21
    .line 22
    iget-object v6, v8, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    invoke-virtual {v6, v5}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    invoke-interface {v6}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    invoke-interface {v6}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    if-ne v6, v4, :cond_0

    .line 45
    .line 46
    sget-object v4, Lcom/android/server/wm/AppTransition;->sFlagToString:Ljava/util/ArrayList;

    .line 47
    .line 48
    const/16 v4, 0x9

    .line 49
    .line 50
    if-eq v1, v4, :cond_1

    .line 51
    .line 52
    const/16 v4, 0xb

    .line 53
    .line 54
    if-ne v1, v4, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    move-object v4, p1

    .line 58
    move v6, p4

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    :goto_1
    iget-object v4, v8, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->showImeScreenshot()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :goto_2
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/android/server/wm/WindowContainer;->getAnimationAdapter(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/util/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 71
    .line 72
    move-object v9, v4

    .line 73
    check-cast v9, Lcom/android/server/wm/AnimationAdapter;

    .line 74
    .line 75
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 76
    .line 77
    move-object v7, v0

    .line 78
    check-cast v7, Lcom/android/server/wm/AnimationAdapter;

    .line 79
    .line 80
    if-eqz v9, :cond_a

    .line 81
    .line 82
    if-eqz v2, :cond_2

    .line 83
    .line 84
    iget-object v0, v8, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 87
    .line 88
    .line 89
    :cond_2
    new-instance v0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-interface {v9}, Lcom/android/server/wm/AnimationAdapter;->getShowBackground()Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_9

    .line 107
    .line 108
    if-eqz v2, :cond_3

    .line 109
    .line 110
    sget-object v6, Lcom/android/server/wm/AppTransition;->sFlagToString:Ljava/util/ArrayList;

    .line 111
    .line 112
    const/4 v6, 0x6

    .line 113
    if-eq v1, v6, :cond_4

    .line 114
    .line 115
    const/4 v6, 0x7

    .line 116
    if-eq v1, v6, :cond_4

    .line 117
    .line 118
    const/16 v6, 0x12

    .line 119
    .line 120
    if-ne v1, v6, :cond_3

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_3
    if-eqz v4, :cond_9

    .line 124
    .line 125
    iget-boolean v6, v4, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 126
    .line 127
    if-eqz v6, :cond_9

    .line 128
    .line 129
    sget-object v6, Lcom/android/server/wm/AppTransition;->sFlagToString:Ljava/util/ArrayList;

    .line 130
    .line 131
    const/16 v6, 0x1c

    .line 132
    .line 133
    if-eq v1, v6, :cond_4

    .line 134
    .line 135
    const/16 v6, 0x1d

    .line 136
    .line 137
    if-eq v1, v6, :cond_4

    .line 138
    .line 139
    const/16 v6, 0x1e

    .line 140
    .line 141
    if-ne v1, v6, :cond_9

    .line 142
    .line 143
    :cond_4
    :goto_3
    invoke-interface {v9}, Lcom/android/server/wm/AnimationAdapter;->getBackgroundColor()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_5

    .line 148
    .line 149
    invoke-interface {v9}, Lcom/android/server/wm/AnimationAdapter;->getBackgroundColor()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    goto :goto_6

    .line 154
    :cond_5
    if-eqz v2, :cond_6

    .line 155
    .line 156
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    goto :goto_4

    .line 161
    :cond_6
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    :goto_4
    if-eqz v1, :cond_7

    .line 166
    .line 167
    iget-object v6, v1, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 168
    .line 169
    invoke-virtual {v6}, Landroid/window/TaskFragmentAnimationParams;->getAnimationBackgroundColor()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-eqz v6, :cond_7

    .line 174
    .line 175
    iget-object v1, v1, Lcom/android/server/wm/TaskFragment;->mAnimationParams:Landroid/window/TaskFragmentAnimationParams;

    .line 176
    .line 177
    invoke-virtual {v1}, Landroid/window/TaskFragmentAnimationParams;->getAnimationBackgroundColor()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    goto :goto_6

    .line 182
    :cond_7
    if-eqz v2, :cond_8

    .line 183
    .line 184
    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_8
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    :goto_5
    iget-object v1, v1, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 192
    .line 193
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    :goto_6
    const/16 v2, 0xff

    .line 198
    .line 199
    invoke-static {v1, v2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    if-eqz v2, :cond_9

    .line 208
    .line 209
    if-eqz v1, :cond_9

    .line 210
    .line 211
    invoke-virtual {v2, v1, v5}, Lcom/android/server/wm/TaskDisplayArea;->setBackgroundColor(IZ)V

    .line 212
    .line 213
    .line 214
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 215
    .line 216
    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 217
    .line 218
    .line 219
    new-instance v4, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda0;

    .line 220
    .line 221
    invoke-direct {v4, v1, v2}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationFinished:Ljava/util/List;

    .line 225
    .line 226
    check-cast v1, Ljava/util/LinkedList;

    .line 227
    .line 228
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationCancelled:Ljava/util/List;

    .line 232
    .line 233
    check-cast v1, Ljava/util/LinkedList;

    .line 234
    .line 235
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    xor-int/lit8 v4, v2, 0x1

    .line 253
    .line 254
    new-instance v5, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;

    .line 255
    .line 256
    invoke-direct {v5, v3, v0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    new-instance v6, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda2;

    .line 260
    .line 261
    invoke-direct {v6, v0}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;)V

    .line 262
    .line 263
    .line 264
    const/4 v10, 0x1

    .line 265
    move-object v0, p0

    .line 266
    move-object v2, v9

    .line 267
    move v3, v4

    .line 268
    move v4, v10

    .line 269
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;)V

    .line 270
    .line 271
    .line 272
    invoke-interface {v9}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_a

    .line 277
    .line 278
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 283
    .line 284
    or-int/lit8 v1, v1, 0x4

    .line 285
    .line 286
    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 287
    .line 288
    :cond_a
    return-void
.end method

.method public applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->shouldMagnify()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 8
    .line 9
    iget v6, p2, Landroid/view/MagnificationSpec;->scale:F

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v1, p1

    .line 14
    move v3, v6

    .line 15
    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 20
    .line 21
    iget v1, p2, Landroid/view/MagnificationSpec;->offsetX:F

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 24
    .line 25
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 26
    .line 27
    int-to-float v3, v3

    .line 28
    add-float/2addr v1, v3

    .line 29
    iget v3, p2, Landroid/view/MagnificationSpec;->offsetY:F

    .line 30
    .line 31
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 32
    .line 33
    int-to-float v2, v2

    .line 34
    add-float/2addr v3, v2

    .line 35
    invoke-virtual {p1, v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer;->mLastMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->clearMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-ge v0, v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 60
    .line 61
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    :goto_1
    return-void
.end method

.method public asActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public asDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public asDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public asTask()Lcom/android/server/wm/Task;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public asTaskFragment()Lcom/android/server/wm/TaskFragment;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public asTransientLaunchOverlay()Lcom/android/server/wm/TransientLaunchOverlayToken;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public asWindowState()Lcom/android/server/wm/WindowState;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public asWindowToken()Lcom/android/server/wm/WindowToken;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public assignChildLayers()V
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    return-void
.end method

.method public assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 3
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 5
    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 8
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 9
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz p0, :cond_4

    .line 11
    iget-object p0, p0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_4

    .line 12
    invoke-virtual {p1, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_4
    return-void
.end method

.method public assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;IZ)V

    return-void
.end method

.method public assignLayer(Landroid/view/SurfaceControl$Transaction;IZ)V
    .locals 4

    .line 2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 4
    iget-boolean v0, p3, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p3

    if-nez p3, :cond_7

    goto/16 :goto_3

    .line 6
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v0, :cond_2

    .line 8
    iget v0, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mMinimizeAnimState:I

    if-ne v0, v2, :cond_2

    goto/16 :goto_3

    .line 9
    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 11
    iget-object v0, v0, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingPipTask:Lcom/android/server/wm/Task;

    if-ne v0, v3, :cond_3

    goto/16 :goto_2

    .line 12
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_SHELL_TRANSITION:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDesktopModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p3, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_8

    .line 15
    iget-object v3, p3, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    .line 16
    iget-object v3, v3, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController$Logger;->mInfo:Landroid/window/TransitionInfo;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v3

    if-lez v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 17
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    iget v0, v0, Lcom/android/server/wm/Transition;->mType:I

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_6

    goto :goto_3

    .line 19
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_8

    .line 20
    iget-object v0, p3, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_7

    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p3}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    return-void

    .line 22
    :cond_8
    :goto_3
    iget p3, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    if-ne p2, p3, :cond_a

    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-eqz p3, :cond_9

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    .line 23
    :cond_a
    :goto_4
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p3, :cond_b

    if-eqz v1, :cond_b

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 25
    iput p2, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    :cond_b
    return-void
.end method

.method public assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V

    return-void
.end method

.method public assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IZ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    if-eqz p4, :cond_3

    .line 3
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4
    iput p3, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 5
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    :cond_3
    return-void
.end method

.method public canCreateRemoteAnimationTarget()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    return p0
.end method

.method public canCustomizeAppTransition()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public canStartChangeTransition()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->okToAnimate()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 16
    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_5

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->inTransition()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    return v1

    .line 47
    :cond_2
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v2, 0x1

    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-nez p0, :cond_3

    .line 75
    .line 76
    move v1, v2

    .line 77
    :cond_3
    return v1

    .line 78
    :cond_4
    return v2

    .line 79
    :cond_5
    :goto_0
    return v1
.end method

.method public cancelAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 6
    .line 7
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowContainer;->doAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public checkAppWindowsReadyToShow()V
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
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->checkAppWindowsReadyToShow()V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public clearMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const/high16 v6, 0x3f800000    # 1.0f

    .line 9
    .line 10
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    move-object v1, p1

    .line 14
    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 21
    .line 22
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 23
    .line 24
    int-to-float v3, v3

    .line 25
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 26
    .line 27
    int-to-float v2, v2

    .line 28
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ge v0, v1, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->clearMagnificationSpec(Landroid/view/SurfaceControl$Transaction;)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method public commitPendingTransaction()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public compareTo(Lcom/android/server/wm/WindowContainer;)I
    .locals 7

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-ne v0, v3, :cond_2

    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-le p0, p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    .line 6
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    move-object v4, p0

    .line 8
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 9
    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v4, :cond_3

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    move-object v4, p1

    .line 12
    :cond_4
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 13
    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v4, :cond_4

    .line 14
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 15
    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    const/4 v6, 0x0

    :goto_0
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    if-ne v4, v5, :cond_5

    .line 16
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 17
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 18
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 19
    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_9

    if-ne v6, p0, :cond_7

    .line 20
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 21
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return v1

    :cond_7
    if-ne v6, p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 23
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return v2

    .line 24
    :cond_8
    :try_start_1
    iget-object p1, v6, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 25
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-le v0, p1, :cond_6

    move v1, v2

    goto :goto_1

    .line 26
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No in the same hierarchy this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " other="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 28
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 29
    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    return p0
.end method

.method public createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public createSurfaceControl(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final doAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    iget-object v0, p2, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_IME_enabled:[Z

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    aget-boolean v0, v0, v1

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {p1}, Lcom/android/server/wm/SurfaceAnimator;->animationTypeToString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p2, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-object v3, p2, Lcom/android/server/wm/DisplayContent;->mImeScreenshot:Lcom/android/server/wm/DisplayContent$ImeScreenshot;

    .line 63
    .line 64
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    .line 65
    .line 66
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 71
    .line 72
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    const-wide v5, -0x1b8f077b819cf76L

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    and-int/lit8 p1, p1, 0x19

    .line 87
    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    invoke-virtual {p2, p0}, Lcom/android/server/wm/DisplayContent;->removeImeSurfaceByTarget(Lcom/android/server/wm/WindowContainer;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    const-string v0, "  "

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p3, "ContainerAnimator:"

    .line 15
    .line 16
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v2, "mLeash="

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p3, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v3, " mAnimationType="

    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v3, p3, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 61
    .line 62
    invoke-static {v3}, Lcom/android/server/wm/SurfaceAnimator;->animationTypeToString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-boolean v2, p3, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 77
    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    const-string v2, " mAnimationStartDelayed=true"

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const-string v2, ""

    .line 84
    .line 85
    :goto_0
    const-string v3, "Animation: "

    .line 86
    .line 87
    invoke-static {p1, v2, v1, v3}, Lcom/android/server/am/ProcessList$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, p3, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object p3, p3, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 96
    .line 97
    if-eqz p3, :cond_1

    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-interface {p3, p1, v1}, Lcom/android/server/wm/AnimationAdapter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 118
    .line 119
    if-eqz p3, :cond_2

    .line 120
    .line 121
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 122
    .line 123
    if-ne p0, p3, :cond_2

    .line 124
    .line 125
    const-string p3, "mLastOrientationSource="

    .line 126
    .line 127
    invoke-static {p2, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 132
    .line 133
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    new-instance p3, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, "deepestLastOrientationSource="

    .line 152
    .line 153
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_2
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSources:Landroid/util/SparseArray;

    .line 171
    .line 172
    if-eqz p3, :cond_3

    .line 173
    .line 174
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 175
    .line 176
    .line 177
    move-result p3

    .line 178
    if-eqz p3, :cond_3

    .line 179
    .line 180
    invoke-static {p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSources:Landroid/util/SparseArray;

    .line 185
    .line 186
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v1, " LocalInsetsSources"

    .line 194
    .line 195
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p3

    .line 202
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance p3, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p3

    .line 220
    const/4 v0, 0x0

    .line 221
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSources:Landroid/util/SparseArray;

    .line 222
    .line 223
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-ge v0, v1, :cond_3

    .line 228
    .line 229
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSources:Landroid/util/SparseArray;

    .line 230
    .line 231
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    check-cast v1, Landroid/view/InsetsSource;

    .line 236
    .line 237
    invoke-virtual {v1, p3, p1}, Landroid/view/InsetsSource;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 238
    .line 239
    .line 240
    add-int/lit8 v0, v0, 0x1

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_3
    iget-boolean p3, p0, Lcom/android/server/wm/WindowContainer;->mUseLayoutInUdcCutout:Z

    .line 244
    .line 245
    if-nez p3, :cond_4

    .line 246
    .line 247
    iget-boolean p3, p0, Lcom/android/server/wm/WindowContainer;->mUseConfigurationInUdcCutout:Z

    .line 248
    .line 249
    if-eqz p3, :cond_5

    .line 250
    .line 251
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v0, "UdcCutoutInfo:"

    .line 260
    .line 261
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p3

    .line 268
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    new-instance p3, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v0, " mUseLayoutInUdcCutout="

    .line 274
    .line 275
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mUseLayoutInUdcCutout:Z

    .line 279
    .line 280
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p3

    .line 287
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    new-instance p3, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v0, " mUseConfigurationInUdcCutout="

    .line 293
    .line 294
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mUseConfigurationInUdcCutout:Z

    .line 298
    .line 299
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p3

    .line 306
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 310
    .line 311
    .line 312
    :cond_5
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 313
    .line 314
    if-eqz p3, :cond_7

    .line 315
    .line 316
    iget p3, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 317
    .line 318
    if-eqz p3, :cond_6

    .line 319
    .line 320
    const-string/jumbo p3, "mSyncState="

    .line 321
    .line 322
    .line 323
    invoke-static {p2, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    move-result-object p3

    .line 327
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 328
    .line 329
    invoke-static {p3, v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 330
    .line 331
    .line 332
    :cond_6
    iget p3, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    .line 333
    .line 334
    if-lez p3, :cond_7

    .line 335
    .line 336
    const-string/jumbo p3, "mSyncTransactionCommitCallbackDepth="

    .line 337
    .line 338
    .line 339
    invoke-static {p2, p3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    .line 344
    .line 345
    invoke-static {p2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 346
    .line 347
    .line 348
    :cond_7
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

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
    invoke-super {p0, p1, v1, v2, p4}, Lcom/android/server/wm/ConfigurationContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 21
    .line 22
    .line 23
    const-wide v1, 0x10500000002L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    iget v3, p0, Lcom/android/server/wm/WindowContainer;->mOverrideOrientation:I

    .line 29
    .line 30
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 31
    .line 32
    .line 33
    const-wide v1, 0x10800000003L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 39
    .line 40
    .line 41
    const-wide v0, 0x10b00000006L

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 58
    .line 59
    const-wide v1, 0x10b00000004L

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    const-wide v1, 0x10b00000007L

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 77
    .line 78
    .line 79
    :cond_2
    const/4 v0, 0x0

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-ge v0, v1, :cond_3

    .line 85
    .line 86
    const-wide v1, 0x20b00000005L

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getProtoFieldId()J

    .line 100
    .line 101
    .line 102
    move-result-wide v4

    .line 103
    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 107
    .line 108
    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public endDelayingAnimationStart()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->endDelayingAnimationStart()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public fillsParent()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/android/server/wm/WallpaperWindowToken;

    .line 2
    .line 3
    return p0
.end method

.method public finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "finishSync: stale group "

    .line 14
    .line 15
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 19
    .line 20
    iget v3, v3, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, " of "

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v3, "WindowManager"

    .line 38
    .line 39
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 43
    .line 44
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    sub-int/2addr v0, v2

    .line 55
    :goto_0
    if-ltz v0, :cond_1

    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 64
    .line 65
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v0, v0, -0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void

    .line 72
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->isDifferentSyncGroup(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    return-void

    .line 79
    :cond_3
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    .line 80
    .line 81
    aget-boolean v0, v0, v2

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 90
    .line 91
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    filled-new-array {v4, v0}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    const-wide v4, -0x35b896bc937bc753L    # -6.843097058519012E49

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    const/4 v6, 0x3

    .line 105
    const/4 v7, 0x0

    .line 106
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    sub-int/2addr v0, v2

    .line 121
    :goto_1
    if-ltz v0, :cond_5

    .line 122
    .line 123
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 124
    .line 125
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 130
    .line 131
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v0, v0, -0x1

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    if-eqz p3, :cond_6

    .line 138
    .line 139
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 140
    .line 141
    if-eqz p1, :cond_6

    .line 142
    .line 143
    iget-object p1, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    .line 144
    .line 145
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :cond_6
    const/4 p1, 0x0

    .line 149
    iput p1, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 150
    .line 151
    const/4 p1, -0x1

    .line 152
    iput p1, p0, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    .line 153
    .line 154
    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 155
    .line 156
    iput p1, p0, Lcom/android/server/wm/WindowContainer;->mSyncIdForReparentSurfaceControl:I

    .line 157
    .line 158
    return-void
.end method

.method public forAllActivities(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forAllActivities(Ljava/util/function/Consumer;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 10
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public forAllActivities(Ljava/util/function/Predicate;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result p0

    return p0
.end method

.method public final forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Z
    .locals 7

    const/4 v0, 0x1

    .line 11
    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Z

    move-result p0

    return p0
.end method

.method public final forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Z
    .locals 14

    move-object v0, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_3

    .line 12
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v11

    move v12, v1

    :goto_0
    if-ltz v12, :cond_7

    .line 13
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 14
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    if-ne v1, v8, :cond_0

    .line 15
    aput-boolean v11, p5, v10

    if-nez p3, :cond_0

    move v1, v10

    goto :goto_1

    .line 16
    :cond_0
    aget-boolean v2, p5, v10

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v1, p1, v9}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result v1

    goto :goto_1

    :cond_1
    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_2

    return v11

    :cond_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 19
    :cond_3
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v10

    :goto_2
    if-ge v13, v12, :cond_7

    .line 20
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 21
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    if-ne v1, v8, :cond_4

    .line 22
    aput-boolean v11, p5, v10

    if-nez p3, :cond_4

    move v1, v10

    goto :goto_3

    .line 23
    :cond_4
    aget-boolean v2, p5, v10

    if-eqz v2, :cond_5

    .line 24
    invoke-virtual {v1, p1, v9}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result v1

    goto :goto_3

    :cond_5
    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_6

    return v11

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_7
    return v10
.end method

.method public forAllActivities(Ljava/util/function/Predicate;Z)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_3

    .line 3
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 5
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public forAllDisplayAreas(Ljava/util/function/Consumer;)V
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
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public forAllLeafTasks(Ljava/util/function/Predicate;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public forAllRootTasks(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forAllRootTasks(Ljava/util/function/Consumer;Z)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 9
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    .line 10
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method public forAllRootTasks(Ljava/util/function/Predicate;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;Z)Z

    move-result p0

    return p0
.end method

.method public forAllRootTasks(Ljava/util/function/Predicate;Z)Z
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_3

    .line 3
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

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

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllRootTasks(Ljava/util/function/Predicate;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    .line 5
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v3, v0

    add-int/2addr v3, v2

    move v0, v4

    goto :goto_1

    :cond_3
    return v1
.end method

.method public forAllTaskDisplayAreas(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V
    .locals 3

    .line 4
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    if-ge v0, p2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z

    move-result p0

    return p0
.end method

.method public forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    if-ge v0, p2, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public forAllTaskFragments(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forAllTaskFragments(Ljava/util/function/Consumer;Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public forAllTasks(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forAllTasks(Ljava/util/function/Consumer;Z)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 6
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public forAllTasks(Ljava/util/function/Predicate;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public forAllWallpaperWindows(Ljava/util/function/Consumer;)V
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
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllWallpaperWindows(Ljava/util/function/Consumer;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public forAllWindowContainers(Ljava/util/function/Consumer;)V
    .locals 3

    .line 1
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->forAllWindowContainers(Ljava/util/function/Consumer;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public forAllWindows(Ljava/util/function/Consumer;Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 7
    :cond_0
    iput-object p1, v0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->mConsumer:Ljava/util/function/Consumer;

    .line 8
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    const/4 p0, 0x0

    .line 9
    iput-object p0, v0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->mConsumer:Ljava/util/function/Consumer;

    .line 10
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->this$0:Lcom/android/server/wm/WindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {p0, v0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 1
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_3

    .line 2
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 4
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;
    .locals 7

    const/4 v0, 0x1

    .line 9
    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/ActivityRecord;
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v9, :cond_4

    .line 10
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v12

    move v13, v1

    :goto_0
    if-ltz v13, :cond_9

    .line 11
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 12
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    if-eq v1, v8, :cond_0

    if-nez v8, :cond_1

    .line 13
    :cond_0
    aput-boolean v12, p5, v11

    if-nez p3, :cond_1

    move-object v1, v10

    goto :goto_1

    .line 14
    :cond_1
    aget-boolean v2, p5, v11

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v1, v7, v9}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 17
    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v11

    :goto_2
    if-ge v14, v13, :cond_9

    .line 18
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 19
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    if-eq v1, v8, :cond_5

    if-nez v8, :cond_6

    .line 20
    :cond_5
    aput-boolean v12, p5, v11

    if-nez p3, :cond_6

    move-object v1, v10

    goto :goto_3

    .line 21
    :cond_6
    aget-boolean v2, p5, v11

    if-eqz v2, :cond_7

    .line 22
    invoke-virtual {v1, v7, v9}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_3

    :cond_7
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 23
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_8

    return-object v1

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_9
    return-object v10
.end method

.method public getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    if-eqz p2, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    .line 4
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    if-ne v1, p3, :cond_0

    return-object p3

    .line 5
    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    .line 7
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    if-ne v2, p3, :cond_3

    return-object p3

    .line 8
    :cond_3
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getAnimatingContainer()Lcom/android/server/wm/WindowContainer;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    return-object p0
.end method

.method public getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 5
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 6
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    and-int/lit8 v2, p1, -0x3

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAnimation()Lcom/android/server/wm/AnimationAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 4
    .line 5
    return-object p0
.end method

.method public getAnimationAdapter(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/util/Pair;
    .locals 52

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v14, p2

    .line 6
    .line 7
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    .line 8
    .line 9
    const/16 v15, 0x8

    .line 10
    .line 11
    const/4 v3, 0x5

    .line 12
    const/4 v13, 0x7

    .line 13
    const/4 v12, 0x0

    .line 14
    const/4 v11, 0x1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    move v10, v11

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 30
    .line 31
    iget-object v4, v2, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    iget-object v4, v2, Lcom/android/server/wm/AppTransition;->mNextAppTransitionRequests:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    iget v2, v2, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 56
    .line 57
    if-ne v2, v15, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v2, v12

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    move v2, v11

    .line 63
    :goto_1
    move v10, v2

    .line 64
    :goto_2
    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowContainer;->getAnimationBounds(I)Landroid/graphics/Rect;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getAnimationPosition(Landroid/graphics/Point;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 79
    .line 80
    invoke-virtual {v2, v12, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 88
    .line 89
    iget-object v5, v2, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    .line 90
    .line 91
    const/16 v6, 0x1e

    .line 92
    .line 93
    const/16 v7, 0x1b

    .line 94
    .line 95
    if-eq v14, v7, :cond_3

    .line 96
    .line 97
    if-ne v14, v6, :cond_4

    .line 98
    .line 99
    :cond_3
    if-eqz p3, :cond_4

    .line 100
    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isChangingAppTransition()Z

    .line 102
    .line 103
    .line 104
    move-result v8

    .line 105
    if-eqz v8, :cond_4

    .line 106
    .line 107
    move v8, v11

    .line 108
    goto :goto_3

    .line 109
    :cond_4
    move v8, v12

    .line 110
    :goto_3
    if-eqz v5, :cond_f

    .line 111
    .line 112
    iget-object v9, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 113
    .line 114
    iget-boolean v9, v9, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 115
    .line 116
    if-nez v9, :cond_f

    .line 117
    .line 118
    iget-boolean v0, v5, Lcom/android/server/wm/RemoteAnimationController;->mIsActivityEmbedding:Z

    .line 119
    .line 120
    if-eqz v0, :cond_9

    .line 121
    .line 122
    if-eqz v8, :cond_6

    .line 123
    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-le v0, v11, :cond_5

    .line 135
    .line 136
    move v0, v11

    .line 137
    goto :goto_4

    .line 138
    :cond_5
    move v0, v12

    .line 139
    :goto_4
    iget v2, v2, Lcom/android/server/wm/AppTransition;->mNextAppTransitionBackgroundColor:I

    .line 140
    .line 141
    move v6, v0

    .line 142
    move v9, v2

    .line 143
    goto :goto_6

    .line 144
    :cond_6
    iget-object v0, v2, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 145
    .line 146
    iget-object v3, v2, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 147
    .line 148
    if-eqz p3, :cond_7

    .line 149
    .line 150
    iget v6, v2, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_7
    iget v6, v2, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 154
    .line 155
    :goto_5
    invoke-virtual {v0, v3, v6}, Lcom/android/internal/policy/TransitionAnimation;->loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iget v2, v2, Lcom/android/server/wm/AppTransition;->mNextAppTransitionBackgroundColor:I

    .line 160
    .line 161
    if-eqz v2, :cond_8

    .line 162
    .line 163
    if-eqz v0, :cond_8

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setBackdropColor(I)V

    .line 166
    .line 167
    .line 168
    :cond_8
    if-eqz v0, :cond_9

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getShowBackdrop()Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-virtual {v0}, Landroid/view/animation/Animation;->getBackdropColor()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    move v9, v0

    .line 179
    move v6, v2

    .line 180
    goto :goto_6

    .line 181
    :cond_9
    move v6, v12

    .line 182
    move v9, v6

    .line 183
    :goto_6
    new-instance v3, Landroid/graphics/Rect;

    .line 184
    .line 185
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 186
    .line 187
    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    .line 191
    .line 192
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 193
    .line 194
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 195
    .line 196
    invoke-virtual {v3, v2, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 197
    .line 198
    .line 199
    if-nez v8, :cond_a

    .line 200
    .line 201
    if-nez p3, :cond_a

    .line 202
    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isClosingWhenResizing()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_a

    .line 208
    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingChangingContainers:Landroid/util/ArrayMap;

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    move-object v7, v0

    .line 220
    check-cast v7, Landroid/graphics/Rect;

    .line 221
    .line 222
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    .line 223
    .line 224
    const/4 v10, 0x0

    .line 225
    move-object v0, v5

    .line 226
    move-object/from16 v1, p0

    .line 227
    .line 228
    move-object v5, v7

    .line 229
    move v7, v10

    .line 230
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RemoteAnimationController;->createRemoteAnimationRecord(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    goto :goto_9

    .line 235
    :cond_a
    if-eqz v8, :cond_b

    .line 236
    .line 237
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 238
    .line 239
    iget-object v0, v0, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    .line 240
    .line 241
    move-object/from16 v16, v0

    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_b
    const/16 v16, 0x0

    .line 245
    .line 246
    :goto_7
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    .line 247
    .line 248
    if-eqz v16, :cond_c

    .line 249
    .line 250
    move v7, v11

    .line 251
    goto :goto_8

    .line 252
    :cond_c
    move v7, v12

    .line 253
    :goto_8
    move-object v0, v5

    .line 254
    move-object/from16 v1, p0

    .line 255
    .line 256
    move-object/from16 v5, v16

    .line 257
    .line 258
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RemoteAnimationController;->createRemoteAnimationRecord(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    :goto_9
    if-eqz v9, :cond_d

    .line 263
    .line 264
    iput v9, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mBackdropColor:I

    .line 265
    .line 266
    :cond_d
    if-nez v8, :cond_e

    .line 267
    .line 268
    xor-int/lit8 v1, p3, 0x1

    .line 269
    .line 270
    iput v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mMode:I

    .line 271
    .line 272
    :cond_e
    new-instance v1, Landroid/util/Pair;

    .line 273
    .line 274
    iget-object v2, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 275
    .line 276
    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 277
    .line 278
    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_46

    .line 282
    .line 283
    :cond_f
    if-eqz v8, :cond_11

    .line 284
    .line 285
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 286
    .line 287
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    iget-object v8, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 296
    .line 297
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 298
    .line 299
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    .line 300
    .line 301
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 302
    .line 303
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 304
    .line 305
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 306
    .line 307
    .line 308
    new-instance v9, Lcom/android/server/wm/LocalAnimationAdapter;

    .line 309
    .line 310
    new-instance v10, Lcom/android/server/wm/WindowChangeAnimationSpec;

    .line 311
    .line 312
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 313
    .line 314
    iget-object v3, v2, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    .line 315
    .line 316
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 317
    .line 318
    const/4 v7, 0x0

    .line 319
    move-object v2, v10

    .line 320
    move-object v5, v8

    .line 321
    move v6, v0

    .line 322
    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZ)V

    .line 323
    .line 324
    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-direct {v9, v10, v2}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 330
    .line 331
    .line 332
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 333
    .line 334
    iget-object v3, v2, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 335
    .line 336
    if-eqz v3, :cond_10

    .line 337
    .line 338
    new-instance v10, Lcom/android/server/wm/LocalAnimationAdapter;

    .line 339
    .line 340
    new-instance v11, Lcom/android/server/wm/WindowChangeAnimationSpec;

    .line 341
    .line 342
    iget-object v3, v2, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    .line 343
    .line 344
    iget-object v4, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 345
    .line 346
    const/4 v7, 0x1

    .line 347
    move-object v2, v11

    .line 348
    move-object v5, v8

    .line 349
    move v6, v0

    .line 350
    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZ)V

    .line 351
    .line 352
    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-direct {v10, v11, v0}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 358
    .line 359
    .line 360
    goto :goto_a

    .line 361
    :cond_10
    const/4 v10, 0x0

    .line 362
    :goto_a
    new-instance v0, Landroid/util/Pair;

    .line 363
    .line 364
    invoke-direct {v0, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    iput v14, v1, Lcom/android/server/wm/WindowContainer;->mTransit:I

    .line 368
    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 374
    .line 375
    iget v2, v2, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 376
    .line 377
    iput v2, v1, Lcom/android/server/wm/WindowContainer;->mTransitFlags:I

    .line 378
    .line 379
    move-object v1, v0

    .line 380
    goto/16 :goto_46

    .line 381
    .line 382
    :cond_11
    xor-int/lit8 v2, v10, 0x1

    .line 383
    .line 384
    iput-boolean v2, v1, Lcom/android/server/wm/WindowContainer;->mNeedsAnimationBoundsLayer:Z

    .line 385
    .line 386
    invoke-static/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->isTaskViewTask(Lcom/android/server/wm/WindowContainer;)Z

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    if-nez v2, :cond_12

    .line 391
    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    const/4 v4, 0x6

    .line 397
    if-eqz v2, :cond_13

    .line 398
    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eq v2, v11, :cond_13

    .line 404
    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    if-eq v2, v3, :cond_13

    .line 410
    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 412
    .line 413
    .line 414
    move-result v2

    .line 415
    if-eq v2, v4, :cond_13

    .line 416
    .line 417
    :cond_12
    move/from16 v19, v10

    .line 418
    .line 419
    move v0, v11

    .line 420
    move/from16 v16, v12

    .line 421
    .line 422
    const/16 v2, 0x9

    .line 423
    .line 424
    goto/16 :goto_40

    .line 425
    .line 426
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    iget-object v5, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 431
    .line 432
    iget v13, v5, Landroid/view/DisplayInfo;->appWidth:I

    .line 433
    .line 434
    iget v15, v5, Landroid/view/DisplayInfo;->appHeight:I

    .line 435
    .line 436
    sget-object v20, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

    .line 437
    .line 438
    aget-boolean v21, v20, v11

    .line 439
    .line 440
    if-eqz v21, :cond_14

    .line 441
    .line 442
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v21

    .line 446
    sget-object v22, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 447
    .line 448
    filled-new-array/range {v21 .. v21}, [Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v27

    .line 452
    const/16 v25, 0x0

    .line 453
    .line 454
    const/16 v26, 0x0

    .line 455
    .line 456
    const-wide v23, 0x1f64a9a8a7f136eaL

    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    invoke-static/range {v22 .. v27}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    :cond_14
    new-instance v4, Landroid/graphics/Rect;

    .line 465
    .line 466
    invoke-direct {v4, v12, v12, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 467
    .line 468
    .line 469
    new-instance v8, Landroid/graphics/Rect;

    .line 470
    .line 471
    iget v6, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 472
    .line 473
    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 474
    .line 475
    invoke-direct {v8, v12, v12, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 476
    .line 477
    .line 478
    new-instance v6, Landroid/graphics/Rect;

    .line 479
    .line 480
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 481
    .line 482
    .line 483
    new-instance v5, Landroid/graphics/Rect;

    .line 484
    .line 485
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 486
    .line 487
    .line 488
    new-instance v7, Landroid/graphics/Rect;

    .line 489
    .line 490
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1, v4, v6, v5, v7}, Lcom/android/server/wm/WindowContainer;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 494
    .line 495
    .line 496
    iget-boolean v3, v1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 497
    .line 498
    if-eqz v3, :cond_15

    .line 499
    .line 500
    move v3, v12

    .line 501
    goto :goto_b

    .line 502
    :cond_15
    move/from16 v3, p3

    .line 503
    .line 504
    :goto_b
    sget-object v26, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 505
    .line 506
    aget-boolean v26, v26, v12

    .line 507
    .line 508
    if-eqz v26, :cond_16

    .line 509
    .line 510
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v26

    .line 514
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v12

    .line 518
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v9

    .line 522
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v11

    .line 526
    move-object/from16 v28, v5

    .line 527
    .line 528
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v5

    .line 532
    sget-object v29, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 533
    .line 534
    move-object/from16 v35, v7

    .line 535
    .line 536
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 537
    .line 538
    .line 539
    move-result-object v7

    .line 540
    filled-new-array {v12, v7, v9, v11, v5}, [Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v34

    .line 544
    const/16 v33, 0x0

    .line 545
    .line 546
    const-wide v30, 0x5148d53840193d0aL    # 3.7689126607541306E83

    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    const/16 v32, 0xc

    .line 552
    .line 553
    invoke-static/range {v29 .. v34}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    goto :goto_c

    .line 557
    :cond_16
    move-object/from16 v28, v5

    .line 558
    .line 559
    move-object/from16 v35, v7

    .line 560
    .line 561
    :goto_c
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 566
    .line 567
    .line 568
    move-result-object v5

    .line 569
    iget-object v12, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 570
    .line 571
    iget v5, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 572
    .line 573
    iget v5, v2, Landroid/content/res/Configuration;->orientation:I

    .line 574
    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 576
    .line 577
    .line 578
    move-result v11

    .line 579
    iget-object v2, v12, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 580
    .line 581
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 582
    .line 583
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 584
    .line 585
    iget-object v7, v12, Lcom/android/server/wm/AppTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 586
    .line 587
    iget v7, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 588
    .line 589
    invoke-interface {v2, v7}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldSkipAppTransition(I)Z

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    const/16 v29, 0x14

    .line 594
    .line 595
    if-eqz v2, :cond_17

    .line 596
    .line 597
    :goto_d
    move-object/from16 v24, v4

    .line 598
    .line 599
    move/from16 v19, v10

    .line 600
    .line 601
    move/from16 v51, v13

    .line 602
    .line 603
    move/from16 v26, v15

    .line 604
    .line 605
    const/4 v0, 0x1

    .line 606
    const/4 v9, 0x0

    .line 607
    const/16 v16, 0x0

    .line 608
    .line 609
    goto/16 :goto_3b

    .line 610
    .line 611
    :cond_17
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    .line 612
    .line 613
    if-eqz v2, :cond_18

    .line 614
    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    if-eqz v2, :cond_18

    .line 620
    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 626
    .line 627
    iget v2, v2, Landroid/view/DisplayInfo;->flags:I

    .line 628
    .line 629
    const v31, 0x8000

    .line 630
    .line 631
    .line 632
    and-int v2, v2, v31

    .line 633
    .line 634
    if-eqz v2, :cond_18

    .line 635
    .line 636
    const-string v0, "SPEG"

    .line 637
    .line 638
    const-string v2, "Skip animation-leash of app_transition"

    .line 639
    .line 640
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    .line 642
    .line 643
    goto :goto_d

    .line 644
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->canCustomizeAppTransition()Z

    .line 645
    .line 646
    .line 647
    move-result v2

    .line 648
    iget-boolean v7, v12, Lcom/android/server/wm/AppTransition;->mNextAppTransitionOverrideRequested:Z

    .line 649
    .line 650
    const/4 v9, 0x4

    .line 651
    if-eqz v7, :cond_1b

    .line 652
    .line 653
    if-nez v2, :cond_19

    .line 654
    .line 655
    iget-boolean v7, v12, Lcom/android/server/wm/AppTransition;->mOverrideTaskTransition:Z

    .line 656
    .line 657
    if-eqz v7, :cond_1a

    .line 658
    .line 659
    :cond_19
    const/4 v7, 0x1

    .line 660
    goto :goto_e

    .line 661
    :cond_1a
    aget-boolean v7, v20, v9

    .line 662
    .line 663
    if-eqz v7, :cond_1b

    .line 664
    .line 665
    sget-object v36, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 666
    .line 667
    const-wide v37, -0x3833193e51d0c7c2L    # -7.683308092961645E37

    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    const/16 v39, 0x0

    .line 673
    .line 674
    const/16 v40, 0x0

    .line 675
    .line 676
    const/16 v41, 0x0

    .line 677
    .line 678
    invoke-static/range {v36 .. v41}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 679
    .line 680
    .line 681
    goto :goto_f

    .line 682
    :goto_e
    iput v7, v12, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 683
    .line 684
    :cond_1b
    :goto_f
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    .line 685
    .line 686
    .line 687
    move-result v7

    .line 688
    const/16 v9, 0x15

    .line 689
    .line 690
    if-eqz v7, :cond_1d

    .line 691
    .line 692
    if-eqz v3, :cond_1d

    .line 693
    .line 694
    iget-object v0, v12, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 695
    .line 696
    iget v2, v12, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 697
    .line 698
    if-ne v14, v9, :cond_1c

    .line 699
    .line 700
    const/4 v3, 0x1

    .line 701
    goto :goto_10

    .line 702
    :cond_1c
    const/4 v3, 0x0

    .line 703
    :goto_10
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/TransitionAnimation;->loadKeyguardExitAnimation(IZ)Landroid/view/animation/Animation;

    .line 704
    .line 705
    .line 706
    move-result-object v0

    .line 707
    :goto_11
    move-object v9, v0

    .line 708
    move-object/from16 v24, v4

    .line 709
    .line 710
    move/from16 v19, v10

    .line 711
    .line 712
    move/from16 v51, v13

    .line 713
    .line 714
    move/from16 v26, v15

    .line 715
    .line 716
    const/4 v0, 0x1

    .line 717
    :goto_12
    const/16 v16, 0x0

    .line 718
    .line 719
    move-object v15, v12

    .line 720
    goto/16 :goto_3a

    .line 721
    .line 722
    :cond_1d
    const/16 v7, 0x16

    .line 723
    .line 724
    if-eq v14, v7, :cond_1e

    .line 725
    .line 726
    const/16 v7, 0x21

    .line 727
    .line 728
    if-ne v14, v7, :cond_1f

    .line 729
    .line 730
    :cond_1e
    move-object/from16 v24, v4

    .line 731
    .line 732
    move/from16 v19, v10

    .line 733
    .line 734
    move/from16 v51, v13

    .line 735
    .line 736
    move/from16 v26, v15

    .line 737
    .line 738
    const/4 v0, 0x1

    .line 739
    const/16 v16, 0x0

    .line 740
    .line 741
    move-object v15, v12

    .line 742
    goto/16 :goto_39

    .line 743
    .line 744
    :cond_1f
    const/16 v7, 0x17

    .line 745
    .line 746
    if-ne v14, v7, :cond_20

    .line 747
    .line 748
    if-nez v3, :cond_20

    .line 749
    .line 750
    iget-object v0, v12, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 751
    .line 752
    invoke-virtual {v0}, Lcom/android/internal/policy/TransitionAnimation;->loadKeyguardUnoccludeAnimation()Landroid/view/animation/Animation;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    goto :goto_11

    .line 757
    :cond_20
    const/16 v9, 0x1a

    .line 758
    .line 759
    if-ne v14, v9, :cond_21

    .line 760
    .line 761
    move-object/from16 v24, v4

    .line 762
    .line 763
    move/from16 v19, v10

    .line 764
    .line 765
    move/from16 v51, v13

    .line 766
    .line 767
    move/from16 v26, v15

    .line 768
    .line 769
    const/4 v0, 0x1

    .line 770
    const/4 v9, 0x0

    .line 771
    goto :goto_12

    .line 772
    :cond_21
    move/from16 v26, v15

    .line 773
    .line 774
    const/4 v15, 0x3

    .line 775
    if-eqz p4, :cond_24

    .line 776
    .line 777
    const/4 v7, 0x6

    .line 778
    if-eq v14, v7, :cond_22

    .line 779
    .line 780
    const/16 v7, 0x8

    .line 781
    .line 782
    if-eq v14, v7, :cond_22

    .line 783
    .line 784
    const/16 v7, 0xa

    .line 785
    .line 786
    if-ne v14, v7, :cond_25

    .line 787
    .line 788
    goto :goto_13

    .line 789
    :cond_22
    const/16 v7, 0xa

    .line 790
    .line 791
    :goto_13
    iget-object v0, v12, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 792
    .line 793
    invoke-virtual {v0, v3}, Lcom/android/internal/policy/TransitionAnimation;->loadVoiceActivityOpenAnimation(Z)Landroid/view/animation/Animation;

    .line 794
    .line 795
    .line 796
    move-result-object v0

    .line 797
    const/4 v2, 0x1

    .line 798
    aget-boolean v5, v20, v2

    .line 799
    .line 800
    if-eqz v5, :cond_23

    .line 801
    .line 802
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v2

    .line 806
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v5

    .line 810
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v5

    .line 814
    invoke-static {v15}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v6

    .line 818
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v6

    .line 822
    sget-object v33, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 823
    .line 824
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    filled-new-array {v2, v5, v3, v6}, [Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v38

    .line 832
    const-wide v34, -0x1d9a4b877519c87aL    # -9.999233377391215E165

    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    const/16 v36, 0x30

    .line 838
    .line 839
    const/16 v37, 0x0

    .line 840
    .line 841
    invoke-static/range {v33 .. v38}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 842
    .line 843
    .line 844
    :cond_23
    :goto_14
    move-object v9, v0

    .line 845
    move-object/from16 v24, v4

    .line 846
    .line 847
    :goto_15
    move/from16 v19, v10

    .line 848
    .line 849
    :goto_16
    move-object v15, v12

    .line 850
    move/from16 v51, v13

    .line 851
    .line 852
    const/4 v0, 0x1

    .line 853
    :goto_17
    const/16 v16, 0x0

    .line 854
    .line 855
    goto/16 :goto_3a

    .line 856
    .line 857
    :cond_24
    const/16 v7, 0xa

    .line 858
    .line 859
    :cond_25
    if-eqz p4, :cond_27

    .line 860
    .line 861
    const/4 v7, 0x7

    .line 862
    if-eq v14, v7, :cond_26

    .line 863
    .line 864
    const/16 v7, 0x9

    .line 865
    .line 866
    if-eq v14, v7, :cond_26

    .line 867
    .line 868
    const/16 v7, 0xb

    .line 869
    .line 870
    if-ne v14, v7, :cond_27

    .line 871
    .line 872
    goto :goto_18

    .line 873
    :cond_26
    const/16 v7, 0xb

    .line 874
    .line 875
    :goto_18
    iget-object v0, v12, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 876
    .line 877
    invoke-virtual {v0, v3}, Lcom/android/internal/policy/TransitionAnimation;->loadVoiceActivityExitAnimation(Z)Landroid/view/animation/Animation;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    const/4 v2, 0x1

    .line 882
    aget-boolean v5, v20, v2

    .line 883
    .line 884
    if-eqz v5, :cond_23

    .line 885
    .line 886
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v2

    .line 890
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v5

    .line 894
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v5

    .line 898
    invoke-static {v15}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v6

    .line 902
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v6

    .line 906
    sget-object v33, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 907
    .line 908
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 909
    .line 910
    .line 911
    move-result-object v3

    .line 912
    filled-new-array {v2, v5, v3, v6}, [Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v38

    .line 916
    const-wide v34, -0x1d9a4b877519c87aL    # -9.999233377391215E165

    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    const/16 v36, 0x30

    .line 922
    .line 923
    const/16 v37, 0x0

    .line 924
    .line 925
    invoke-static/range {v33 .. v38}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 926
    .line 927
    .line 928
    goto :goto_14

    .line 929
    :cond_27
    const/16 v7, 0x12

    .line 930
    .line 931
    if-ne v14, v7, :cond_29

    .line 932
    .line 933
    iget-object v0, v12, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 934
    .line 935
    iget-object v2, v12, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 936
    .line 937
    if-eqz v2, :cond_28

    .line 938
    .line 939
    iget-object v2, v2, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 940
    .line 941
    goto :goto_19

    .line 942
    :cond_28
    const/4 v2, 0x0

    .line 943
    :goto_19
    invoke-virtual {v0, v4, v6, v2}, Lcom/android/internal/policy/TransitionAnimation;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    const/4 v2, 0x1

    .line 948
    aget-boolean v3, v20, v2

    .line 949
    .line 950
    if-eqz v3, :cond_23

    .line 951
    .line 952
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v2

    .line 956
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v3

    .line 960
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v3

    .line 964
    invoke-static {v15}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v5

    .line 968
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v5

    .line 972
    sget-object v33, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 973
    .line 974
    filled-new-array {v2, v3, v5}, [Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v38

    .line 978
    const/16 v37, 0x0

    .line 979
    .line 980
    const-wide v34, 0x54f292adfe72348bL    # 1.6249494594898152E101

    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    const/16 v36, 0x0

    .line 986
    .line 987
    invoke-static/range {v33 .. v38}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 988
    .line 989
    .line 990
    goto/16 :goto_14

    .line 991
    .line 992
    :cond_29
    iget v7, v12, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    .line 993
    .line 994
    const/4 v9, 0x1

    .line 995
    if-ne v7, v9, :cond_2c

    .line 996
    .line 997
    iget-object v0, v12, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 998
    .line 999
    iget-object v2, v12, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1000
    .line 1001
    if-eqz v3, :cond_2a

    .line 1002
    .line 1003
    iget v5, v12, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    .line 1004
    .line 1005
    goto :goto_1a

    .line 1006
    :cond_2a
    iget v5, v12, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    .line 1007
    .line 1008
    :goto_1a
    invoke-virtual {v0, v2, v5}, Lcom/android/internal/policy/TransitionAnimation;->loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    iget v2, v12, Lcom/android/server/wm/AppTransition;->mNextAppTransitionBackgroundColor:I

    .line 1013
    .line 1014
    if-eqz v2, :cond_2b

    .line 1015
    .line 1016
    if-eqz v0, :cond_2b

    .line 1017
    .line 1018
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setBackdropColor(I)V

    .line 1019
    .line 1020
    .line 1021
    :cond_2b
    const/4 v2, 0x1

    .line 1022
    aget-boolean v5, v20, v2

    .line 1023
    .line 1024
    if-eqz v5, :cond_23

    .line 1025
    .line 1026
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v2

    .line 1030
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v5

    .line 1034
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v5

    .line 1038
    invoke-static {v15}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v6

    .line 1042
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v6

    .line 1046
    sget-object v39, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1047
    .line 1048
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v3

    .line 1052
    filled-new-array {v2, v5, v3, v6}, [Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v44

    .line 1056
    const-wide v40, -0x7455eabe4c81cab2L

    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    const/16 v42, 0x30

    .line 1062
    .line 1063
    const/16 v43, 0x0

    .line 1064
    .line 1065
    invoke-static/range {v39 .. v44}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1066
    .line 1067
    .line 1068
    goto/16 :goto_14

    .line 1069
    .line 1070
    :cond_2c
    const/4 v9, 0x7

    .line 1071
    if-ne v7, v9, :cond_2e

    .line 1072
    .line 1073
    iget-object v0, v12, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 1074
    .line 1075
    iget-object v2, v12, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 1076
    .line 1077
    const/4 v9, 0x0

    .line 1078
    invoke-virtual {v0, v2, v9}, Lcom/android/internal/policy/TransitionAnimation;->loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v0

    .line 1082
    const/4 v2, 0x1

    .line 1083
    aget-boolean v3, v20, v2

    .line 1084
    .line 1085
    if-eqz v3, :cond_2d

    .line 1086
    .line 1087
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v2

    .line 1091
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v3

    .line 1095
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v3

    .line 1099
    invoke-static {v15}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v5

    .line 1103
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v5

    .line 1107
    sget-object v39, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1108
    .line 1109
    filled-new-array {v2, v3, v5}, [Ljava/lang/Object;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v44

    .line 1113
    const/16 v43, 0x0

    .line 1114
    .line 1115
    const-wide v40, 0x316bfb499463f16L

    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    const/16 v42, 0x0

    .line 1121
    .line 1122
    invoke-static/range {v39 .. v44}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1123
    .line 1124
    .line 1125
    :cond_2d
    move-object/from16 v24, v4

    .line 1126
    .line 1127
    move/from16 v16, v9

    .line 1128
    .line 1129
    move/from16 v19, v10

    .line 1130
    .line 1131
    move-object v15, v12

    .line 1132
    move/from16 v51, v13

    .line 1133
    .line 1134
    move-object v9, v0

    .line 1135
    const/4 v0, 0x1

    .line 1136
    goto/16 :goto_3a

    .line 1137
    .line 1138
    :cond_2e
    const/16 v9, 0x8

    .line 1139
    .line 1140
    if-ne v7, v9, :cond_31

    .line 1141
    .line 1142
    iget-object v2, v12, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 1143
    .line 1144
    iget-object v0, v12, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 1145
    .line 1146
    if-eqz v0, :cond_2f

    .line 1147
    .line 1148
    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1149
    .line 1150
    move-object v7, v0

    .line 1151
    goto :goto_1b

    .line 1152
    :cond_2f
    const/4 v7, 0x0

    .line 1153
    :goto_1b
    move v9, v3

    .line 1154
    move/from16 v3, p2

    .line 1155
    .line 1156
    move-object v11, v4

    .line 1157
    const/16 v0, 0x19

    .line 1158
    .line 1159
    move v4, v9

    .line 1160
    const/16 v9, 0xf

    .line 1161
    .line 1162
    move-object v5, v11

    .line 1163
    move-object v6, v8

    .line 1164
    const/16 v8, 0xb

    .line 1165
    .line 1166
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/policy/TransitionAnimation;->createClipRevealAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v2

    .line 1170
    const/4 v3, 0x1

    .line 1171
    aget-boolean v4, v20, v3

    .line 1172
    .line 1173
    if-eqz v4, :cond_30

    .line 1174
    .line 1175
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v3

    .line 1179
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v4

    .line 1183
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v4

    .line 1187
    invoke-static {v15}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v5

    .line 1191
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v5

    .line 1195
    sget-object v39, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1196
    .line 1197
    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v44

    .line 1201
    const/16 v43, 0x0

    .line 1202
    .line 1203
    const-wide v40, 0x42b9c3bc7ff2336dL    # 2.8328471818803426E13

    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    const/16 v42, 0x0

    .line 1209
    .line 1210
    invoke-static/range {v39 .. v44}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1211
    .line 1212
    .line 1213
    :cond_30
    move-object v9, v2

    .line 1214
    move/from16 v19, v10

    .line 1215
    .line 1216
    move-object/from16 v24, v11

    .line 1217
    .line 1218
    goto/16 :goto_16

    .line 1219
    .line 1220
    :cond_31
    move v9, v3

    .line 1221
    move-object v3, v4

    .line 1222
    const/16 v4, 0xf

    .line 1223
    .line 1224
    const/16 v8, 0xb

    .line 1225
    .line 1226
    const/4 v15, 0x2

    .line 1227
    if-ne v7, v15, :cond_34

    .line 1228
    .line 1229
    iget-object v0, v12, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 1230
    .line 1231
    iget-object v2, v12, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 1232
    .line 1233
    if-eqz v2, :cond_32

    .line 1234
    .line 1235
    iget-object v2, v2, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1236
    .line 1237
    goto :goto_1c

    .line 1238
    :cond_32
    const/4 v2, 0x0

    .line 1239
    :goto_1c
    invoke-virtual {v0, v14, v9, v3, v2}, Lcom/android/internal/policy/TransitionAnimation;->createScaleUpAnimationLockedCompat(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v0

    .line 1243
    const/4 v2, 0x1

    .line 1244
    aget-boolean v5, v20, v2

    .line 1245
    .line 1246
    if-eqz v5, :cond_33

    .line 1247
    .line 1248
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v2

    .line 1252
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v5

    .line 1256
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v5

    .line 1260
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v6

    .line 1264
    const/4 v7, 0x3

    .line 1265
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v7

    .line 1269
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v7

    .line 1273
    sget-object v39, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1274
    .line 1275
    filled-new-array {v2, v5, v6, v7}, [Ljava/lang/Object;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v44

    .line 1279
    const/16 v43, 0x0

    .line 1280
    .line 1281
    const-wide v40, -0x144f9f509ea3c59fL    # -5.384300124456508E210

    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    const/16 v42, 0x0

    .line 1287
    .line 1288
    invoke-static/range {v39 .. v44}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1289
    .line 1290
    .line 1291
    :cond_33
    :goto_1d
    move-object v9, v0

    .line 1292
    move-object/from16 v24, v3

    .line 1293
    .line 1294
    goto/16 :goto_15

    .line 1295
    .line 1296
    :cond_34
    const/4 v4, 0x3

    .line 1297
    if-eq v7, v4, :cond_61

    .line 1298
    .line 1299
    const/4 v4, 0x4

    .line 1300
    if-ne v7, v4, :cond_35

    .line 1301
    .line 1302
    move-object/from16 v24, v3

    .line 1303
    .line 1304
    move/from16 v18, v9

    .line 1305
    .line 1306
    move/from16 v19, v10

    .line 1307
    .line 1308
    move-object v15, v12

    .line 1309
    move/from16 v51, v13

    .line 1310
    .line 1311
    const/4 v0, 0x1

    .line 1312
    const/4 v2, 0x3

    .line 1313
    const/16 v16, 0x0

    .line 1314
    .line 1315
    goto/16 :goto_34

    .line 1316
    .line 1317
    :cond_35
    const/4 v4, 0x5

    .line 1318
    if-eq v7, v4, :cond_5c

    .line 1319
    .line 1320
    const/4 v4, 0x6

    .line 1321
    if-ne v7, v4, :cond_36

    .line 1322
    .line 1323
    const/4 v0, 0x7

    .line 1324
    const/4 v2, 0x5

    .line 1325
    const/16 v4, 0x19

    .line 1326
    .line 1327
    const/16 v16, 0x1

    .line 1328
    .line 1329
    const/16 v18, 0x0

    .line 1330
    .line 1331
    goto/16 :goto_2f

    .line 1332
    .line 1333
    :cond_36
    const/16 v4, 0x9

    .line 1334
    .line 1335
    if-ne v7, v4, :cond_37

    .line 1336
    .line 1337
    if-eqz v9, :cond_37

    .line 1338
    .line 1339
    iget-object v0, v12, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 1340
    .line 1341
    invoke-virtual {v0}, Lcom/android/internal/policy/TransitionAnimation;->loadCrossProfileAppEnterAnimation()Landroid/view/animation/Animation;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v0

    .line 1345
    const/4 v2, 0x1

    .line 1346
    aget-boolean v5, v20, v2

    .line 1347
    .line 1348
    if-eqz v5, :cond_33

    .line 1349
    .line 1350
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v2

    .line 1354
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v5

    .line 1358
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v5

    .line 1362
    const/4 v6, 0x3

    .line 1363
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v6

    .line 1367
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v6

    .line 1371
    sget-object v39, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1372
    .line 1373
    filled-new-array {v2, v5, v6}, [Ljava/lang/Object;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v44

    .line 1377
    const/16 v43, 0x0

    .line 1378
    .line 1379
    const-wide v40, 0x526c646048893271L    # 1.1296038527757843E89

    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    const/16 v42, 0x0

    .line 1385
    .line 1386
    invoke-static/range {v39 .. v44}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1387
    .line 1388
    .line 1389
    goto :goto_1d

    .line 1390
    :cond_37
    const/16 v5, 0x1b

    .line 1391
    .line 1392
    if-eq v14, v5, :cond_38

    .line 1393
    .line 1394
    const/16 v6, 0x1e

    .line 1395
    .line 1396
    if-ne v14, v6, :cond_39

    .line 1397
    .line 1398
    :cond_38
    const/4 v11, 0x0

    .line 1399
    goto/16 :goto_2e

    .line 1400
    .line 1401
    :cond_39
    const/16 v6, 0x18

    .line 1402
    .line 1403
    const/16 v7, 0x19

    .line 1404
    .line 1405
    if-eq v14, v6, :cond_4c

    .line 1406
    .line 1407
    if-eq v14, v7, :cond_4b

    .line 1408
    .line 1409
    const/16 v11, 0x1c

    .line 1410
    .line 1411
    if-eq v14, v11, :cond_49

    .line 1412
    .line 1413
    const/16 v4, 0x1d

    .line 1414
    .line 1415
    if-eq v14, v4, :cond_47

    .line 1416
    .line 1417
    const/16 v4, 0x1f

    .line 1418
    .line 1419
    if-eq v14, v4, :cond_45

    .line 1420
    .line 1421
    const/16 v4, 0x20

    .line 1422
    .line 1423
    if-eq v14, v4, :cond_44

    .line 1424
    .line 1425
    packed-switch v14, :pswitch_data_0

    .line 1426
    .line 1427
    .line 1428
    const/4 v4, 0x0

    .line 1429
    goto/16 :goto_24

    .line 1430
    .line 1431
    :pswitch_0
    if-eqz v9, :cond_3a

    .line 1432
    .line 1433
    move v4, v7

    .line 1434
    goto/16 :goto_24

    .line 1435
    .line 1436
    :cond_3a
    move v4, v6

    .line 1437
    goto/16 :goto_24

    .line 1438
    .line 1439
    :pswitch_1
    if-eqz v9, :cond_3b

    .line 1440
    .line 1441
    const/16 v34, 0x16

    .line 1442
    .line 1443
    goto :goto_1e

    .line 1444
    :cond_3b
    const/16 v34, 0x17

    .line 1445
    .line 1446
    :goto_1e
    move/from16 v4, v34

    .line 1447
    .line 1448
    goto/16 :goto_24

    .line 1449
    .line 1450
    :pswitch_2
    if-eqz v9, :cond_3c

    .line 1451
    .line 1452
    move/from16 v36, v29

    .line 1453
    .line 1454
    goto :goto_1f

    .line 1455
    :cond_3c
    const/16 v36, 0x15

    .line 1456
    .line 1457
    :goto_1f
    move/from16 v4, v36

    .line 1458
    .line 1459
    goto/16 :goto_24

    .line 1460
    .line 1461
    :pswitch_3
    if-eqz v9, :cond_3d

    .line 1462
    .line 1463
    const/16 v4, 0x10

    .line 1464
    .line 1465
    goto/16 :goto_24

    .line 1466
    .line 1467
    :cond_3d
    const/16 v4, 0x11

    .line 1468
    .line 1469
    goto :goto_24

    .line 1470
    :pswitch_4
    if-eqz v9, :cond_3e

    .line 1471
    .line 1472
    const/16 v4, 0x12

    .line 1473
    .line 1474
    goto :goto_24

    .line 1475
    :cond_3e
    const/16 v4, 0x13

    .line 1476
    .line 1477
    goto :goto_24

    .line 1478
    :pswitch_5
    if-eqz v9, :cond_3f

    .line 1479
    .line 1480
    const/16 v5, 0xe

    .line 1481
    .line 1482
    goto :goto_20

    .line 1483
    :cond_3f
    const/16 v5, 0xf

    .line 1484
    .line 1485
    :cond_40
    :goto_20
    move v4, v5

    .line 1486
    goto :goto_24

    .line 1487
    :pswitch_6
    if-eqz v9, :cond_41

    .line 1488
    .line 1489
    const/16 v4, 0xc

    .line 1490
    .line 1491
    goto :goto_24

    .line 1492
    :cond_41
    const/16 v4, 0xd

    .line 1493
    .line 1494
    goto :goto_24

    .line 1495
    :pswitch_7
    if-eqz v9, :cond_42

    .line 1496
    .line 1497
    const/16 v4, 0xa

    .line 1498
    .line 1499
    goto :goto_24

    .line 1500
    :cond_42
    move v4, v8

    .line 1501
    goto :goto_24

    .line 1502
    :pswitch_8
    if-eqz v9, :cond_43

    .line 1503
    .line 1504
    const/16 v4, 0x8

    .line 1505
    .line 1506
    goto :goto_24

    .line 1507
    :cond_43
    const/16 v4, 0x9

    .line 1508
    .line 1509
    goto :goto_24

    .line 1510
    :cond_44
    if-eqz v9, :cond_40

    .line 1511
    .line 1512
    const/4 v5, 0x0

    .line 1513
    goto :goto_20

    .line 1514
    :cond_45
    if-eqz v9, :cond_46

    .line 1515
    .line 1516
    goto :goto_21

    .line 1517
    :cond_46
    const/16 v11, 0x1d

    .line 1518
    .line 1519
    :goto_21
    move v4, v11

    .line 1520
    goto :goto_24

    .line 1521
    :cond_47
    if-eqz v9, :cond_48

    .line 1522
    .line 1523
    :goto_22
    const/4 v4, 0x6

    .line 1524
    goto :goto_24

    .line 1525
    :cond_48
    const/4 v4, 0x7

    .line 1526
    goto :goto_24

    .line 1527
    :cond_49
    if-eqz v9, :cond_4a

    .line 1528
    .line 1529
    :goto_23
    const/4 v4, 0x4

    .line 1530
    goto :goto_24

    .line 1531
    :cond_4a
    const/4 v4, 0x5

    .line 1532
    goto :goto_24

    .line 1533
    :cond_4b
    :pswitch_9
    if-eqz v9, :cond_48

    .line 1534
    .line 1535
    goto :goto_22

    .line 1536
    :cond_4c
    :pswitch_a
    if-eqz v9, :cond_4a

    .line 1537
    .line 1538
    goto :goto_23

    .line 1539
    :goto_24
    if-eqz v4, :cond_56

    .line 1540
    .line 1541
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v5

    .line 1545
    if-nez v5, :cond_4d

    .line 1546
    .line 1547
    :goto_25
    const/4 v5, 0x0

    .line 1548
    const/4 v6, 0x7

    .line 1549
    goto :goto_28

    .line 1550
    :cond_4d
    const/4 v6, 0x5

    .line 1551
    if-eq v4, v6, :cond_4f

    .line 1552
    .line 1553
    const/4 v6, 0x6

    .line 1554
    if-ne v4, v6, :cond_4e

    .line 1555
    .line 1556
    goto :goto_26

    .line 1557
    :cond_4e
    const/4 v6, 0x4

    .line 1558
    goto :goto_27

    .line 1559
    :cond_4f
    :goto_26
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1560
    .line 1561
    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowContainer;->getActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v5

    .line 1565
    if-nez v5, :cond_4e

    .line 1566
    .line 1567
    goto :goto_25

    .line 1568
    :goto_27
    if-eq v4, v6, :cond_52

    .line 1569
    .line 1570
    const/4 v6, 0x5

    .line 1571
    if-eq v4, v6, :cond_52

    .line 1572
    .line 1573
    const/4 v6, 0x6

    .line 1574
    if-eq v4, v6, :cond_50

    .line 1575
    .line 1576
    const/4 v6, 0x7

    .line 1577
    if-eq v4, v6, :cond_51

    .line 1578
    .line 1579
    const/4 v5, 0x0

    .line 1580
    goto :goto_28

    .line 1581
    :cond_50
    const/4 v6, 0x7

    .line 1582
    :cond_51
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    .line 1583
    .line 1584
    goto :goto_28

    .line 1585
    :cond_52
    const/4 v6, 0x7

    .line 1586
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mCustomOpenTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    .line 1587
    .line 1588
    :goto_28
    if-eqz v5, :cond_54

    .line 1589
    .line 1590
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v11

    .line 1594
    iget-object v6, v12, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 1595
    .line 1596
    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1597
    .line 1598
    if-eqz v9, :cond_53

    .line 1599
    .line 1600
    iget v7, v5, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    .line 1601
    .line 1602
    goto :goto_29

    .line 1603
    :cond_53
    iget v7, v5, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I

    .line 1604
    .line 1605
    :goto_29
    invoke-virtual {v6, v11, v7}, Lcom/android/internal/policy/TransitionAnimation;->loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v6

    .line 1609
    if-eqz v6, :cond_57

    .line 1610
    .line 1611
    iget v5, v5, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    .line 1612
    .line 1613
    if-eqz v5, :cond_57

    .line 1614
    .line 1615
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setBackdropColor(I)V

    .line 1616
    .line 1617
    .line 1618
    const/4 v5, 0x1

    .line 1619
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setShowBackdrop(Z)V

    .line 1620
    .line 1621
    .line 1622
    goto :goto_2a

    .line 1623
    :cond_54
    if-eqz v2, :cond_55

    .line 1624
    .line 1625
    iget-object v5, v12, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 1626
    .line 1627
    invoke-virtual {v5, v0, v4, v14}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v6

    .line 1631
    goto :goto_2a

    .line 1632
    :cond_55
    iget-object v5, v12, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 1633
    .line 1634
    invoke-virtual {v5, v4, v14}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationAttr(II)Landroid/view/animation/Animation;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v6

    .line 1638
    goto :goto_2a

    .line 1639
    :cond_56
    const/4 v6, 0x0

    .line 1640
    :cond_57
    :goto_2a
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM_WITH_DIM:Z

    .line 1641
    .line 1642
    if-eqz v5, :cond_59

    .line 1643
    .line 1644
    if-eqz v6, :cond_59

    .line 1645
    .line 1646
    packed-switch v14, :pswitch_data_1

    .line 1647
    .line 1648
    .line 1649
    const/4 v5, 0x0

    .line 1650
    goto :goto_2b

    .line 1651
    :pswitch_b
    move v5, v15

    .line 1652
    goto :goto_2b

    .line 1653
    :pswitch_c
    const/4 v5, 0x1

    .line 1654
    :goto_2b
    iget-object v7, v1, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 1655
    .line 1656
    const/4 v11, 0x0

    .line 1657
    invoke-virtual {v7, v5, v9, v0, v11}, Lcom/android/server/wm/DimAnimator;->canCreateDimAnimationLayer(IZLandroid/view/WindowManager$LayoutParams;Landroid/window/TransitionInfo$Change;)Z

    .line 1658
    .line 1659
    .line 1660
    move-result v0

    .line 1661
    if-eqz v0, :cond_58

    .line 1662
    .line 1663
    invoke-virtual {v7, v5}, Lcom/android/server/wm/DimAnimator;->createDimAnimationLayer(I)V

    .line 1664
    .line 1665
    .line 1666
    :cond_58
    :goto_2c
    const/4 v0, 0x1

    .line 1667
    goto :goto_2d

    .line 1668
    :cond_59
    const/4 v11, 0x0

    .line 1669
    goto :goto_2c

    .line 1670
    :goto_2d
    aget-boolean v5, v20, v0

    .line 1671
    .line 1672
    if-eqz v5, :cond_5a

    .line 1673
    .line 1674
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1675
    .line 1676
    .line 1677
    move-result-object v39

    .line 1678
    int-to-long v4, v4

    .line 1679
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v0

    .line 1683
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v41

    .line 1687
    const/4 v0, 0x3

    .line 1688
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v0

    .line 1692
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v44

    .line 1696
    sget-object v45, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1697
    .line 1698
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v40

    .line 1702
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v42

    .line 1706
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v43

    .line 1710
    filled-new-array/range {v39 .. v44}, [Ljava/lang/Object;

    .line 1711
    .line 1712
    .line 1713
    move-result-object v50

    .line 1714
    const-wide v46, -0x10e9735dc5f9c6c9L    # -1.335459687737309E227

    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    const/16 v48, 0x3c4

    .line 1720
    .line 1721
    const/16 v49, 0x0

    .line 1722
    .line 1723
    invoke-static/range {v45 .. v50}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1724
    .line 1725
    .line 1726
    :cond_5a
    move-object/from16 v24, v3

    .line 1727
    .line 1728
    move-object v9, v6

    .line 1729
    goto/16 :goto_15

    .line 1730
    .line 1731
    :goto_2e
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 1732
    .line 1733
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1734
    .line 1735
    invoke-direct {v0, v2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1736
    .line 1737
    .line 1738
    const-wide/16 v4, 0x150

    .line 1739
    .line 1740
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1741
    .line 1742
    .line 1743
    const/16 v16, 0x1

    .line 1744
    .line 1745
    aget-boolean v2, v20, v16

    .line 1746
    .line 1747
    if-eqz v2, :cond_5b

    .line 1748
    .line 1749
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v2

    .line 1753
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v4

    .line 1757
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v4

    .line 1761
    const/4 v5, 0x3

    .line 1762
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v5

    .line 1766
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1767
    .line 1768
    .line 1769
    move-result-object v5

    .line 1770
    sget-object v39, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1771
    .line 1772
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v6

    .line 1776
    filled-new-array {v2, v4, v6, v5}, [Ljava/lang/Object;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v44

    .line 1780
    const-wide v40, 0x7e0c81330ab93d4aL    # 1.4913581746241443E299

    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    const/16 v42, 0x30

    .line 1786
    .line 1787
    const/16 v43, 0x0

    .line 1788
    .line 1789
    invoke-static/range {v39 .. v44}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1790
    .line 1791
    .line 1792
    :cond_5b
    move-object v9, v0

    .line 1793
    move-object/from16 v24, v3

    .line 1794
    .line 1795
    move/from16 v19, v10

    .line 1796
    .line 1797
    move-object v15, v12

    .line 1798
    move/from16 v51, v13

    .line 1799
    .line 1800
    move/from16 v0, v16

    .line 1801
    .line 1802
    goto/16 :goto_17

    .line 1803
    .line 1804
    :cond_5c
    const/4 v0, 0x7

    .line 1805
    const/16 v4, 0x19

    .line 1806
    .line 1807
    const/16 v16, 0x1

    .line 1808
    .line 1809
    const/16 v18, 0x0

    .line 1810
    .line 1811
    const/4 v2, 0x5

    .line 1812
    :goto_2f
    if-ne v7, v2, :cond_5d

    .line 1813
    .line 1814
    move/from16 v7, v16

    .line 1815
    .line 1816
    goto :goto_30

    .line 1817
    :cond_5d
    const/4 v7, 0x0

    .line 1818
    :goto_30
    iput-boolean v7, v12, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1819
    .line 1820
    iget-object v2, v12, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 1821
    .line 1822
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    .line 1823
    .line 1824
    .line 1825
    move-result v7

    .line 1826
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1827
    .line 1828
    .line 1829
    move-result-object v2

    .line 1830
    check-cast v2, Landroid/view/AppTransitionAnimationSpec;

    .line 1831
    .line 1832
    iget-object v7, v12, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 1833
    .line 1834
    iget-boolean v0, v12, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1835
    .line 1836
    if-eqz v2, :cond_5e

    .line 1837
    .line 1838
    iget-object v2, v2, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1839
    .line 1840
    move-object/from16 v21, v2

    .line 1841
    .line 1842
    goto :goto_31

    .line 1843
    :cond_5e
    move-object/from16 v21, v18

    .line 1844
    .line 1845
    :goto_31
    iget-object v2, v12, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 1846
    .line 1847
    if-eqz v2, :cond_5f

    .line 1848
    .line 1849
    iget-object v2, v2, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 1850
    .line 1851
    move-object/from16 v23, v2

    .line 1852
    .line 1853
    goto :goto_32

    .line 1854
    :cond_5f
    move-object/from16 v23, v18

    .line 1855
    .line 1856
    :goto_32
    move-object v2, v7

    .line 1857
    move-object/from16 v24, v3

    .line 1858
    .line 1859
    move v7, v4

    .line 1860
    move v3, v9

    .line 1861
    const/16 v17, 0x9

    .line 1862
    .line 1863
    move v4, v0

    .line 1864
    move-object/from16 v0, v28

    .line 1865
    .line 1866
    move-object/from16 v19, v6

    .line 1867
    .line 1868
    move/from16 v6, p2

    .line 1869
    .line 1870
    move-object/from16 v25, v35

    .line 1871
    .line 1872
    move-object/from16 v7, v24

    .line 1873
    .line 1874
    move-object/from16 v8, v19

    .line 1875
    .line 1876
    move/from16 v18, v9

    .line 1877
    .line 1878
    const/16 v17, 0x0

    .line 1879
    .line 1880
    move-object/from16 v9, v25

    .line 1881
    .line 1882
    move/from16 v19, v10

    .line 1883
    .line 1884
    move-object v10, v0

    .line 1885
    move/from16 v0, v16

    .line 1886
    .line 1887
    move-object v15, v12

    .line 1888
    move/from16 v16, v17

    .line 1889
    .line 1890
    move-object/from16 v12, v21

    .line 1891
    .line 1892
    move/from16 v51, v13

    .line 1893
    .line 1894
    move-object/from16 v13, v23

    .line 1895
    .line 1896
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/policy/TransitionAnimation;->createAspectScaledThumbnailEnterExitAnimationLocked(ZZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 1897
    .line 1898
    .line 1899
    move-result-object v9

    .line 1900
    aget-boolean v2, v20, v0

    .line 1901
    .line 1902
    if-eqz v2, :cond_67

    .line 1903
    .line 1904
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1905
    .line 1906
    .line 1907
    move-result-object v2

    .line 1908
    iget-boolean v3, v15, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1909
    .line 1910
    if-eqz v3, :cond_60

    .line 1911
    .line 1912
    const-string v3, "ANIM_THUMBNAIL_ASPECT_SCALE_UP"

    .line 1913
    .line 1914
    goto :goto_33

    .line 1915
    :cond_60
    const-string v3, "ANIM_THUMBNAIL_ASPECT_SCALE_DOWN"

    .line 1916
    .line 1917
    :goto_33
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 1918
    .line 1919
    .line 1920
    move-result-object v4

    .line 1921
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v4

    .line 1925
    const/4 v5, 0x3

    .line 1926
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v5

    .line 1930
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1931
    .line 1932
    .line 1933
    move-result-object v5

    .line 1934
    sget-object v30, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 1935
    .line 1936
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1937
    .line 1938
    .line 1939
    move-result-object v6

    .line 1940
    filled-new-array {v2, v3, v4, v6, v5}, [Ljava/lang/Object;

    .line 1941
    .line 1942
    .line 1943
    move-result-object v35

    .line 1944
    const-wide v31, -0x796db67b5d1dce9eL    # -5.158111672005744E-277

    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    const/16 v33, 0xc0

    .line 1950
    .line 1951
    const/16 v34, 0x0

    .line 1952
    .line 1953
    invoke-static/range {v30 .. v35}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 1954
    .line 1955
    .line 1956
    goto/16 :goto_3a

    .line 1957
    .line 1958
    :cond_61
    move-object/from16 v24, v3

    .line 1959
    .line 1960
    move/from16 v18, v9

    .line 1961
    .line 1962
    move/from16 v19, v10

    .line 1963
    .line 1964
    move-object v15, v12

    .line 1965
    move/from16 v51, v13

    .line 1966
    .line 1967
    const/4 v0, 0x1

    .line 1968
    const/16 v16, 0x0

    .line 1969
    .line 1970
    move v2, v4

    .line 1971
    :goto_34
    if-ne v7, v2, :cond_62

    .line 1972
    .line 1973
    move v12, v0

    .line 1974
    goto :goto_35

    .line 1975
    :cond_62
    move/from16 v12, v16

    .line 1976
    .line 1977
    :goto_35
    iput-boolean v12, v15, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 1978
    .line 1979
    iget-object v2, v15, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    .line 1980
    .line 1981
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    .line 1982
    .line 1983
    .line 1984
    move-result v3

    .line 1985
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1986
    .line 1987
    .line 1988
    move-result-object v2

    .line 1989
    check-cast v2, Landroid/view/AppTransitionAnimationSpec;

    .line 1990
    .line 1991
    if-nez v2, :cond_63

    .line 1992
    .line 1993
    iget-object v2, v15, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 1994
    .line 1995
    :cond_63
    if-eqz v2, :cond_64

    .line 1996
    .line 1997
    iget-object v2, v2, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/hardware/HardwareBuffer;

    .line 1998
    .line 1999
    move-object v7, v2

    .line 2000
    goto :goto_36

    .line 2001
    :cond_64
    const/4 v7, 0x0

    .line 2002
    :goto_36
    iget-object v2, v15, Lcom/android/server/wm/AppTransition;->mTransitionAnimation:Lcom/android/internal/policy/TransitionAnimation;

    .line 2003
    .line 2004
    iget-boolean v4, v15, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 2005
    .line 2006
    iget-object v3, v15, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    .line 2007
    .line 2008
    if-eqz v3, :cond_65

    .line 2009
    .line 2010
    iget-object v3, v3, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    .line 2011
    .line 2012
    move-object v8, v3

    .line 2013
    goto :goto_37

    .line 2014
    :cond_65
    const/4 v8, 0x0

    .line 2015
    :goto_37
    move/from16 v3, v18

    .line 2016
    .line 2017
    move-object/from16 v5, v24

    .line 2018
    .line 2019
    move/from16 v6, p2

    .line 2020
    .line 2021
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/policy/TransitionAnimation;->createThumbnailEnterExitAnimationLockedCompat(ZZLandroid/graphics/Rect;ILandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v9

    .line 2025
    aget-boolean v2, v20, v0

    .line 2026
    .line 2027
    if-eqz v2, :cond_67

    .line 2028
    .line 2029
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v2

    .line 2033
    iget-boolean v3, v15, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    .line 2034
    .line 2035
    if-eqz v3, :cond_66

    .line 2036
    .line 2037
    const-string v3, "ANIM_THUMBNAIL_SCALE_UP"

    .line 2038
    .line 2039
    goto :goto_38

    .line 2040
    :cond_66
    const-string v3, "ANIM_THUMBNAIL_SCALE_DOWN"

    .line 2041
    .line 2042
    :goto_38
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v4

    .line 2046
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2047
    .line 2048
    .line 2049
    move-result-object v4

    .line 2050
    const/4 v5, 0x3

    .line 2051
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 2052
    .line 2053
    .line 2054
    move-result-object v5

    .line 2055
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2056
    .line 2057
    .line 2058
    move-result-object v5

    .line 2059
    sget-object v30, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2060
    .line 2061
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2062
    .line 2063
    .line 2064
    move-result-object v6

    .line 2065
    filled-new-array {v2, v3, v4, v6, v5}, [Ljava/lang/Object;

    .line 2066
    .line 2067
    .line 2068
    move-result-object v35

    .line 2069
    const-wide v31, -0x796db67b5d1dce9eL    # -5.158111672005744E-277

    .line 2070
    .line 2071
    .line 2072
    .line 2073
    .line 2074
    const/16 v33, 0xc0

    .line 2075
    .line 2076
    const/16 v34, 0x0

    .line 2077
    .line 2078
    invoke-static/range {v30 .. v35}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 2079
    .line 2080
    .line 2081
    goto :goto_3a

    .line 2082
    :goto_39
    const/4 v9, 0x0

    .line 2083
    :cond_67
    :goto_3a
    iget-object v2, v15, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    .line 2084
    .line 2085
    if-eqz v2, :cond_68

    .line 2086
    .line 2087
    if-eqz v9, :cond_68

    .line 2088
    .line 2089
    new-instance v3, Lcom/android/server/wm/AppTransition$1;

    .line 2090
    .line 2091
    invoke-direct {v3, v15, v2}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V

    .line 2092
    .line 2093
    .line 2094
    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2095
    .line 2096
    .line 2097
    :cond_68
    :goto_3b
    if-eqz v9, :cond_70

    .line 2098
    .line 2099
    const-wide/16 v2, 0xbb8

    .line 2100
    .line 2101
    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 2102
    .line 2103
    .line 2104
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 2105
    .line 2106
    sget-object v3, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    .line 2107
    .line 2108
    invoke-static {v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    .line 2109
    .line 2110
    .line 2111
    move-result v3

    .line 2112
    if-eqz v3, :cond_69

    .line 2113
    .line 2114
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    .line 2115
    .line 2116
    const/4 v4, 0x2

    .line 2117
    aget-boolean v3, v3, v4

    .line 2118
    .line 2119
    if-eqz v3, :cond_69

    .line 2120
    .line 2121
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2122
    .line 2123
    .line 2124
    move-result-object v3

    .line 2125
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2126
    .line 2127
    .line 2128
    move-result-object v4

    .line 2129
    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDuration()J

    .line 2130
    .line 2131
    .line 2132
    move-result-wide v5

    .line 2133
    invoke-static/range {v29 .. v29}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 2134
    .line 2135
    .line 2136
    move-result-object v7

    .line 2137
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2138
    .line 2139
    .line 2140
    move-result-object v7

    .line 2141
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2142
    .line 2143
    .line 2144
    move-result-object v5

    .line 2145
    filled-new-array {v3, v4, v5, v7}, [Ljava/lang/Object;

    .line 2146
    .line 2147
    .line 2148
    move-result-object v35

    .line 2149
    const/16 v34, 0x0

    .line 2150
    .line 2151
    const-wide v31, 0x7d2338fec0053891L    # 6.138450261579648E294

    .line 2152
    .line 2153
    .line 2154
    .line 2155
    .line 2156
    const/16 v33, 0x10

    .line 2157
    .line 2158
    move-object/from16 v30, v2

    .line 2159
    .line 2160
    invoke-static/range {v30 .. v35}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 2161
    .line 2162
    .line 2163
    :cond_69
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v2

    .line 2167
    if-eqz v2, :cond_6f

    .line 2168
    .line 2169
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2170
    .line 2171
    .line 2172
    move-result-object v2

    .line 2173
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 2174
    .line 2175
    iget-boolean v2, v2, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 2176
    .line 2177
    if-eqz v2, :cond_6f

    .line 2178
    .line 2179
    const/16 v2, 0x8

    .line 2180
    .line 2181
    if-eq v14, v2, :cond_6a

    .line 2182
    .line 2183
    const/16 v2, 0x10

    .line 2184
    .line 2185
    if-eq v14, v2, :cond_6a

    .line 2186
    .line 2187
    const/16 v2, 0xa

    .line 2188
    .line 2189
    if-ne v14, v2, :cond_6b

    .line 2190
    .line 2191
    :cond_6a
    const/16 v2, 0x9

    .line 2192
    .line 2193
    goto :goto_3c

    .line 2194
    :cond_6b
    const/16 v2, 0x9

    .line 2195
    .line 2196
    if-eq v14, v2, :cond_6e

    .line 2197
    .line 2198
    const/16 v3, 0xb

    .line 2199
    .line 2200
    if-ne v14, v3, :cond_6c

    .line 2201
    .line 2202
    goto :goto_3c

    .line 2203
    :cond_6c
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    .line 2204
    .line 2205
    .line 2206
    move-result v3

    .line 2207
    if-eqz v3, :cond_6d

    .line 2208
    .line 2209
    goto :goto_3c

    .line 2210
    :cond_6d
    move/from16 v6, v26

    .line 2211
    .line 2212
    move/from16 v5, v51

    .line 2213
    .line 2214
    goto :goto_3d

    .line 2215
    :cond_6e
    :goto_3c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2216
    .line 2217
    .line 2218
    move-result-object v3

    .line 2219
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2220
    .line 2221
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 2222
    .line 2223
    .line 2224
    move-result-object v3

    .line 2225
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 2226
    .line 2227
    .line 2228
    move-result v4

    .line 2229
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 2230
    .line 2231
    .line 2232
    move-result v3

    .line 2233
    move/from16 v6, v26

    .line 2234
    .line 2235
    move/from16 v5, v51

    .line 2236
    .line 2237
    invoke-virtual {v9, v4, v3, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2238
    .line 2239
    .line 2240
    goto :goto_3e

    .line 2241
    :cond_6f
    move/from16 v6, v26

    .line 2242
    .line 2243
    move/from16 v5, v51

    .line 2244
    .line 2245
    const/16 v2, 0x9

    .line 2246
    .line 2247
    :goto_3d
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    .line 2248
    .line 2249
    .line 2250
    move-result v3

    .line 2251
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    .line 2252
    .line 2253
    .line 2254
    move-result v4

    .line 2255
    invoke-virtual {v9, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2256
    .line 2257
    .line 2258
    :goto_3e
    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2259
    .line 2260
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    .line 2261
    .line 2262
    .line 2263
    move-result v3

    .line 2264
    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 2265
    .line 2266
    .line 2267
    goto :goto_3f

    .line 2268
    :cond_70
    const/16 v2, 0x9

    .line 2269
    .line 2270
    :goto_3f
    move-object v3, v9

    .line 2271
    goto :goto_41

    .line 2272
    :goto_40
    const/4 v3, 0x0

    .line 2273
    :goto_41
    if-eqz v3, :cond_75

    .line 2274
    .line 2275
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 2276
    .line 2277
    .line 2278
    move-result v4

    .line 2279
    if-nez v4, :cond_71

    .line 2280
    .line 2281
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2282
    .line 2283
    .line 2284
    move-result-object v4

    .line 2285
    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mWindowCornerRadius:F

    .line 2286
    .line 2287
    :goto_42
    move v10, v4

    .line 2288
    goto :goto_43

    .line 2289
    :cond_71
    const/4 v4, 0x0

    .line 2290
    goto :goto_42

    .line 2291
    :goto_43
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v4

    .line 2295
    if-eqz v4, :cond_72

    .line 2296
    .line 2297
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2298
    .line 2299
    .line 2300
    move-result-object v4

    .line 2301
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mNeedsLetterboxedAnimation:Z

    .line 2302
    .line 2303
    if-eqz v4, :cond_72

    .line 2304
    .line 2305
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 2306
    .line 2307
    .line 2308
    move-result-object v4

    .line 2309
    iget-object v5, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 2310
    .line 2311
    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 2312
    .line 2313
    iget-object v4, v4, Lcom/android/server/wm/AppCompatController;->mAppCompatLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    .line 2314
    .line 2315
    iget-object v4, v4, Lcom/android/server/wm/AppCompatLetterboxPolicy;->mLetterboxPolicyState:Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;

    .line 2316
    .line 2317
    invoke-virtual {v4, v5}, Lcom/android/server/wm/AppCompatLetterboxPolicy$LetterboxPolicyState;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    .line 2318
    .line 2319
    .line 2320
    :cond_72
    new-instance v11, Lcom/android/server/wm/LocalAnimationAdapter;

    .line 2321
    .line 2322
    new-instance v12, Lcom/android/server/wm/WindowAnimationSpec;

    .line 2323
    .line 2324
    iget-object v6, v1, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    .line 2325
    .line 2326
    iget-object v7, v1, Lcom/android/server/wm/WindowContainer;->mTmpRect:Landroid/graphics/Rect;

    .line 2327
    .line 2328
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2329
    .line 2330
    .line 2331
    move-result-object v4

    .line 2332
    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2333
    .line 2334
    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    .line 2335
    .line 2336
    .line 2337
    move-result v8

    .line 2338
    move-object v4, v12

    .line 2339
    move-object v5, v3

    .line 2340
    move/from16 v9, v19

    .line 2341
    .line 2342
    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIF)V

    .line 2343
    .line 2344
    .line 2345
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 2346
    .line 2347
    .line 2348
    move-result-object v4

    .line 2349
    invoke-direct {v11, v12, v4}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 2350
    .line 2351
    .line 2352
    new-instance v4, Landroid/util/Pair;

    .line 2353
    .line 2354
    const/4 v5, 0x0

    .line 2355
    invoke-direct {v4, v11, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2356
    .line 2357
    .line 2358
    invoke-virtual {v3}, Landroid/view/animation/Animation;->getZAdjustment()I

    .line 2359
    .line 2360
    .line 2361
    move-result v3

    .line 2362
    if-eq v3, v0, :cond_74

    .line 2363
    .line 2364
    const/4 v3, 0x7

    .line 2365
    if-eq v14, v3, :cond_74

    .line 2366
    .line 2367
    if-eq v14, v2, :cond_74

    .line 2368
    .line 2369
    const/16 v2, 0xc

    .line 2370
    .line 2371
    if-eq v14, v2, :cond_74

    .line 2372
    .line 2373
    const/16 v2, 0xf

    .line 2374
    .line 2375
    if-eq v14, v2, :cond_74

    .line 2376
    .line 2377
    const/16 v2, 0x19

    .line 2378
    .line 2379
    if-eq v14, v2, :cond_74

    .line 2380
    .line 2381
    const/16 v2, 0x1a

    .line 2382
    .line 2383
    if-ne v14, v2, :cond_73

    .line 2384
    .line 2385
    goto :goto_44

    .line 2386
    :cond_73
    move/from16 v12, v16

    .line 2387
    .line 2388
    goto :goto_45

    .line 2389
    :cond_74
    :goto_44
    move v12, v0

    .line 2390
    :goto_45
    iput-boolean v12, v1, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    .line 2391
    .line 2392
    iput v14, v1, Lcom/android/server/wm/WindowContainer;->mTransit:I

    .line 2393
    .line 2394
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2395
    .line 2396
    .line 2397
    move-result-object v0

    .line 2398
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2399
    .line 2400
    iget v0, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    .line 2401
    .line 2402
    iput v0, v1, Lcom/android/server/wm/WindowContainer;->mTransitFlags:I

    .line 2403
    .line 2404
    move-object v1, v4

    .line 2405
    goto :goto_46

    .line 2406
    :cond_75
    const/4 v5, 0x0

    .line 2407
    new-instance v1, Landroid/util/Pair;

    .line 2408
    .line 2409
    invoke-direct {v1, v5, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2410
    .line 2411
    .line 2412
    :goto_46
    return-object v1

    .line 2413
    :pswitch_data_0
    .packed-switch 0x6
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

    .line 2414
    .line 2415
    .line 2416
    .line 2417
    .line 2418
    .line 2419
    .line 2420
    .line 2421
    .line 2422
    .line 2423
    .line 2424
    .line 2425
    .line 2426
    .line 2427
    .line 2428
    .line 2429
    .line 2430
    .line 2431
    .line 2432
    .line 2433
    .line 2434
    .line 2435
    .line 2436
    .line 2437
    .line 2438
    .line 2439
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public getAnimationBounds(I)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 6
    .line 7
    iget v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    .line 8
    .line 9
    iget p0, p0, Landroid/view/DisplayInfo;->appHeight:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public getAnimationLeash()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mAnimationLeash:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public getAnimationPosition(Landroid/graphics/Point;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getAnimationSources()Landroid/util/ArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimationSources:Landroid/util/ArraySet;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getBottomMostTask()Lcom/android/server/wm/Task;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getCaptionHeight()I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getCaptionHeight(ZI)I

    move-result p0

    return p0
.end method

.method public getCaptionHeight(Z)I
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getCaptionHeight(ZI)I

    move-result p0

    return p0
.end method

.method public getCaptionHeight(ZI)I
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_5

    .line 4
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz v0, :cond_5

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 6
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 8
    :cond_0
    iget p2, v1, Lcom/android/server/wm/FreeformController;->mFreeformCaptionType:I

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const p0, 0x10503ad

    .line 11
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_2

    :cond_2
    :goto_1
    const p0, 0x10503ac

    .line 12
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_2

    .line 13
    :cond_3
    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeBar(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x10503aa

    .line 14
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_2

    :cond_4
    const p0, 0x10503ab

    .line 15
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_2
    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    return-object p0
.end method

.method public getChildAt(I)Lcom/android/server/wm/WindowContainer;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public getChildCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDimmer()Lcom/android/server/wm/Dimmer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method public final getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDistanceFromTop(Lcom/android/server/wm/WindowContainer;)I
    .locals 1

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
    const/4 p0, -0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    add-int/lit8 p0, p0, -0x1

    .line 18
    .line 19
    sub-int/2addr p0, p1

    .line 20
    :goto_0
    return p0
.end method

.method public getFreeformThickness()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const p0, 0x10503b0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    rem-int/lit8 v0, p0, 0x2

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 35
    .line 36
    :goto_0
    return p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public getFreeformTopInset()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getFreeformThickness()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .locals 2

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
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public getInsetsSourceProviders()Landroid/util/SparseArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mInsetsSourceProviders:Landroid/util/SparseArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mInsetsSourceProviders:Landroid/util/SparseArray;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mInsetsSourceProviders:Landroid/util/SparseArray;

    .line 13
    .line 14
    return-object p0
.end method

.method public getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;
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
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    if-ge v0, p2, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastLayer()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 2
    .line 3
    return p0
.end method

.method public getLastOrientationSource()Lcom/android/server/wm/WindowContainer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    return-object v0
.end method

.method public getLastRelativeLayer()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLastSurfacePosition()Landroid/graphics/Point;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result p0

    return p0
.end method

.method public getOrientation(I)I
    .locals 13

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->providesOrientation()Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 6
    iput-object p0, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    move-result p0

    return p0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_0
    if-ltz v0, :cond_8

    .line 9
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v1

    .line 10
    :goto_1
    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 11
    iput-object v4, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    move p1, v6

    goto :goto_2

    :cond_3
    if-ne v6, v1, :cond_4

    goto :goto_2

    :cond_4
    if-ne v6, v2, :cond_6

    .line 12
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->providesOrientation()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 13
    :cond_6
    :goto_3
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean p1, p1, v3

    if-eqz p1, :cond_7

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    int-to-long v0, v6

    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, v0, v2}, [Ljava/lang/Object;

    move-result-object v12

    const-wide v8, -0x489a4eaa5143c1b3L    # -7.781879383487738E-42

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :cond_7
    iput-object v4, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    return v6

    :cond_8
    return p1
.end method

.method public getOverrideOrientation()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mOverrideOrientation:I

    .line 2
    .line 3
    return p0
.end method

.method public bridge synthetic getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    return-object p0
.end method

.method public final getParent()Lcom/android/server/wm/WindowContainer;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    return-object p0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eq v0, p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 15
    .line 16
    return-object p0
.end method

.method public getPrefixOrderIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    return p0
.end method

.method public final getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget v2, v2, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    add-int/2addr v1, p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public getProtoFieldId()J
    .locals 2

    .line 1
    const-wide v0, 0x10b00000002L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    return-wide v0
.end method

.method public getRelativeDisplayRotation()I
    .locals 1

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
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {p0, v0}, Landroid/util/RotationUtils;->deltaRotation(II)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public getRelativePosition(Landroid/graphics/Point;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    return-void
.end method

.method public getRelativePosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 1

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Point;->set(II)V

    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 5
    iget p1, p0, Landroid/graphics/Rect;->left:I

    neg-int p1, p1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Point;->offset(II)V

    :cond_0
    return-void
.end method

.method public getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getRequestedConfigurationOrientation()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation(Z)I

    move-result p0

    return p0
.end method

.method public getRequestedConfigurationOrientation(Z)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation(ZI)I

    move-result p0

    return p0
.end method

.method public getRequestedConfigurationOrientation(ZI)I
    .locals 3

    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/server/wm/RootDisplayArea;->isOrientationDifferentFromDisplay()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->reverseOrientation(I)I

    move-result p2

    :cond_0
    const/4 p1, 0x5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, p1, :cond_3

    .line 6
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_6

    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 8
    iget-object p2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result p2

    if-nez p2, :cond_1

    .line 9
    iget p0, p1, Landroid/content/res/Configuration;->orientation:I

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p1, v2, p2, p0}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigFrame:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-gt p1, p0, :cond_2

    move v0, v1

    :cond_2
    move p0, v0

    :goto_0
    return p0

    :cond_3
    const/16 p1, 0xe

    if-ne p2, p1, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    return p0

    .line 13
    :cond_4
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    .line 14
    :cond_5
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method public getRequestedConfigurationOrientationInChildren()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

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
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    :goto_0
    if-ltz v1, :cond_5

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 22
    .line 23
    const/4 v3, -0x2

    .line 24
    const/4 v4, 0x3

    .line 25
    if-ne v0, v4, :cond_0

    .line 26
    .line 27
    move v5, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    move v5, v3

    .line 30
    :goto_1
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-ne v5, v4, :cond_1

    .line 35
    .line 36
    move v0, v5

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    if-ne v5, v3, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->providesOrientation()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_4

    .line 46
    .line 47
    const/4 v2, -0x1

    .line 48
    if-eq v5, v2, :cond_3

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    :goto_3
    move v0, v5

    .line 55
    :cond_5
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation(ZI)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    return p0
.end method

.method public getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method public getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 4
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSession()Landroid/view/SurfaceSession;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public final getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 4
    .line 5
    return-object p0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSurfaceHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getSurfaceWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 7
    .line 8
    :goto_0
    if-eqz p0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const/4 p0, 0x0

    .line 19
    return-object p0
.end method

.method public getSyncState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 2
    .line 3
    return p0
.end method

.method public getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public getSyncTransactionCommitCallbackDepth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    .line 2
    .line 3
    return p0
.end method

.method public getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public final getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/Task;
    .locals 7

    const/4 v0, 0x1

    .line 6
    new-array v6, v0, [Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public final getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/Task;
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v9, :cond_4

    .line 7
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v12

    move v13, v1

    :goto_0
    if-ltz v13, :cond_9

    .line 8
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 9
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    if-eq v1, v8, :cond_0

    if-nez v8, :cond_1

    .line 10
    :cond_0
    aput-boolean v12, p5, v11

    if-nez p3, :cond_1

    move-object v1, v10

    goto :goto_1

    .line 11
    :cond_1
    aget-boolean v2, p5, v11

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v1, v7, v9}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 13
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 14
    :cond_4
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v11

    :goto_2
    if-ge v14, v13, :cond_9

    .line 15
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 16
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    if-eq v1, v8, :cond_5

    if-nez v8, :cond_6

    .line 17
    :cond_5
    aput-boolean v12, p5, v11

    if-nez p3, :cond_6

    move-object v1, v10

    goto :goto_3

    .line 18
    :cond_6
    aget-boolean v2, p5, v11

    if-eqz v2, :cond_7

    .line 19
    invoke-virtual {v1, v7, v9}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_3

    :cond_7
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    .line 20
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ[Z)Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_8

    return-object v1

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_9
    return-object v10
.end method

.method public getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .locals 3

    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 5
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method public getTaskFragment(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskFragment;
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
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->getTaskFragment(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskFragment;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p1, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-direct {p1, p2}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    if-eqz p2, :cond_2

    .line 26
    .line 27
    new-instance p1, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    invoke-direct {p1, p2}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    new-instance p1, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    const/4 p2, 0x2

    .line 41
    invoke-direct {p1, p2}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public getTopChild()Lcom/android/server/wm/WindowContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/wm/WindowContainer;

    .line 8
    .line 9
    return-object p0
.end method

.method public getTopMostActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getTopMostTask()Lcom/android/server/wm/Task;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public getTreeWeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 2
    .line 3
    return p0
.end method

.method public getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;
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
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public getWindowType()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public handleCompleteDeferredRemoval()Z
    .locals 4

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
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ltz v0, :cond_1

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 14
    .line 15
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    or-int/2addr v2, v3

    .line 26
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return v2
.end method

.method public handlesOrientationChangeFromDescendant(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant(I)Z

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

.method public hasActivity()Z
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
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->hasActivity()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public hasChild(Lcom/android/server/wm/WindowContainer;)Z
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
    if-ltz v0, :cond_2

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
    if-eq v2, p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    return v1

    .line 32
    :cond_2
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public hasCommittedReparentToAnimationLeash()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/WindowContainer;->mCommittedReparentToAnimationLeash:Z

    .line 2
    .line 3
    return p0
.end method

.method public hasContentToDisplay()Z
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
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->hasContentToDisplay()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public hasRelativeLayer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->hasRelativeLayer()Z

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

.method public hasWallpaper()Z
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
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->hasWallpaper()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public inTransition()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public inTransitionSelfOrParent()Z
    .locals 2

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
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    const/16 v1, 0x9

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public initializeChangeTransition(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->initializeChangeTransition(Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public initializeChangeTransition(Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPoint:Landroid/graphics/Point;

    .line 9
    iget-object v1, v0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    .line 10
    iget-object v2, v1, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v10, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 12
    iput-object v11, v1, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 13
    :goto_0
    iput-object v11, v0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 14
    :cond_2
    iget-object v1, v0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v10, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 16
    iput-object v11, v0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 17
    :cond_3
    iget-object v1, v0, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 18
    iget-object v12, v0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/WindowContainer;

    invoke-interface {v12}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Landroid/graphics/Point;->x:I

    iget v8, p0, Landroid/graphics/Point;->y:I

    iget-object p0, v0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    const/4 v4, 0x2

    const/4 v9, 0x0

    move-object v1, v12

    move-object v3, v10

    .line 20
    invoke-static/range {v1 .. v9}, Lcom/android/server/wm/SurfaceAnimator;->createAnimationLeash(Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIIIIZ)Landroid/view/SurfaceControl;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 21
    invoke-interface {v12, v10, p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    if-eqz p2, :cond_4

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_9

    .line 23
    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/SurfaceFreezer;->createSnapshotBufferInner(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_2

    .line 24
    :cond_5
    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v11

    :goto_2
    if-eqz v11, :cond_8

    .line 25
    invoke-virtual {v11}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_8

    invoke-virtual {v11}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p1

    if-gt p1, p2, :cond_6

    goto/16 :goto_3

    .line 26
    :cond_6
    new-instance p1, Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    iget-object p2, v0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 27
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {v0, p0}, Lcom/android/server/wm/SurfaceFreezer;->createFromHardwareBufferInner(Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v1

    .line 29
    invoke-interface {v12}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "snapshot anim: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v3, -0x3

    .line 31
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 32
    invoke-virtual {v2, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 33
    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/SurfaceControl$Builder;->setSecure(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const-string v2, "SurfaceFreezer.Snapshot"

    .line 34
    invoke-virtual {p2, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 35
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 36
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p2

    iput-object p2, p1, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 37
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_7

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v6, 0x0

    const-wide v3, -0x24069277ded7c5c7L    # -1.1551220110467672E135

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 38
    :cond_7
    iget-object p2, p1, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/graphics/GraphicBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 39
    iget-object p2, p1, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-virtual {v10, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 40
    iget-object p0, p1, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v10, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 41
    iget-object p0, p1, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->mSurfaceControl:Landroid/view/SurfaceControl;

    const p2, 0x7fffffff

    invoke-virtual {v10, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 42
    iput-object p1, v0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    goto :goto_4

    .line 43
    :cond_8
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Failed to capture screenshot for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SurfaceFreezer"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v0, v10}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final isAnimating()Z
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result p0

    return p0
.end method

.method public final isAnimating(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    return p0
.end method

.method public final isAnimating(II)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAppTransitioning()Z
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 8
    .line 9
    .line 10
    move-result-object p0

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

.method public isAttached()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

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

.method public isChangingAppTransition()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

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

.method public isClosingWhenResizing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingChangingContainers:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

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

.method public isConfigurationNeededInUdcCutout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mUseConfigurationInUdcCutout:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method

.method public isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    if-eqz p0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method public isDifferentSyncGroup(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-ne p1, v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, " uses a different SyncGroup, current="

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget p0, v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, " given="

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget p0, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 38
    .line 39
    const-string p1, "WindowManager"

    .line 40
    .line 41
    invoke-static {v0, p0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :cond_2
    :goto_0
    return v0
.end method

.method public isEmbedded()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isExitAnimationRunningSelfOrChild()Z
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
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    const/16 v1, 0x19

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    return v1

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sub-int/2addr v0, v1

    .line 40
    :goto_0
    if-ltz v0, :cond_3

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isExitAnimationRunningSelfOrChild()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    return v1

    .line 57
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const/4 p0, 0x0

    .line 61
    return p0
.end method

.method public isFocusable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/WindowContainer;->mIsFocusable:Z

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public isLayoutNeededInUdcCutout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mUseLayoutInUdcCutout:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcCutout:Landroid/view/DisplayCutout;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
.end method

.method public isOnTop()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v1, p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public isOrganized()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isSelfAnimating(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 11
    .line 12
    iget v0, v0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 13
    .line 14
    and-int/2addr p2, v0

    .line 15
    if-lez p2, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    and-int/2addr p1, v1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isWaitingForTransitionStart()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public isSplitEmbedded()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v2, "prepareSync in isSyncFinished: "

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v2, "WindowManager"

    .line 35
    .line 36
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    .line 40
    .line 41
    .line 42
    :cond_1
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    if-ne v0, v1, :cond_2

    .line 46
    .line 47
    return v2

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    sub-int/2addr v0, v1

    .line 55
    :goto_0
    if-ltz v0, :cond_9

    .line 56
    .line 57
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 64
    .line 65
    iget-boolean v4, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mIgnoreIndirectMembers:Z

    .line 66
    .line 67
    if-nez v4, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 78
    .line 79
    if-eq v4, p1, :cond_5

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    :goto_1
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowContainer;->isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_6

    .line 87
    .line 88
    :goto_2
    move v4, v1

    .line 89
    goto :goto_3

    .line 90
    :cond_6
    move v4, v2

    .line 91
    :goto_3
    if-eqz v4, :cond_7

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_7

    .line 98
    .line 99
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_7

    .line 104
    .line 105
    return v1

    .line 106
    :cond_7
    if-nez v4, :cond_8

    .line 107
    .line 108
    return v2

    .line 109
    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_9
    return v1
.end method

.method public isVisible()Z
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
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public isVisibleRequested()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 2
    .line 3
    return p0
.end method

.method public isWaitingForTransitionStart()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public makeSurface()Landroid/view/SurfaceControl$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 10
    .line 11
    .line 12
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 39
    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v2, v3, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 44
    .line 45
    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 53
    .line 54
    iget v3, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 55
    .line 56
    invoke-virtual {p1, v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 61
    .line 62
    iget v2, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 63
    .line 64
    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 65
    .line 66
    .line 67
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-ge v1, v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 90
    .line 91
    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 92
    .line 93
    .line 94
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 98
    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 102
    .line 103
    iget-object v2, v0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 104
    .line 105
    if-nez v2, :cond_4

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 109
    .line 110
    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    iget-object v0, v0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    iget-object v0, v0, Lcom/android/server/wm/TrustedOverlayHost;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 122
    .line 123
    .line 124
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public needRemoteWallpaperAnim()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public needsZBoost()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    move v2, v0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v2, v3, :cond_2

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return v0
.end method

.method public okToAnimate()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowContainer;->okToAnimate(ZZ)Z

    move-result p0

    return p0
.end method

.method public okToAnimate(ZZ)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->okToAnimate(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public okToDisplay()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/DisplayContent;->okToDisplay(ZZ)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :cond_0
    return v0
.end method

.method public onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->doAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onAnimationFinished()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    .line 11
    .line 12
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer;->mAnimationLeash:Landroid/view/SurfaceControl;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V

    .line 10
    .line 11
    .line 12
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM_WITH_DIM:Z

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    iget-object p2, p0, Lcom/android/server/wm/DimAnimator;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    iget v1, p0, Lcom/android/server/wm/DimAnimator;->mTransitType:I

    .line 31
    .line 32
    invoke-static {p2, v1}, Lcom/android/internal/policy/TransitionAnimation;->loadDimAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    new-instance v1, Lcom/android/server/wm/WindowAnimationSpec;

    .line 37
    .line 38
    new-instance v2, Landroid/graphics/Point;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-direct {v1, p2, v2, v3, v4}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/wm/DimAnimator;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {p1, p2, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    .line 60
    .line 61
    invoke-virtual {p1, p2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 67
    .line 68
    .line 69
    iget-object p1, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/wm/DimAnimator;->mDimAnimationLayer:Landroid/view/SurfaceControl;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, v1, p0, p2, v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/LocalAnimationAdapter$$ExternalSyntheticLambda0;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mAnimationLeash:Landroid/view/SurfaceControl;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensionLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    iget-object v3, v0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    monitor-exit v2

    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/util/ArrayList;

    .line 33
    .line 34
    move v5, v4

    .line 35
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-ge v5, v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Landroid/view/SurfaceControl;

    .line 46
    .line 47
    invoke-virtual {p1, v6}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 48
    .line 49
    .line 50
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/SurfaceAnimationRunner;->mEdgeExtensions:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :goto_1
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mAnimationLeash:Landroid/view/SurfaceControl;

    .line 61
    .line 62
    iput-boolean v4, p0, Lcom/android/server/wm/WindowContainer;->mNeedsZBoost:Z

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 68
    .line 69
    .line 70
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM_WITH_DIM:Z

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 75
    .line 76
    invoke-virtual {p0, v4}, Lcom/android/server/wm/DimAnimator;->finishDimAnimation(I)V

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void

    .line 80
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw p0
.end method

.method public onAppTransitionDone()V
    .locals 2

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
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    :goto_0
    if-ltz v0, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onChildRemoved(Lcom/android/server/wm/WindowContainer;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 2
    .line 3
    iget v1, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 15
    .line 16
    iget v2, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 17
    .line 18
    sub-int/2addr v1, v2

    .line 19
    iput v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->onChildVisibleRequestedChanged(Lcom/android/server/wm/WindowContainer;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onChildVisibilityRequested(Z)V
    .locals 4

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingChangingContainers:Landroid/util/ArrayMap;

    .line 34
    .line 35
    new-instance v2, Landroid/graphics/Rect;

    .line 36
    .line 37
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildVisibilityRequested(Z)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method public onChildVisibleRequestedChanged(Lcom/android/server/wm/WindowContainer;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    move v2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v0

    .line 14
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    :goto_1
    move v0, v1

    .line 21
    goto :goto_3

    .line 22
    :cond_1
    if-nez v2, :cond_3

    .line 23
    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sub-int/2addr v2, v1

    .line 33
    :goto_2
    if-ltz v2, :cond_4

    .line 34
    .line 35
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 42
    .line 43
    if-eq v3, p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    move v0, v3

    .line 56
    :cond_4
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->setVisibleRequested(Z)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    iget-object v0, p1, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    :goto_0
    if-ltz v0, :cond_0

    .line 27
    .line 28
    iget-object v1, p1, Lcom/android/server/wm/TrustedOverlayHost;->mOverlays:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 35
    .line 36
    :try_start_0
    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->getRemoteInterface()Landroid/view/ISurfaceControlViewHost;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2, p0}, Landroid/view/ISurfaceControlViewHost;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TrustedOverlayHost;->removeOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)Z

    .line 45
    .line 46
    .line 47
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public onDescendantOverrideConfigurationChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onDescendantOverrideConfigurationChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingChangingContainers:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    if-eq p1, p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    :goto_0
    if-ltz v0, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 63
    .line 64
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v0, v0, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    add-int/lit8 v0, v0, -0x1

    .line 77
    .line 78
    :goto_1
    if-ltz v0, :cond_3

    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lcom/android/server/wm/WindowContainerListener;

    .line 87
    .line 88
    invoke-interface {v1, p1}, Lcom/android/server/wm/WindowContainerListener;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v0, v0, -0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    return-void
.end method

.method public onMovedByResize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, v0, Lcom/android/server/wm/InsetsSourceProvider;->mInsetsHintStale:Z

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sub-int/2addr v0, v1

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
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;Ljava/lang/Runnable;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 3
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->createSurfaceControl(Z)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    iget-object p2, p2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 7
    :goto_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 8
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    return-void
.end method

.method public onParentResize()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasOverrideBounds()Z

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
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->diffRequestedOverrideBounds(Landroid/graphics/Rect;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOverrideConfigurationChanged()V

    .line 19
    .line 20
    .line 21
    :cond_0
    if-nez v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    const/4 p1, 0x2

    .line 25
    and-int/2addr v0, p1

    .line 26
    if-ne v0, p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public onResize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, v0, Lcom/android/server/wm/InsetsSourceProvider;->mInsetsHintStale:Z

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sub-int/2addr v0, v1

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
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onParentResize()V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public onSyncFinishedDrawing()Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    .line 12
    .line 13
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    aget-boolean v0, v0, v1

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const-wide v3, 0x492aff944ffc3aaaL    # 3.0104173809167984E44

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return v1
.end method

.method public final onSyncReparent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

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
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eq v0, v2, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 39
    .line 40
    .line 41
    :cond_0
    if-eqz p2, :cond_1

    .line 42
    .line 43
    iget v0, p2, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 44
    .line 45
    if-nez v0, :cond_7

    .line 46
    .line 47
    :cond_1
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    if-nez p2, :cond_6

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iget v0, p1, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 63
    .line 64
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    if-eqz p2, :cond_5

    .line 69
    .line 70
    iget-object p1, p2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 71
    .line 72
    if-nez p1, :cond_4

    .line 73
    .line 74
    iget-object p1, p2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    .line 85
    .line 86
    iput-object p1, p2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 87
    .line 88
    :cond_4
    iget-object p1, p2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 89
    .line 90
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p2, " is in sync mode without a sync group"

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string p2, "WindowManager"

    .line 112
    .line 113
    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const/4 p2, 0x0

    .line 121
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V

    .line 122
    .line 123
    .line 124
    :goto_0
    return-void

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 126
    .line 127
    if-nez v0, :cond_7

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_7
    if-eqz p1, :cond_8

    .line 142
    .line 143
    if-eqz p2, :cond_8

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->shouldUpdateSyncOnReparent()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_8

    .line 150
    .line 151
    return-void

    .line 152
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_9

    .line 159
    .line 160
    const/4 p1, 0x0

    .line 161
    iput p1, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 162
    .line 163
    const/4 p1, -0x1

    .line 164
    iput p1, p0, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    .line 165
    .line 166
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public onSyncTransactionCommitted(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onUnfrozen()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p0, :cond_8

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
    const/4 v1, 0x1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    const/high16 v2, -0x80000000

    .line 16
    .line 17
    const v3, 0x7fffffff

    .line 18
    .line 19
    .line 20
    if-lt p1, v0, :cond_0

    .line 21
    .line 22
    move p1, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-gtz p1, :cond_1

    .line 25
    .line 26
    move p1, v2

    .line 27
    :cond_1
    :goto_0
    if-eq p1, v2, :cond_4

    .line 28
    .line 29
    if-eq p1, v3, :cond_2

    .line 30
    .line 31
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 32
    .line 33
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-eq p3, p1, :cond_7

    .line 38
    .line 39
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 40
    .line 41
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 45
    .line 46
    invoke-virtual {p3, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eq p1, p2, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    if-eqz p3, :cond_7

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_7

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, v3, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    const/4 v3, 0x0

    .line 97
    if-lez v0, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    const/4 p1, 0x0

    .line 105
    :goto_1
    if-eq p1, p2, :cond_6

    .line 106
    .line 107
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 113
    .line 114
    invoke-virtual {p1, v3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 118
    .line 119
    .line 120
    :cond_6
    if-eqz p3, :cond_7

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_7

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1, v2, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 133
    .line 134
    .line 135
    :cond_7
    :goto_2
    return-void

    .line 136
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    new-instance p3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string/jumbo v0, "positionChildAt: container="

    .line 141
    .line 142
    .line 143
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v0, " is not a child of container="

    .line 154
    .line 155
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string p0, " current parent="

    .line 166
    .line 167
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p1
.end method

.method public prepareSurfaces()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mCommittedReparentToAnimationLeash:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public prepareSync()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

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
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    sub-int/2addr v0, v1

    .line 13
    :goto_0
    if-ltz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 27
    .line 28
    return v1
.end method

.method public providesOrientation()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public reassignLayer(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-ltz v0, :cond_0

    if-ge v0, p3, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/wm/WindowContainer;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;Z)V

    return-void
.end method

.method public registerWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;Z)V

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/wm/WindowContainerListener;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    :cond_1
    return-void
.end method

.method public removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildRemoved(Lcom/android/server/wm/WindowContainer;)V

    .line 10
    .line 11
    .line 12
    iget-boolean p0, p1, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string/jumbo v2, "removeChild: container="

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " is not a child of container="

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public removeIfPossible()V
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
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->removeIfPossible()V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public removeImmediately()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingChangingContainers:Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->onChildRemoved(Lcom/android/server/wm/WindowContainer;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM_WITH_DIM:Z

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimAnimator;->finishDimAnimation(I)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 80
    .line 81
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 82
    .line 83
    .line 84
    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 87
    .line 88
    .line 89
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/android/server/wm/TrustedOverlayHost;->release()V

    .line 94
    .line 95
    .line 96
    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 97
    .line 98
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 99
    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    add-int/lit8 v0, v0, -0x1

    .line 112
    .line 113
    :goto_1
    if-ltz v0, :cond_6

    .line 114
    .line 115
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    .line 116
    .line 117
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Lcom/android/server/wm/WindowContainerListener;

    .line 122
    .line 123
    invoke-interface {v1}, Lcom/android/server/wm/WindowContainerListener;->onRemoved()V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v0, v0, -0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    return-void
.end method

.method public removeLocalInsetsFrameProvider(Landroid/view/InsetsFrameProvider;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    if-eqz p2, :cond_6

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/InsetsFrameProvider;->getId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLocalInsetsSources:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    :goto_0
    move v0, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v0, v1

    .line 25
    :goto_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInsetsStateController:Lcom/android/server/wm/InsetsStateController;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mInsetsOwnerDeathRecipientMap:Landroid/util/ArrayMap;

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/server/wm/WindowContainer$DeathRecipient;

    .line 46
    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mSourceIds:Landroid/util/ArraySet;

    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iget-object p1, v0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mSourceIds:Landroid/util/ArraySet;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    xor-int/2addr p1, v1

    .line 66
    if-nez p1, :cond_5

    .line 67
    .line 68
    invoke-interface {p2, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mInsetsOwnerDeathRecipientMap:Landroid/util/ArrayMap;

    .line 72
    .line 73
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_5
    return-void

    .line 77
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    const-string p1, "Insets provider or owner not specified."

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public removeTrustedOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TrustedOverlayHost;->removeOverlay(Landroid/view/SurfaceControlViewHost$SurfacePackage;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/TrustedOverlayHost;->release()V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public reparent(Lcom/android/server/wm/WindowContainer;I)V
    .locals 5

    .line 1
    if-eqz p1, :cond_c

    .line 2
    .line 3
    if-eq p1, p0, :cond_b

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 6
    .line 7
    if-eq v0, p1, :cond_a

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_0
    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 20
    .line 21
    iget-object v2, v1, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_1
    iget-object v1, v1, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 38
    .line 39
    iget-object v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mCommonAncestor:Lcom/android/server/wm/WindowContainer;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    :goto_0
    iget-object v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 54
    .line 55
    :goto_1
    const-string v3, "Transition"

    .line 56
    .line 57
    if-eqz v2, :cond_8

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_4

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    if-ne v2, p1, :cond_5

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, "Trying to collect reparenting of a window that has not been reparented: "

    .line 71
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_6

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v2, "Trying to collect reparenting of a window that is not attached after reparenting: "

    .line 95
    .line 96
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_6
    move-object v3, p1

    .line 111
    :goto_2
    if-eq v2, v3, :cond_7

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-nez v4, :cond_7

    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    goto :goto_2

    .line 124
    :cond_7
    iput-object v3, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mCommonAncestor:Lcom/android/server/wm/WindowContainer;

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_8
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v2, "Trying to collect reparenting of a window after the previous parent has been detached: "

    .line 130
    .line 131
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :goto_4
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    const/4 v3, 0x1

    .line 153
    iput-boolean v3, p0, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    .line 154
    .line 155
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 159
    .line 160
    .line 161
    const/4 p2, 0x0

    .line 162
    iput-boolean p2, p0, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    .line 163
    .line 164
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 165
    .line 166
    .line 167
    if-eq v1, v2, :cond_9

    .line 168
    .line 169
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 173
    .line 174
    .line 175
    :cond_9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->onSyncReparent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 183
    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v0, "WC="

    .line 187
    .line 188
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v0, " already child of "

    .line 195
    .line 196
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 200
    .line 201
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p1

    .line 212
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 213
    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string v0, "Can not reparent to itself "

    .line 217
    .line 218
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw p1

    .line 232
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 233
    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string/jumbo v0, "reparent: can\'t reparent to null "

    .line 237
    .line 238
    .line 239
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p1
.end method

.method public reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
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
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public resetDragResizingChangeReported()V
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
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 14
    .line 15
    invoke-virtual {v0, p1, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Point;->set(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isConfigurationNeededInUdcCutout()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcConfiguration:Landroid/content/res/Configuration;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/wm/UdcCutoutPolicy;->mUdcConfiguration:Landroid/content/res/Configuration;

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public scheduleAnimation()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sendAppVisibilityToClients()V
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
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public setCanScreenshot(Landroid/view/SurfaceControl$Transaction;Z)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    xor-int/2addr p2, v0

    .line 9
    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 10
    .line 11
    .line 12
    return v0
.end method

.method public setControllableInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mControllableInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 2
    .line 3
    return-void
.end method

.method public setFocusable(Z)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mIsFocusable:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mIsFocusable:Z

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0
.end method

.method public setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .locals 1

    .line 1
    const-string v0, "WindowContainer.setInitialSurfaceControlProperties"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->showSurfaceOnCreation()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mLastMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public setLayer(Landroid/view/SurfaceControl$Transaction;I)V
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
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 12
    .line 13
    if-eqz p0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 27
    .line 28
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_1
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->setOrientation(ILcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public setOrientation(ILcom/android/server/wm/WindowContainer;)V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->setOverrideOrientation(I)V

    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ORIENTATION_POLICY:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingAppCompatController:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 6
    iget-object v1, v1, Lcom/android/server/wm/MultiTaskingAppCompatController;->mOrientationPolicy:Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;

    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_3

    .line 8
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v4

    if-eq v3, v4, :cond_3

    const/4 v3, -0x1

    .line 10
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->shouldIgnoreOrientationRequest(ILcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p0, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 12
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 13
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 14
    invoke-virtual {v2, v2}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    .line 15
    iget-object p1, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 16
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    .line 17
    iget p1, p1, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    if-ne p0, p1, :cond_2

    .line 18
    new-instance p0, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$$ExternalSyntheticLambda1;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/MultiTaskingAppCompatOrientationPolicy;->requestActivityBoundsChangedTransitionIfNeeded(Lcom/android/server/wm/ActivityRecord;Ljava/lang/Runnable;)V

    :cond_2
    return-void

    .line 19
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v1, :cond_4

    .line 21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 23
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->mAppActivityEmbeddingSplitsEnabled:Z

    if-eqz v2, :cond_4

    .line 24
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 25
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 26
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_4

    goto :goto_1

    .line 27
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant(I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 28
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 29
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    :cond_7
    return-void
.end method

.method public setOverrideOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/WindowContainer;->mOverrideOrientation:I

    .line 2
    .line 3
    return-void
.end method

.method public final setParent(Lcom/android/server/wm/WindowContainer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget v1, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 8
    .line 9
    iget v2, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 10
    .line 11
    add-int/2addr v1, v2

    .line 12
    iput v1, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget v2, v1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 21
    .line 22
    iget v3, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 23
    .line 24
    add-int/2addr v2, v3

    .line 25
    iput v2, v1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->onChildVisibleRequestedChanged(Lcom/android/server/wm/WindowContainer;)Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    .line 53
    .line 54
    if-nez p1, :cond_4

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 57
    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowContainer;->onSyncReparent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 70
    .line 71
    if-eq v1, p1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 77
    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    return-void
.end method

.method public setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
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
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 12
    .line 13
    if-eqz p0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 27
    .line 28
    invoke-interface {p0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_1
    return-void
.end method

.method public setSurfaceControl(Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    return-void
.end method

.method public setSyncGroup(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-boolean v0, v0, v1

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 9
    .line 10
    int-to-long v0, v0

    .line 11
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    const-wide v4, -0x7359d5cebca1cf9cL    # -9.906441339995816E-248

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    const/4 v7, 0x0

    .line 32
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    if-ne v0, p1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "Can\'t sync on 2 groups simultaneously currentSyncId="

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 52
    .line 53
    iget v2, v2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v2, " newSyncId="

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget p1, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, " wc="

    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 85
    .line 86
    return-void
.end method

.method public setVisibleRequested(Z)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->onChildVisibleRequestedChanged(Lcom/android/server/wm/WindowContainer;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v0, 0x1

    .line 25
    sub-int/2addr p1, v0

    .line 26
    :goto_0
    if-ltz p1, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/android/server/wm/WindowContainerListener;

    .line 35
    .line 36
    iget-boolean v2, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 37
    .line 38
    invoke-interface {v1, v2}, Lcom/android/server/wm/WindowContainerListener;->onVisibleRequestedChanged(Z)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 p1, p1, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return v0
.end method

.method public shouldMagnify()Z
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
    move v0, v1

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v0, v2, :cond_2

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->shouldMagnify()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public shouldUpdateSyncOnReparent()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public showSurfaceOnCreation()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public showToCurrentUser()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public showWallpaper()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

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
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    sub-int/2addr v0, v2

    .line 23
    :goto_0
    if-ltz v0, :cond_2

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :goto_1
    return v1
.end method

.method public startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;)V
    .locals 13

    move-object v0, p0

    .line 1
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_ANIM_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move/from16 v6, p4

    int-to-long v2, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2, v4}, [Ljava/lang/Object;

    move-result-object v12

    const-wide v8, 0x6070e2a3bade34c3L    # 3.62232006916644E156

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move/from16 v6, p4

    .line 2
    :goto_0
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v10, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;Lcom/android/server/wm/SurfaceFreezer;)V

    return-void
.end method

.method public startDelayingAnimationStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public switchUser(I)V
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
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public syncNextBuffer()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

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

.method public transferAnimation(Lcom/android/server/wm/WindowContainer;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 21
    .line 22
    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "WindowManager"

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_1
    iget-boolean v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinished:Z

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v0, "Unable to transfer animation, because "

    .line 41
    .line 42
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, " animation is finished"

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string/jumbo v4, "transferAnimation, surface="

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v4, ", parent="

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, ""

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->endDelayingAnimationStart()V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 96
    .line 97
    invoke-interface {v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const/4 v3, 0x1

    .line 102
    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 103
    .line 104
    .line 105
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 106
    .line 107
    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 108
    .line 109
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 110
    .line 111
    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 112
    .line 113
    iget v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 114
    .line 115
    iput v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationType:I

    .line 116
    .line 117
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 118
    .line 119
    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mSurfaceAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 120
    .line 121
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mAnimationCancelledCallback:Ljava/lang/Runnable;

    .line 122
    .line 123
    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationCancelledCallback:Ljava/lang/Runnable;

    .line 124
    .line 125
    const/4 v3, 0x0

    .line 126
    invoke-virtual {p1, v2, v3, v3}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 130
    .line 131
    invoke-virtual {v2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 135
    .line 136
    invoke-virtual {v2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 142
    .line 143
    invoke-interface {p1, v2, v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 147
    .line 148
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    .line 149
    .line 150
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 151
    .line 152
    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    :goto_0
    const-string p1, "Unable to transfer animation, surface or parent is null"

    .line 157
    .line 158
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 162
    .line 163
    .line 164
    :goto_1
    return-void
.end method

.method public transformFrameToSurfacePosition(IILandroid/graphics/Point;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget p1, p0, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    neg-int p1, p1

    .line 18
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 19
    .line 20
    neg-int p0, p0

    .line 21
    invoke-virtual {p3, p1, p0}, Landroid/graphics/Point;->offset(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mListeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V
    .locals 2

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
    if-ltz v0, :cond_0

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
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v0, v0, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_5

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isClosingWhenResizing()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingChangingContainers:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/graphics/Rect;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayRotation()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    .line 65
    .line 66
    if-ne v0, v1, :cond_2

    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    .line 72
    .line 73
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 74
    .line 75
    int-to-float v3, v3

    .line 76
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 77
    .line 78
    int-to-float v2, v2

    .line 79
    invoke-virtual {p1, v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    .line 85
    .line 86
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 87
    .line 88
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 89
    .line 90
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Point;->set(II)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 102
    .line 103
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_4

    .line 108
    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->updateSurfaceRotation(Landroid/view/SurfaceControl$Transaction;ILandroid/view/SurfaceControl;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFixedTransformHint(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    iget v1, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    .line 134
    .line 135
    if-eq v0, v1, :cond_4

    .line 136
    .line 137
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 138
    .line 139
    const/4 v6, 0x0

    .line 140
    const/high16 v7, 0x3f800000    # 1.0f

    .line 141
    .line 142
    const/high16 v4, 0x3f800000    # 1.0f

    .line 143
    .line 144
    const/4 v5, 0x0

    .line 145
    move-object v2, p1

    .line 146
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 156
    .line 157
    .line 158
    :cond_4
    :goto_1
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mLastDeltaRotation:I

    .line 159
    .line 160
    :cond_5
    :goto_2
    return-void
.end method

.method public final updateSurfacePositionNonOrganized()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

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
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public updateSurfaceRotation(Landroid/view/SurfaceControl$Transaction;ILandroid/view/SurfaceControl;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 2
    .line 3
    invoke-static {p1, v0, p2}, Landroid/util/RotationUtils;->rotateSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 9
    .line 10
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 11
    .line 12
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Point;->set(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    rem-int/lit8 v1, p2, 0x2

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    :goto_1
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    :goto_2
    invoke-static {v2, p2, v3, v0}, Landroid/util/RotationUtils;->rotatePoint(Landroid/graphics/Point;III)V

    .line 57
    .line 58
    .line 59
    if-eqz p3, :cond_3

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 63
    .line 64
    :goto_3
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    .line 65
    .line 66
    iget p2, p0, Landroid/graphics/Point;->x:I

    .line 67
    .line 68
    int-to-float p2, p2

    .line 69
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 70
    .line 71
    int-to-float p0, p0

    .line 72
    invoke-virtual {p1, p3, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public updateUseForceLayoutInUdcCutoutIfNeeded()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public waitForAllWindowsDrawn()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public waitForSyncTransactionCommit(Landroid/util/ArraySet;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

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
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncTransactionCommitCallbackDepth:I

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->waitForSyncTransactionCommit(Landroid/util/ArraySet;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 2

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
    move-result p0

    .line 14
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 15
    .line 16
    .line 17
    const-wide v0, 0x10500000002L

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const/16 p0, -0x2710

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 25
    .line 26
    .line 27
    const-wide v0, 0x10900000003L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const-string p0, "WindowContainer"

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
