.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

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
    check-cast p4, Landroid/view/SurfaceControl;

    .line 17
    check-cast p5, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 19
    iget-object p3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yOverlayLayers:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->contains(I)Z

    .line 24
    move-result p3

    .line 25
    if-nez p3, :cond_0

    .line 27
    iget-object p3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yOverlayLayers:Landroid/util/SparseArray;

    .line 29
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 31
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->getA11yOverlayLayer(I)Landroid/view/SurfaceControl;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    :cond_0
    iget-object p3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yOverlayLayers:Landroid/util/SparseArray;

    .line 40
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object p3

    .line 44
    check-cast p3, Landroid/view/SurfaceControl;

    .line 46
    const-string v0, "AccessibilityManagerService"

    .line 48
    if-nez p3, :cond_1

    .line 50
    const-string p3, "Unable to get accessibility overlay SurfaceControl."

    .line 52
    invoke-static {v0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yOverlayLayers:Landroid/util/SparseArray;

    .line 57
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 60
    const/4 p1, 0x2

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    .line 64
    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 67
    invoke-virtual {p1, p4, p3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 70
    move-result-object p2

    .line 71
    const/4 p3, 0x1

    .line 72
    invoke-virtual {p2, p4, p3}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 79
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 82
    const/4 p1, 0x0

    .line 83
    :goto_0
    if-eqz p5, :cond_2

    .line 85
    :try_start_0
    invoke-interface {p5, p1, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendAttachOverlayResult(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception p0

    .line 90
    const-string p1, "Exception while attaching overlay."

    .line 92
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :cond_2
    :goto_1
    return-void
.end method
