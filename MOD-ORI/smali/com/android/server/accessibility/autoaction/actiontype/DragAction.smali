.class public final Lcom/android/server/accessibility/autoaction/actiontype/DragAction;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mFirstEvent:Landroid/view/MotionEvent;

.field public mFirstPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

.field public mFirstPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public mSecondEvent:Landroid/view/MotionEvent;

.field public mSecondPoint:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

.field public mSecondPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public mType:Ljava/lang/String;


# virtual methods
.method public final performCornerAction(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mFirstEvent:Landroid/view/MotionEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Thread;

    .line 6
    .line 7
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/DragAction$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/DragAction;I)V

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

.method public final setMotionEventForDragAction(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DragAction;->mSecondEvent:Landroid/view/MotionEvent;

    .line 6
    .line 7
    return-void
.end method
