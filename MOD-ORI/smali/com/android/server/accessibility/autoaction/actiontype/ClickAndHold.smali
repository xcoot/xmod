.class public final Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mLastMotionEvent:Landroid/view/MotionEvent;


# virtual methods
.method public final performCornerAction(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Thread;

    .line 6
    .line 7
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
