.class public final Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;

    .line 6
    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;->val$displayId:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;

    .line 3
    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold$1;->val$displayId:I

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    move-result-wide v1

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v3

    .line 16
    iget-object v5, v0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 18
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 21
    move-result v5

    .line 22
    const/4 v6, 0x1

    .line 23
    new-array v6, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 25
    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    .line 27
    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 30
    const/4 v8, 0x0

    .line 31
    aput-object v7, v6, v8

    .line 33
    iget-object v9, v0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mLastMotionEvent:Landroid/view/MotionEvent;

    .line 35
    invoke-virtual {v9, v5, v7}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 38
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/actiontype/ClickAndHold;->mContext:Landroid/content/Context;

    .line 40
    const-string/jumbo v5, "input"

    .line 43
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 49
    if-nez v0, :cond_0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    aget-object v5, v6, v8

    .line 54
    iget v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 56
    iget v7, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 58
    const/4 v8, 0x1

    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 63
    move-result-object v1

    .line 64
    const/16 v2, 0x1002

    .line 66
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 69
    const/high16 v2, 0x800000

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setFlags(I)V

    .line 74
    invoke-virtual {v1, p0}, Landroid/view/MotionEvent;->setDisplayId(I)V

    .line 77
    const/4 p0, 0x2

    .line 78
    invoke-virtual {v0, v1, p0}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 81
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 84
    :goto_0
    return-void
.end method
