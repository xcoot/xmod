.class public final Lcom/android/server/accessibility/AccessibilityUserState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mA11yActivityToTileService:Ljava/util/Map;

.field public final mA11yServiceToTileService:Ljava/util/Map;

.field public final mA11yTilesInQsPanel:Landroid/util/ArraySet;

.field public final mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

.field public final mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;

.field public final mAccessibilityQsTargets:Ljava/util/LinkedHashSet;

.field public final mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;

.field public mAlwaysOnMagnificationEnabled:Z

.field public mBindInstantServiceAllowed:Z

.field public final mBindingServices:Ljava/util/Set;

.field public final mBoundServices:Ljava/util/ArrayList;

.field public final mComponentNameToServiceMap:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mCrashedServices:Ljava/util/Set;

.field public final mEnabledServices:Ljava/util/Set;

.field public mFocusColor:I

.field public final mFocusColorDefaultValue:I

.field public mFocusStrokeWidth:I

.field public final mFocusStrokeWidthDefaultValue:I

.field public final mInstalledServices:Ljava/util/List;

.field public final mInstalledShortcuts:Ljava/util/List;

.field public mInteractiveUiTimeout:I

.field public mIsAMEnabled:Z

.field public mIsAudioDescriptionByDefaultRequested:Z

.field public mIsAutoActionEnabled:Z

.field public mIsAutoclickEnabled:Z

.field public mIsBounceKeysEnabled:Z

.field public mIsCornerActionEnabled:Z

.field public mIsFilterKeyEventsEnabled:Z

.field public mIsGestureNaviBar:Z

.field public mIsMagnificationSingleFingerTripleTapEnabled:Z

.field public mIsPerformGesturesEnabled:Z

.field public mIsSlowKeysEnabled:Z

.field public mIsStickyKeysEnabled:Z

.field public mIsTapDurationEnabled:Z

.field public mIsTextHighContrastEnabled:Z

.field public mIsTouchBlockingEnabled:Z

.field public mIsTouchExplorationEnabled:Z

.field public mLastSentClientState:I

.field public mMagnificationCapabilities:I

.field public mMagnificationFollowTypingEnabled:Z

.field public final mMagnificationModes:Landroid/util/SparseIntArray;

.field public mMagnificationTwoFingerTripleTapEnabled:Z

.field public mNonInteractiveUiTimeout:I

.field public mRequestMultiFingerGestures:Z

.field public mRequestTwoFingerPassthrough:Z

.field public mSendMotionEventsEnabled:Z

.field public mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

.field public final mServiceDetectsGestures:Landroid/util/SparseArray;

.field public mServiceHandlesDoubleTap:Z

.field public final mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

.field public mSoftKeyboardShowMode:I

.field public final mSupportWindowMagnification:Z

.field public mTargetAssignedToAccessibilityButton:Ljava/lang/String;

.field public final mTouchExplorationGrantedServices:Ljava/util/Set;

.field public final mUserClients:Landroid/os/RemoteCallbackList;

.field public final mUserId:I

.field public mUserInteractiveUiTimeout:I

.field public mUserNonInteractiveUiTimeout:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    .line 41
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    .line 48
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    .line 55
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    .line 62
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 67
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 69
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityQsTargets:Ljava/util/LinkedHashSet;

    .line 74
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 76
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;

    .line 81
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 83
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    .line 88
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 90
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 93
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;

    .line 95
    new-instance v0, Landroid/util/ArraySet;

    .line 97
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 100
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yTilesInQsPanel:Landroid/util/ArraySet;

    .line 102
    new-instance v0, Landroid/util/SparseArray;

    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 108
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 110
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    .line 112
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    .line 114
    const/4 v0, -0x1

    .line 115
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    .line 117
    new-instance v0, Landroid/util/SparseIntArray;

    .line 119
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 122
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    .line 124
    const/4 v0, 0x1

    .line 125
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 127
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAlwaysOnMagnificationEnabled:Z

    .line 131
    new-instance v2, Landroid/util/ArrayMap;

    .line 133
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 136
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yServiceToTileService:Ljava/util/Map;

    .line 138
    new-instance v2, Landroid/util/ArrayMap;

    .line 140
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 143
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yActivityToTileService:Ljava/util/Map;

    .line 145
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    .line 147
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 149
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    .line 151
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    .line 153
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 156
    move-result-object p1

    .line 157
    const p3, 0x105000c

    .line 160
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 163
    move-result p1

    .line 164
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidthDefaultValue:I

    .line 166
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 169
    move-result-object p2

    .line 170
    const p3, 0x10600f3

    .line 173
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    .line 176
    move-result p2

    .line 177
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColorDefaultValue:I

    .line 179
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    .line 181
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    .line 183
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSupportWindowMagnification:Z

    .line 185
    return-void
.end method

.method public static doesShortcutTargetsStringContain(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 4
    if-nez p0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 14
    return v2

    .line 15
    :cond_1
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 18
    move-result-object p0

    .line 19
    if-nez p0, :cond_2

    .line 21
    return v0

    .line 22
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p1

    .line 26
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_4

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_3

    .line 44
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 54
    return v2

    .line 55
    :cond_4
    :goto_0
    return v0
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "User state["

    .line 3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 9
    const-string v0, "     attributes:{id="

    .line 11
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 24
    const-string v0, ", mIsTapDurationEnabled="

    .line 26
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 29
    move-result-object v0

    .line 30
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    .line 32
    const-string v2, ", mIsTouchBlockingEnabled="

    .line 34
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 37
    move-result-object v0

    .line 38
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    .line 40
    const-string v2, ", mIsStickyKeysEnabled="

    .line 42
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 45
    move-result-object v0

    .line 46
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsStickyKeysEnabled:Z

    .line 48
    const-string v2, ", mIsBounceKeysEnabled="

    .line 50
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 53
    move-result-object v0

    .line 54
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsBounceKeysEnabled:Z

    .line 56
    const-string v2, ", mIsSlowKeysEnabled="

    .line 58
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 61
    move-result-object v0

    .line 62
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsSlowKeysEnabled:Z

    .line 64
    const-string v2, ", mIsAutoActionEnabled="

    .line 66
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 69
    move-result-object v0

    .line 70
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    .line 72
    const-string v2, ", mIsCornerActionEnabled="

    .line 74
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 77
    move-result-object v0

    .line 78
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    .line 80
    const-string v2, ", mIsAMEnabled="

    .line 82
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 85
    move-result-object v0

    .line 86
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAMEnabled:Z

    .line 88
    const-string v2, ", autoActionEnabled="

    .line 90
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 93
    move-result-object v0

    .line 94
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    .line 96
    const-string v2, ", cornerActionEnabled="

    .line 98
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 101
    move-result-object v0

    .line 102
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    .line 104
    const-string v2, ", AmEnabled="

    .line 106
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 109
    move-result-object v0

    .line 110
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAMEnabled:Z

    .line 112
    const-string v2, ", touchExplorationEnabled="

    .line 114
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 117
    move-result-object v0

    .line 118
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 120
    const-string v2, ", serviceHandlesDoubleTap="

    .line 122
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 125
    move-result-object v0

    .line 126
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    .line 128
    const-string v2, ", requestMultiFingerGestures="

    .line 130
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 133
    move-result-object v0

    .line 134
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    .line 136
    const-string v2, ", requestTwoFingerPassthrough="

    .line 138
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 141
    move-result-object v0

    .line 142
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    .line 144
    const-string v2, ", sendMotionEventsEnabled"

    .line 146
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 149
    move-result-object v0

    .line 150
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    .line 152
    const-string v2, ", displayMagnificationEnabled="

    .line 154
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 157
    move-result-object v0

    .line 158
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    .line 160
    const-string v2, ", autoclickEnabled="

    .line 162
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 165
    move-result-object v0

    .line 166
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    .line 168
    const-string v2, ", nonInteractiveUiTimeout="

    .line 170
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 173
    move-result-object v0

    .line 174
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    .line 176
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 183
    const-string v0, ", interactiveUiTimeout="

    .line 185
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 188
    move-result-object v0

    .line 189
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    .line 191
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 198
    const-string v0, ", installedServiceCount="

    .line 200
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 203
    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 206
    check-cast v1, Ljava/util/ArrayList;

    .line 208
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 211
    move-result v1

    .line 212
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 219
    const-string v0, ", magnificationModes="

    .line 221
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 224
    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    .line 227
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 234
    const-string v0, ", magnificationCapabilities="

    .line 236
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 239
    move-result-object v0

    .line 240
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    .line 242
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 249
    const-string v0, ", audioDescriptionByDefaultEnabled="

    .line 251
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 254
    move-result-object v0

    .line 255
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    .line 257
    const-string v2, ", magnificationFollowTypingEnabled="

    .line 259
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 262
    move-result-object v0

    .line 263
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    .line 265
    const-string v2, ", alwaysOnMagnificationEnabled="

    .line 267
    invoke-static {v1, v0, p2, v2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    .line 270
    move-result-object v0

    .line 271
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAlwaysOnMagnificationEnabled:Z

    .line 273
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 280
    const-string/jumbo v0, "}"

    .line 283
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 286
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 289
    const-string v1, "     shortcut key:{"

    .line 291
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 294
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;

    .line 296
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->toString()Ljava/lang/String;

    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 303
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    const-string v1, "     button:{"

    .line 308
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 311
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    .line 313
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->toString()Ljava/lang/String;

    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 320
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    const-string v1, "     direct access:{"

    .line 325
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 328
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;

    .line 330
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->toString()Ljava/lang/String;

    .line 333
    move-result-object v1

    .line 334
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 337
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    const-string v1, "     button target:{"

    .line 342
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 345
    move-result-object v1

    .line 346
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    .line 348
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 351
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    const-string v1, "     qs shortcut targets:"

    .line 356
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 359
    move-result-object v1

    .line 360
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityQsTargets:Ljava/util/LinkedHashSet;

    .line 362
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->toString()Ljava/lang/String;

    .line 365
    move-result-object v2

    .line 366
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 369
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 372
    const-string v1, "     a11y tiles in QS panel:"

    .line 374
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 377
    move-result-object v1

    .line 378
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yTilesInQsPanel:Landroid/util/ArraySet;

    .line 380
    invoke-virtual {v2}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    .line 383
    move-result-object v2

    .line 384
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 387
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 390
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 393
    const-string v1, "     installed services: {"

    .line 395
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 398
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 401
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 403
    check-cast v1, Ljava/util/ArrayList;

    .line 405
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 408
    move-result v1

    .line 409
    const/4 v2, 0x0

    .line 410
    move v3, v2

    .line 411
    :goto_0
    if-ge v3, v1, :cond_1

    .line 413
    const-string v4, "      "

    .line 415
    const-string v5, " : "

    .line 417
    invoke-static {v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    move-result-object v4

    .line 421
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 423
    check-cast v5, Ljava/util/ArrayList;

    .line 425
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 428
    move-result-object v5

    .line 429
    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 431
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    .line 434
    move-result-object v5

    .line 435
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 440
    check-cast v5, Ljava/util/ArrayList;

    .line 442
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 445
    move-result-object v5

    .line 446
    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 448
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isAccessibilityTool()Z

    .line 451
    move-result v5

    .line 452
    if-eqz v5, :cond_0

    .line 454
    const-string v5, "  (A11yTool)"

    .line 456
    goto :goto_1

    .line 457
    :cond_0
    const-string v5, ""

    .line 459
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    move-result-object v4

    .line 466
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 469
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 472
    add-int/lit8 v3, v3, 0x1

    .line 474
    goto :goto_0

    .line 475
    :cond_1
    const-string v1, "     }"

    .line 477
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 480
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 483
    const-string v1, "     Bound services:{"

    .line 485
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 488
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 490
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 493
    move-result v1

    .line 494
    move v3, v2

    .line 495
    :goto_2
    const-string v4, ", "

    .line 497
    if-ge v3, v1, :cond_3

    .line 499
    if-lez v3, :cond_2

    .line 501
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 504
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 507
    const-string v4, "                     "

    .line 509
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 512
    :cond_2
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 514
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 517
    move-result-object v4

    .line 518
    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 520
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 523
    add-int/lit8 v3, v3, 0x1

    .line 525
    goto :goto_2

    .line 526
    :cond_3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    const-string p1, "     Enabled services:{"

    .line 531
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 534
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 536
    check-cast p1, Ljava/util/HashSet;

    .line 538
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 541
    move-result-object p1

    .line 542
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 545
    move-result p3

    .line 546
    if-eqz p3, :cond_4

    .line 548
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 551
    move-result-object p3

    .line 552
    check-cast p3, Landroid/content/ComponentName;

    .line 554
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 557
    move-result-object p3

    .line 558
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 561
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 564
    move-result p3

    .line 565
    if-eqz p3, :cond_4

    .line 567
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 570
    move-result-object p3

    .line 571
    check-cast p3, Landroid/content/ComponentName;

    .line 573
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 576
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 579
    move-result-object p3

    .line 580
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 583
    goto :goto_3

    .line 584
    :cond_4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    const-string p1, "     Binding services:{"

    .line 589
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 592
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    .line 594
    check-cast p1, Ljava/util/HashSet;

    .line 596
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 599
    move-result-object p1

    .line 600
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 603
    move-result p3

    .line 604
    if-eqz p3, :cond_5

    .line 606
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 609
    move-result-object p3

    .line 610
    check-cast p3, Landroid/content/ComponentName;

    .line 612
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 615
    move-result-object p3

    .line 616
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 619
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 622
    move-result p3

    .line 623
    if-eqz p3, :cond_5

    .line 625
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 628
    move-result-object p3

    .line 629
    check-cast p3, Landroid/content/ComponentName;

    .line 631
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 634
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 637
    move-result-object p3

    .line 638
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 641
    goto :goto_4

    .line 642
    :cond_5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    const-string p1, "     Crashed services:{"

    .line 647
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 650
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    .line 652
    check-cast p1, Ljava/util/HashSet;

    .line 654
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 657
    move-result-object p1

    .line 658
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 661
    move-result p3

    .line 662
    if-eqz p3, :cond_6

    .line 664
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 667
    move-result-object p3

    .line 668
    check-cast p3, Landroid/content/ComponentName;

    .line 670
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 673
    move-result-object p3

    .line 674
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 677
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 680
    move-result p3

    .line 681
    if-eqz p3, :cond_6

    .line 683
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 686
    move-result-object p3

    .line 687
    check-cast p3, Landroid/content/ComponentName;

    .line 689
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 692
    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 695
    move-result-object p3

    .line 696
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 699
    goto :goto_5

    .line 700
    :cond_6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    const-string p1, "     Client list info:{"

    .line 705
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 710
    const-string p3, "          Client list "

    .line 712
    invoke-virtual {p1, p2, p3}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 715
    const-string p1, "          Registered clients:{"

    .line 717
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 720
    :goto_6
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 722
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 725
    move-result p1

    .line 726
    if-ge v2, p1, :cond_7

    .line 728
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 730
    invoke-virtual {p1, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    .line 733
    move-result-object p1

    .line 734
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    .line 736
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    .line 738
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 741
    move-result-object p1

    .line 742
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 745
    add-int/lit8 v2, v2, 0x1

    .line 747
    goto :goto_6

    .line 748
    :cond_7
    const-string/jumbo p0, "}]"

    .line 751
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method public final getA11yFeatureToTileService()Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yServiceToTileService:Ljava/util/Map;

    .line 8
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 11
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yActivityToTileService:Ljava/util/Map;

    .line 13
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 16
    return-object v0
.end method

.method public final getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 22
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 32
    return-object v1

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public final getMagnificationModeLocked(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    :cond_0
    return v0
.end method

.method public final getSecureIntForUser(ILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;

    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-ne p1, v0, :cond_1

    .line 10
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    .line 12
    return-object p0

    .line 13
    :cond_1
    const/16 v0, 0x10

    .line 15
    if-ne p1, v0, :cond_2

    .line 17
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 19
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityQsTargets:Ljava/util/LinkedHashSet;

    .line 21
    invoke-direct {p1, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 24
    return-object p1

    .line 25
    :cond_2
    const/4 v0, 0x4

    .line 26
    if-ne p1, v0, :cond_3

    .line 28
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    .line 30
    if-nez v0, :cond_4

    .line 32
    :cond_3
    const/16 v0, 0x8

    .line 34
    if-ne p1, v0, :cond_5

    .line 36
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationTwoFingerTripleTapEnabled:Z

    .line 38
    if-eqz v0, :cond_5

    .line 40
    :cond_4
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 42
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 45
    const-string/jumbo p1, "com.android.server.accessibility.MagnificationController"

    .line 48
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 51
    return-object p0

    .line 52
    :cond_5
    const/16 v0, 0x200

    .line 54
    if-ne p1, v0, :cond_6

    .line 56
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;

    .line 58
    return-object p0

    .line 59
    :cond_6
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 61
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 64
    return-object p0
.end method

.method public final getTileServiceToA11yServiceInfoMapLocked()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda3;

    .line 14
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    .line 20
    move-result-object v3

    .line 21
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/Map;

    .line 31
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yServiceToTileService:Ljava/util/Map;

    .line 33
    check-cast p0, Landroid/util/ArrayMap;

    .line 35
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p0

    .line 43
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_0

    .line 65
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Landroid/content/ComponentName;

    .line 71
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 81
    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    return-object v0
.end method

.method public final isHandlingAccessibilityEventsLocked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    .line 11
    check-cast p0, Ljava/util/HashSet;

    .line 13
    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    :goto_1
    return p0
.end method

.method public final isShortcutMagnificationEnabledLocked()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;

    .line 3
    const-string/jumbo v1, "com.android.server.accessibility.MagnificationController"

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 20
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;

    .line 22
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 32
    :goto_1
    return p0
.end method

.method public final isShortcutTargetInstalledLocked(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    const-string/jumbo v0, "com.android.server.accessibility.MagnificationController"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_1

    .line 19
    return v2

    .line 20
    :cond_1
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_2

    .line 26
    return v1

    .line 27
    :cond_2
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 37
    return v2

    .line 38
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_4

    .line 44
    return v2

    .line 45
    :cond_4
    move v0, v1

    .line 46
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    .line 48
    check-cast v3, Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result v3

    .line 54
    if-ge v0, v3, :cond_6

    .line 56
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    .line 58
    check-cast v3, Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 66
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_5

    .line 76
    return v2

    .line 77
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_6
    return v1
.end method

.method public final onSwitchToAnotherUserLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v1

    .line 7
    :goto_0
    const/4 v2, 0x0

    .line 8
    if-lez v1, :cond_0

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 16
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    .line 29
    check-cast v0, Ljava/util/HashSet;

    .line 31
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 34
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    .line 36
    check-cast v0, Ljava/util/HashSet;

    .line 38
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 41
    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    .line 44
    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    .line 46
    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    .line 48
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 50
    check-cast v0, Ljava/util/HashSet;

    .line 52
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 55
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 57
    check-cast v0, Ljava/util/HashSet;

    .line 59
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 62
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityShortcutKeyTargets:Ljava/util/LinkedHashSet;

    .line 64
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 67
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityButtonTargets:Ljava/util/LinkedHashSet;

    .line 69
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 72
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    .line 75
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    .line 79
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    .line 81
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    .line 83
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    .line 87
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationTwoFingerTripleTapEnabled:Z

    .line 89
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    .line 91
    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    .line 93
    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    .line 95
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    .line 97
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 100
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidthDefaultValue:I

    .line 102
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    .line 104
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColorDefaultValue:I

    .line 106
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    .line 108
    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAlwaysOnMagnificationEnabled:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    .line 119
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    .line 121
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAMEnabled:Z

    .line 123
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsStickyKeysEnabled:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsBounceKeysEnabled:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsSlowKeysEnabled:Z

    .line 129
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsGestureNaviBar:Z

    .line 131
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityDirectAccessTargets:Ljava/util/LinkedHashSet;

    .line 133
    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->clear()V

    .line 136
    return-void
.end method

.method public final putSecureIntForUser(IILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    throw p0
.end method

.method public final reconcileSoftKeyboardModeWithSettingsLocked()V
    .locals 7

    .line 1
    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    .line 4
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    .line 18
    const-string v4, "accessibility_soft_keyboard_mode"

    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x0

    .line 22
    if-ne v3, v5, :cond_1

    .line 24
    if-nez v0, :cond_1

    .line 26
    invoke-virtual {p0, v2, v6}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 29
    invoke-virtual {p0, v1, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    .line 32
    move-result v0

    .line 33
    const/high16 v3, 0x40000000    # 2.0f

    .line 35
    or-int/2addr v0, v3

    .line 36
    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(IILjava/lang/String;)V

    .line 39
    :cond_1
    invoke-virtual {p0, v1, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    .line 42
    move-result v0

    .line 43
    and-int/lit8 v0, v0, 0x3

    .line 45
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    .line 47
    if-eq v0, v3, :cond_2

    .line 49
    const-string v0, "AccessibilityUserState"

    .line 51
    const-string v3, "Show IME setting inconsistent with internal state. Overwriting"

    .line 53
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0, v2, v6}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 59
    invoke-virtual {p0, v2, v1, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(IILjava/lang/String;)V

    .line 62
    :cond_2
    return-void
.end method

.method public final removeDisabledServicesFromTemporaryStatesLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 14
    check-cast v2, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 22
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 29
    move-result-object v2

    .line 30
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 32
    check-cast v3, Ljava/util/HashSet;

    .line 34
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_0

    .line 40
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    .line 42
    check-cast v3, Ljava/util/HashSet;

    .line 44
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 47
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    .line 49
    check-cast v3, Ljava/util/HashSet;

    .line 51
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method public final removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onRemoved()V

    .line 9
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object p1, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 16
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 32
    check-cast p1, Ljava/util/HashMap;

    .line 34
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 37
    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result p1

    .line 43
    if-ge v1, p1, :cond_1

    .line 45
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 53
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    .line 55
    iget-object v2, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    .line 57
    check-cast v0, Ljava/util/HashMap;

    .line 59
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityUserState$ServiceInfoChangeListener;

    .line 67
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 69
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onServiceInfoChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 72
    return-void
.end method

.method public final removeShortcutTargetLocked(ILandroid/content/ComponentName;)Z
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p1, v0, :cond_1

    .line 4
    const/16 v0, 0x8

    .line 6
    if-eq p1, v0, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda4;

    .line 14
    invoke-direct {v1, p2}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda4;-><init>(Landroid/content/ComponentName;)V

    .line 17
    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 20
    move-result p2

    .line 21
    const/16 v1, 0x10

    .line 23
    if-ne p1, v1, :cond_0

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->updateA11yQsTargetLocked(Ljava/util/Set;)V

    .line 28
    :cond_0
    return p2

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 31
    const-string/jumbo p1, "removeShortcutTargetLocked only support shortcut type: software and hardware and quick settings for now"

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
.end method

.method public final setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 6
    if-eq p1, v1, :cond_0

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    const-string p0, "AccessibilityUserState"

    .line 12
    const-string p1, "Invalid soft keyboard mode"

    .line 14
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return v2

    .line 18
    :cond_0
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    .line 20
    if-ne v3, p1, :cond_1

    .line 22
    return v1

    .line 23
    :cond_1
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 25
    const-string v5, "accessibility_soft_keyboard_mode"

    .line 27
    const/high16 v6, 0x20000000

    .line 29
    const-string/jumbo v7, "show_ime_with_hard_keyboard"

    .line 32
    if-ne p1, v0, :cond_6

    .line 34
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    .line 37
    move-result v3

    .line 38
    const/high16 v8, 0x40000000    # 2.0f

    .line 40
    and-int/2addr v3, v8

    .line 41
    if-eqz v3, :cond_2

    .line 43
    return v2

    .line 44
    :cond_2
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    .line 47
    move-result v3

    .line 48
    and-int/lit8 v3, v3, 0x3

    .line 50
    if-eq v3, v0, :cond_5

    .line 52
    invoke-virtual {p0, v4, v7}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 58
    move v0, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    move v0, v2

    .line 61
    :goto_0
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    .line 64
    move-result v3

    .line 65
    const v8, -0x20000001

    .line 68
    and-int/2addr v3, v8

    .line 69
    if-eqz v0, :cond_4

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    move v6, v2

    .line 73
    :goto_1
    or-int v0, v3, v6

    .line 75
    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(IILjava/lang/String;)V

    .line 78
    :cond_5
    invoke-virtual {p0, v1, v4, v7}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(IILjava/lang/String;)V

    .line 81
    goto :goto_3

    .line 82
    :cond_6
    if-ne v3, v0, :cond_8

    .line 84
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    .line 87
    move-result v0

    .line 88
    and-int/2addr v0, v6

    .line 89
    if-eqz v0, :cond_7

    .line 91
    move v0, v1

    .line 92
    goto :goto_2

    .line 93
    :cond_7
    move v0, v2

    .line 94
    :goto_2
    invoke-virtual {p0, v0, v4, v7}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(IILjava/lang/String;)V

    .line 97
    :cond_8
    :goto_3
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    .line 100
    move-result v0

    .line 101
    and-int/lit8 v0, v0, -0x4

    .line 103
    or-int/2addr v0, p1

    .line 104
    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(IILjava/lang/String;)V

    .line 107
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    .line 109
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    .line 111
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 116
    move-result p1

    .line 117
    sub-int/2addr p1, v1

    .line 118
    :goto_4
    if-ltz p1, :cond_a

    .line 120
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    move-result-object p2

    .line 126
    check-cast p2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 128
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    .line 130
    iget-object p2, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 132
    iget-boolean v3, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 134
    if-nez v3, :cond_9

    .line 136
    goto :goto_5

    .line 137
    :cond_9
    const/4 v3, 0x6

    .line 138
    invoke-virtual {p2, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 145
    :goto_5
    add-int/lit8 p1, p1, -0x1

    .line 147
    goto :goto_4

    .line 148
    :cond_a
    return v1
.end method

.method public final updateA11yQsTargetLocked(Ljava/util/Set;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityQsTargets:Ljava/util/LinkedHashSet;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 6
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAccessibilityQsTargets:Ljava/util/LinkedHashSet;

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 11
    return-void
.end method
