.class public final Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConnection:Landroid/view/accessibility/IMagnificationConnection;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/IMagnificationConnection;Lcom/android/server/accessibility/AccessibilityTraceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 8
    return-void
.end method


# virtual methods
.method public final setConnectionCallback(Landroid/view/accessibility/IMagnificationConnectionCallback;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 3
    const-wide/16 v1, 0x180

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 8
    move-result v3

    .line 9
    if-eqz v3, :cond_0

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v4, "callback="

    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    const-string v4, "MagnificationConnectionWrapper.setConnectionCallback"

    .line 28
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 31
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    .line 33
    invoke-interface {p0, p1}, Landroid/view/accessibility/IMagnificationConnection;->setConnectionCallback(Landroid/view/accessibility/IMagnificationConnectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    return-void
.end method
