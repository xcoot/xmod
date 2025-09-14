.class public final synthetic Lcom/android/server/accessibility/AccessibilityServiceConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3
    check-cast p2, Landroid/view/MotionEvent;

    .line 5
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInterfaceSafely()Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_1

    .line 11
    :try_start_0
    iget-object v0, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mTrace:Landroid/accessibilityservice/AccessibilityTrace;

    .line 13
    invoke-interface {v0}, Landroid/accessibilityservice/AccessibilityTrace;->isA11yTracingEnabled()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    const-string v0, ".onMotionEvent "

    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->logTraceSvcClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p0, p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onMotionEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_2

    .line 35
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    const-string v0, "Error sending motion event to"

    .line 39
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    iget-object p1, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    const-string p2, "AccessibilityServiceConnection"

    .line 53
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :cond_1
    :goto_2
    return-void
.end method
