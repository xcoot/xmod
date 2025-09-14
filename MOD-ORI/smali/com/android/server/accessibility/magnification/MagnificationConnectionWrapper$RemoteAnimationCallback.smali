.class public final Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;
.super Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/MagnificationAnimationCallback;Lcom/android/server/accessibility/AccessibilityTraceManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;->mCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 7
    .line 8
    const-wide/16 v0, 0x40

    .line 9
    .line 10
    invoke-virtual {p2, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v2, "callback="

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "RemoteAnimationCallback.constructor"

    .line 32
    .line 33
    invoke-virtual {p2, p1, v0, v1, p0}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;->mCallback:Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/accessibility/MagnificationAnimationCallback;->onResult(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 7
    .line 8
    const-wide/16 v1, 0x40

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper$RemoteAnimationCallback;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string/jumbo v3, "success="

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "RemoteAnimationCallback.onResult"

    .line 34
    .line 35
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
