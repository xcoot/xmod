.class public final Lcom/android/server/accessibility/SystemActionPerformer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayUpdateCallBack:Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;

.field public final mLegacyBackAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyHomeAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyLockScreenAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyNotificationsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyPowerDialogAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyQuickSettingsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyRecentsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyTakeScreenshotAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mListener:Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;

.field public final mRegisteredSystemActions:Ljava/util/Map;

.field public final mScreenshotHelperSupplier:Ljava/util/function/Supplier;

.field public final mSystemActionLock:Ljava/lang/Object;

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/SystemActionPerformer;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 7
    iput-object p4, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mListener:Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;

    .line 8
    iput-object p5, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mDisplayUpdateCallBack:Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;

    .line 9
    iput-object p3, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mScreenshotHelperSupplier:Ljava/util/function/Supplier;

    .line 10
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x104017e

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyHomeAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 12
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040175

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyBackAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 14
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040185

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x3

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyRecentsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 16
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040180

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x4

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyNotificationsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 18
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040184

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x5

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyQuickSettingsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 20
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040183

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x6

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyPowerDialogAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 22
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x104017f

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x8

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyLockScreenAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 24
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1040186

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x9

    invoke-direct {p2, p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyTakeScreenshotAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-void
.end method


# virtual methods
.method public final addLegacySystemActions(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    check-cast v0, Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyBackAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 18
    move-object v1, p1

    .line 19
    check-cast v1, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v1

    .line 31
    check-cast v0, Landroid/util/ArrayMap;

    .line 33
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyHomeAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 41
    move-object v1, p1

    .line 42
    check-cast v1, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    .line 49
    const/4 v1, 0x3

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v1

    .line 54
    check-cast v0, Landroid/util/ArrayMap;

    .line 56
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyRecentsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 64
    move-object v1, p1

    .line 65
    check-cast v1, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    .line 72
    const/4 v1, 0x4

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v1

    .line 77
    check-cast v0, Landroid/util/ArrayMap;

    .line 79
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyNotificationsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 87
    move-object v1, p1

    .line 88
    check-cast v1, Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    .line 95
    const/4 v1, 0x5

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v1

    .line 100
    check-cast v0, Landroid/util/ArrayMap;

    .line 102
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyQuickSettingsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 110
    move-object v1, p1

    .line 111
    check-cast v1, Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    .line 118
    const/4 v1, 0x6

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v1

    .line 123
    check-cast v0, Landroid/util/ArrayMap;

    .line 125
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_5

    .line 131
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyPowerDialogAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 133
    move-object v1, p1

    .line 134
    check-cast v1, Ljava/util/ArrayList;

    .line 136
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    .line 141
    const/16 v1, 0x8

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v1

    .line 147
    check-cast v0, Landroid/util/ArrayMap;

    .line 149
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_6

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyLockScreenAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 157
    move-object v1, p1

    .line 158
    check-cast v1, Ljava/util/ArrayList;

    .line 160
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    .line 165
    const/16 v1, 0x9

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    move-result-object v1

    .line 171
    check-cast v0, Landroid/util/ArrayMap;

    .line 173
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_7

    .line 179
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyTakeScreenshotAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 181
    check-cast p1, Ljava/util/ArrayList;

    .line 183
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_7
    return-void
.end method

.method public getSystemActions()Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    .line 11
    check-cast v2, Landroid/util/ArrayMap;

    .line 13
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v2

    .line 21
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/util/Map$Entry;

    .line 33
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 35
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Ljava/lang/Integer;

    .line 41
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v5

    .line 45
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Landroid/app/RemoteAction;

    .line 51
    invoke-virtual {v3}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    .line 54
    move-result-object v3

    .line 55
    invoke-direct {v4, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SystemActionPerformer;->addLegacySystemActions(Ljava/util/List;)V

    .line 67
    monitor-exit v1

    .line 68
    return-object v0

    .line 69
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
.end method

.method public final performSystemAction(I)Z
    .locals 8

    .line 1
    const-string v0, "Invalid action id: "

    .line 3
    const-string/jumbo v1, "canceled PendingIntent for global action "

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v2

    .line 10
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    .line 12
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object v5, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mDisplayUpdateCallBack:Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;

    .line 15
    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 17
    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 19
    iget-boolean v6, v5, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    .line 21
    if-eqz v6, :cond_0

    .line 23
    iget v6, v5, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLastNonProxyTopFocusedDisplayId:I

    .line 25
    iget v7, v5, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    .line 27
    if-eq v6, v7, :cond_0

    .line 29
    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 31
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->moveDisplayToTopIfAllowed(I)V

    .line 34
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v6

    .line 40
    check-cast v5, Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroid/app/RemoteAction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    const/4 v6, 0x0

    .line 49
    const/4 v7, 0x1

    .line 50
    if-eqz v5, :cond_2

    .line 52
    const/16 p0, 0xe

    .line 54
    if-ne p1, p0, :cond_1

    .line 56
    :try_start_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0, v7}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, v7}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    .line 67
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v5}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, p0}, Landroid/app/PendingIntent;->send(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    return v7

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto/16 :goto_3

    .line 86
    :catch_0
    move-exception p0

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 96
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    return v7

    .line 100
    :goto_0
    :try_start_6
    const-string p1, "SystemActionPerformer"

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v5}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 122
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    return v6

    .line 126
    :cond_2
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 127
    const/4 v1, 0x4

    .line 128
    const/16 v4, 0x101

    .line 130
    const/16 v5, 0x301

    .line 132
    packed-switch p1, :pswitch_data_0

    .line 135
    :pswitch_0
    :try_start_8
    const-string p0, "SystemActionPerformer"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p1

    .line 149
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 152
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    return v6

    .line 156
    :catchall_1
    move-exception p0

    .line 157
    goto/16 :goto_4

    .line 159
    :pswitch_1
    const/16 p1, 0x17

    .line 161
    :try_start_9
    invoke-virtual {p0, p1, v5}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 164
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    return v7

    .line 168
    :pswitch_2
    const/16 p1, 0x16

    .line 170
    :try_start_a
    invoke-virtual {p0, p1, v5}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 173
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    return v7

    .line 177
    :pswitch_3
    const/16 p1, 0x15

    .line 179
    :try_start_b
    invoke-virtual {p0, p1, v5}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 182
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    return v7

    .line 186
    :pswitch_4
    const/16 p1, 0x14

    .line 188
    :try_start_c
    invoke-virtual {p0, p1, v5}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 191
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    return v7

    .line 195
    :pswitch_5
    const/16 p1, 0x13

    .line 197
    :try_start_d
    invoke-virtual {p0, p1, v5}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 200
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    return v7

    .line 204
    :pswitch_6
    :try_start_e
    iget-object p1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 206
    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->interceptHeadsetHookForActiveCall(Landroid/content/Context;)Z

    .line 209
    move-result p1

    .line 210
    if-nez p1, :cond_3

    .line 212
    const/16 p1, 0x4f

    .line 214
    invoke-virtual {p0, p1, v4}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 217
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    return v7

    .line 221
    :pswitch_7
    :try_start_f
    iget-object p1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mScreenshotHelperSupplier:Ljava/util/function/Supplier;

    .line 223
    if-eqz p1, :cond_4

    .line 225
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 228
    move-result-object p0

    .line 229
    check-cast p0, Lcom/android/internal/util/ScreenshotHelper;

    .line 231
    goto :goto_1

    .line 232
    :cond_4
    new-instance p1, Lcom/android/internal/util/ScreenshotHelper;

    .line 234
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 236
    invoke-direct {p1, p0}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    .line 239
    move-object p0, p1

    .line 240
    :goto_1
    new-instance p1, Landroid/os/Handler;

    .line 242
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 245
    move-result-object v0

    .line 246
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 249
    const/4 v0, 0x0

    .line 250
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(ILandroid/os/Handler;Ljava/util/function/Consumer;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 253
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    return v7

    .line 257
    :pswitch_8
    :try_start_10
    iget-object p1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 259
    const-class v0, Landroid/os/PowerManager;

    .line 261
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 264
    move-result-object p1

    .line 265
    check-cast p1, Landroid/os/PowerManager;

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 270
    move-result-wide v0

    .line 271
    const/4 v4, 0x7

    .line 272
    invoke-virtual {p1, v0, v1, v4, v6}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 275
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 277
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->lockNow()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 280
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    return v7

    .line 284
    :pswitch_9
    :try_start_11
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 286
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->showGlobalActions()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 289
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    return v7

    .line 293
    :pswitch_a
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 296
    move-result-wide v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 297
    :try_start_13
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 299
    const-string/jumbo p1, "statusbar"

    .line 302
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    move-result-object p0

    .line 306
    check-cast p0, Landroid/app/StatusBarManager;

    .line 308
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->expandSettingsPanel()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 311
    :try_start_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 314
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 317
    return v7

    .line 318
    :catchall_2
    move-exception p0

    .line 319
    :try_start_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    throw p0

    .line 323
    :pswitch_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 326
    move-result-wide v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 327
    :try_start_16
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 329
    const-string/jumbo p1, "statusbar"

    .line 332
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 335
    move-result-object p0

    .line 336
    check-cast p0, Landroid/app/StatusBarManager;

    .line 338
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 341
    :try_start_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 344
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 347
    return v7

    .line 348
    :catchall_3
    move-exception p0

    .line 349
    :try_start_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    throw p0

    .line 353
    :pswitch_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 356
    move-result-wide p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 357
    :try_start_19
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 359
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 362
    move-result-object v0

    .line 363
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 365
    if-nez v0, :cond_5

    .line 367
    :try_start_1a
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 370
    goto :goto_2

    .line 371
    :cond_5
    :try_start_1b
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 373
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService$2;->toggleRecentApps()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 376
    :try_start_1c
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 379
    move v6, v7

    .line 380
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 383
    return v6

    .line 384
    :catchall_4
    move-exception v0

    .line 385
    :try_start_1d
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    throw v0

    .line 389
    :pswitch_d
    const/4 p1, 0x3

    .line 390
    invoke-virtual {p0, p1, v4}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 393
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    return v7

    .line 397
    :pswitch_e
    :try_start_1e
    invoke-virtual {p0, v1, v4}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    .line 400
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 403
    return v7

    .line 404
    :goto_3
    :try_start_1f
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 405
    :try_start_20
    throw p0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 406
    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 409
    throw p0

    .line 410
    nop

    .line 411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public registerSystemAction(ILandroid/app/RemoteAction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    check-cast v1, Landroid/util/ArrayMap;

    .line 12
    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mListener:Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 22
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter p1

    .line 25
    :try_start_1
    iget p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 27
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifySystemActionsChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 34
    monitor-exit p1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    throw p0
.end method

.method public final sendDownAndUpKeyEvents(II)V
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    move-result-wide v10

    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v2, p0

    .line 11
    move v3, p1

    .line 12
    move v5, p2

    .line 13
    move-wide v6, v10

    .line 14
    move-wide v8, v10

    .line 15
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/SystemActionPerformer;->sendKeyEventIdentityCleared(IIIJJ)V

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 21
    move-result-wide v8

    .line 22
    const/4 v4, 0x1

    .line 23
    move-object v2, p0

    .line 24
    move v3, p1

    .line 25
    move v5, p2

    .line 26
    move-wide v6, v10

    .line 27
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/accessibility/SystemActionPerformer;->sendKeyEventIdentityCleared(IIIJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    throw p0
.end method

.method public final sendKeyEventIdentityCleared(IIIJJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/accessibility/SystemActionPerformer;->mDisplayUpdateCallBack:Lcom/android/server/accessibility/SystemActionPerformer$DisplayUpdateCallBack;

    .line 5
    check-cast v1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 7
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 9
    iget v14, v1, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLastNonProxyTopFocusedDisplayId:I

    .line 11
    const/4 v11, 0x0

    .line 12
    const/16 v12, 0x8

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, -0x1

    .line 17
    const/4 v15, 0x0

    .line 18
    move-wide/from16 v2, p4

    .line 20
    move-wide/from16 v4, p6

    .line 22
    move/from16 v6, p2

    .line 24
    move/from16 v7, p1

    .line 26
    move/from16 v13, p3

    .line 28
    invoke-static/range {v2 .. v15}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    .line 31
    move-result-object v1

    .line 32
    iget-object v0, v0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 34
    const-class v2, Landroid/hardware/input/InputManager;

    .line 36
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 46
    invoke-virtual {v1}, Landroid/view/KeyEvent;->recycle()V

    .line 49
    return-void
.end method

.method public unregisterSystemAction(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    check-cast v1, Landroid/util/ArrayMap;

    .line 12
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mListener:Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    check-cast p0, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 22
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter p1

    .line 25
    :try_start_1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifySystemActionsChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 34
    monitor-exit p1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    throw p0
.end method
