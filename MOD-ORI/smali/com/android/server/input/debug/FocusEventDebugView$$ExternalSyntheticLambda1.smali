.class public final synthetic Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/debug/FocusEventDebugView;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/debug/FocusEventDebugView;Landroid/view/KeyEvent;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/debug/FocusEventDebugView;

    iput-object p2, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/debug/FocusEventDebugView;Landroid/view/MotionEvent;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/debug/FocusEventDebugView;

    iput-object p2, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/debug/FocusEventDebugView;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroid/view/KeyEvent;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/android/server/input/debug/FocusEventDebugView;->handleKeyEvent(Landroid/view/KeyEvent;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/debug/FocusEventDebugView;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroid/view/MotionEvent;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lcom/android/server/input/debug/FocusEventDebugView;->handleRotaryInput(Landroid/view/MotionEvent;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
