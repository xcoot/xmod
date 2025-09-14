.class public final Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mDelay:I

.field public final mEventType:I

.field public final synthetic this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/gestures/TouchExplorer;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mEventType:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final forceSendAndRemove()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->run()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final isPending()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mEventType:I

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
