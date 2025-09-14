.class public final Lcom/android/server/accessibility/ActionReplacingCallback;
.super Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInteractionId:I

.field public final mLock:Ljava/lang/Object;

.field public mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public final mNodeWithReplacementActionsInteractionId:I

.field public mNodesFromOriginalWindow:Ljava/util/List;

.field public mPrefetchedNodesFromOriginalWindow:Ljava/util/List;

.field public mReplacementNodeIsReadyOrFailed:Z

.field public final mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

.field public mSetFindNodeFromOriginalWindowCalled:Z

.field public mSetFindNodesFromOriginalWindowCalled:Z

.field public mSetPrefetchFromOriginalWindowCalled:Z


# direct methods
.method public constructor <init>(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;Landroid/view/accessibility/IAccessibilityInteractionConnection;IIJ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p3

    .line 5
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 8
    new-instance v2, Ljava/lang/Object;

    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v2, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    .line 15
    const/4 v2, 0x0

    .line 16
    iput-boolean v2, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodeFromOriginalWindowCalled:Z

    .line 18
    iput-boolean v2, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodesFromOriginalWindowCalled:Z

    .line 20
    iput-boolean v2, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetPrefetchFromOriginalWindowCalled:Z

    .line 22
    move-object/from16 v2, p1

    .line 24
    iput-object v2, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 26
    iput v1, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    .line 28
    const/4 v14, 0x1

    .line 29
    add-int/lit8 v5, v1, 0x1

    .line 31
    iput v5, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActionsInteractionId:I

    .line 33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 36
    move-result-wide v15

    .line 37
    :try_start_0
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v12, 0x0

    .line 42
    const/4 v13, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    move-object/from16 v1, p2

    .line 46
    move-object/from16 v6, p0

    .line 48
    move/from16 v8, p4

    .line 50
    move-wide/from16 v9, p5

    .line 52
    invoke-interface/range {v1 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_0
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_2

    .line 61
    :catch_0
    :try_start_1
    iput-boolean v14, v0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    goto :goto_0

    .line 64
    :goto_1
    return-void

    .line 65
    :goto_2
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    throw v0
.end method


# virtual methods
.method public final replaceActionsLocked(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-nez p1, :cond_1

    .line 24
    const/4 p0, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    .line 28
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    :goto_1
    return-object p0
.end method

.method public final replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAllActions()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 23
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    .line 26
    move-result-wide v1

    .line 27
    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    .line 29
    cmp-long v1, v1, v3

    .line 31
    if-nez v1, :cond_2

    .line 33
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 35
    if-eqz v1, :cond_2

    .line 37
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 46
    move-result v2

    .line 47
    if-ge v0, v2, :cond_0

    .line 49
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 55
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 66
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 73
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    .line 76
    move-result v0

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 82
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    .line 85
    move-result v0

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 91
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    .line 94
    move-result v0

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 100
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    .line 103
    move-result v0

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 109
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    .line 112
    move-result v0

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 116
    iget-object p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 118
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDismissable()Z

    .line 121
    move-result p0

    .line 122
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    .line 125
    :cond_2
    return-void
.end method

.method public final replaceInfoActionsAndCallServiceIfReady()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodeFromOriginalWindowCalled:Z

    .line 12
    if-eqz v1, :cond_0

    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto/16 :goto_6

    .line 19
    :cond_0
    move v1, v3

    .line 20
    :goto_0
    if-eqz v1, :cond_1

    .line 22
    iget-object v4, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 24
    if-eqz v4, :cond_1

    .line 26
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 29
    iput-boolean v3, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodeFromOriginalWindowCalled:Z

    .line 31
    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v1, :cond_2

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 38
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    .line 40
    invoke-interface {v0, v4, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    :catch_0
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    .line 45
    monitor-enter v1

    .line 46
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    .line 48
    if-eqz v0, :cond_3

    .line 50
    iget-boolean v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodesFromOriginalWindowCalled:Z

    .line 52
    if-eqz v0, :cond_3

    .line 54
    move v0, v2

    .line 55
    goto :goto_1

    .line 56
    :catchall_1
    move-exception p0

    .line 57
    goto :goto_5

    .line 58
    :cond_3
    move v0, v3

    .line 59
    :goto_1
    const/4 v4, 0x0

    .line 60
    if-eqz v0, :cond_4

    .line 62
    iget-object v5, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    .line 64
    invoke-virtual {p0, v5}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsLocked(Ljava/util/List;)Ljava/util/List;

    .line 67
    move-result-object v5

    .line 68
    iput-boolean v3, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodesFromOriginalWindowCalled:Z

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    move-object v5, v4

    .line 72
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    if-eqz v0, :cond_5

    .line 75
    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 77
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    .line 79
    invoke-interface {v0, v5, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 82
    :catch_1
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    .line 84
    monitor-enter v0

    .line 85
    :try_start_4
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    .line 87
    if-eqz v1, :cond_6

    .line 89
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetPrefetchFromOriginalWindowCalled:Z

    .line 91
    if-eqz v1, :cond_6

    .line 93
    goto :goto_3

    .line 94
    :catchall_2
    move-exception p0

    .line 95
    goto :goto_4

    .line 96
    :cond_6
    move v2, v3

    .line 97
    :goto_3
    if-eqz v2, :cond_7

    .line 99
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mPrefetchedNodesFromOriginalWindow:Ljava/util/List;

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsLocked(Ljava/util/List;)Ljava/util/List;

    .line 104
    move-result-object v4

    .line 105
    iput-boolean v3, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetPrefetchFromOriginalWindowCalled:Z

    .line 107
    :cond_7
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 108
    if-eqz v2, :cond_8

    .line 110
    :try_start_5
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 112
    iget p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    .line 114
    invoke-interface {v0, v4, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 117
    :catch_2
    :cond_8
    return-void

    .line 118
    :goto_4
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 119
    throw p0

    .line 120
    :goto_5
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 121
    throw p0

    .line 122
    :goto_6
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 123
    throw p0
.end method

.method public final sendAttachOverlayResult(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 3
    invoke-interface {p0, p1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendAttachOverlayResult(II)V

    .line 6
    return-void
.end method

.method public final sendTakeScreenshotOfWindowError(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 3
    invoke-interface {p0, p1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V

    .line 6
    return-void
.end method

.method public final setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne p2, v1, :cond_0

    .line 9
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 11
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodeFromOriginalWindowCalled:Z

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActionsInteractionId:I

    .line 18
    if-ne p2, v1, :cond_1

    .line 20
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 22
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallServiceIfReady()V

    .line 28
    return-void

    .line 29
    :cond_1
    :try_start_1
    const-string p0, "ActionReplacingCallback"

    .line 31
    const-string p1, "Callback with unexpected interactionId"

    .line 33
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0
.end method

.method public final setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne p2, v1, :cond_0

    .line 9
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    .line 11
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodesFromOriginalWindowCalled:Z

    .line 13
    goto :goto_1

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActionsInteractionId:I

    .line 18
    if-ne p2, v1, :cond_3

    .line 20
    const/4 p2, 0x0

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    move-result v1

    .line 25
    if-ge p2, v1, :cond_2

    .line 27
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 33
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    .line 36
    move-result-wide v3

    .line 37
    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    .line 39
    cmp-long v3, v3, v5

    .line 41
    if-nez v3, :cond_1

    .line 43
    iput-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 45
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallServiceIfReady()V

    .line 54
    return-void

    .line 55
    :cond_3
    :try_start_1
    const-string p0, "ActionReplacingCallback"

    .line 57
    const-string p1, "Callback with unexpected interactionId"

    .line 59
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p0
.end method

.method public final setPerformAccessibilityActionResult(ZI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 3
    invoke-interface {p0, p1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V

    .line 6
    return-void
.end method

.method public final setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    .line 6
    if-ne p2, v1, :cond_0

    .line 8
    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mPrefetchedNodesFromOriginalWindow:Ljava/util/List;

    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetPrefetchFromOriginalWindowCalled:Z

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallServiceIfReady()V

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_1
    const-string p0, "ActionReplacingCallback"

    .line 22
    const-string p1, "Callback with unexpected interactionId"

    .line 24
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p0
.end method
