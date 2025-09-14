.class public final Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/gestures/TouchExplorer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    .line 5
    const/high16 v1, 0x80000

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    .line 10
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 12
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 14
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    const/high16 v1, 0x2000000

    .line 20
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(ILandroid/view/MotionEvent;)V

    .line 23
    :cond_0
    return-void
.end method
