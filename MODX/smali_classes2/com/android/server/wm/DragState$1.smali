.class public final Lcom/android/server/wm/DragState$1;
.super Lcom/android/server/wm/DragState$AnimationListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DragState;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/DragState$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    .line 4
    .line 5
    const/4 p2, 0x3

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/server/wm/DragState$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-static {p1, v0}, Lcom/android/server/wm/DragState;->-$$Nest$mendAnimator(Lcom/android/server/wm/DragState;I)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mIsUpdatingClipdata:Z

    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    invoke-static {p1, v0}, Lcom/android/server/wm/DragState;->-$$Nest$mendAnimator(Lcom/android/server/wm/DragState;I)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/wm/DragState$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/android/server/wm/DragState$AnimationListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    const-string/jumbo v0, "scale"

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    .line 24
    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    const-string p0, "WindowManager"

    .line 32
    .line 33
    const-string/jumbo p1, "mSurfaceControl is null, animation cannot be updated."

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    :goto_0
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :cond_0
    :try_start_1
    const-string/jumbo v2, "pivot_offset"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/Float;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    iget-object v2, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    .line 61
    .line 62
    iget-object v3, v2, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Ljava/lang/Float;

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Ljava/lang/Float;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    const/4 v5, 0x0

    .line 85
    const/4 v6, 0x0

    .line 86
    move-object v2, v1

    .line 87
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 93
    .line 94
    iget v0, p0, Lcom/android/server/wm/DragState;->mCenterPivotOffsetX:F

    .line 95
    .line 96
    add-float/2addr v0, v8

    .line 97
    iget p0, p0, Lcom/android/server/wm/DragState;->mCenterPivotOffsetY:F

    .line 98
    .line 99
    add-float/2addr p0, v8

    .line 100
    invoke-virtual {v1, p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    :goto_1
    return-void

    .line 108
    :goto_2
    if-eqz v1, :cond_2

    .line 109
    .line 110
    :try_start_2
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :catchall_1
    move-exception p1

    .line 115
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    :goto_3
    throw p0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
