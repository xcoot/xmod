.class public final synthetic Lcom/android/server/accessibility/AccessibilityWindowManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p0

    .line 9
    check-cast p3, Ljava/lang/Integer;

    .line 11
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p2

    .line 15
    iget-object p3, p1, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p3

    .line 18
    :try_start_0
    invoke-virtual {p1, p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getConnectionLocked(II)Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;

    .line 21
    move-result-object p0

    .line 22
    if-nez p0, :cond_0

    .line 24
    monitor-exit p3

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 31
    const-wide/16 v0, 0x10

    .line 33
    invoke-virtual {p2, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_1

    .line 39
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 41
    const-string p2, "AccessibilityWindowManager.notifyOutsideTouch"

    .line 43
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 46
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .line 48
    invoke-interface {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->clearAccessibilityFocus()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    :catch_0
    :goto_0
    return-void

    .line 52
    :goto_1
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    throw p0
.end method
