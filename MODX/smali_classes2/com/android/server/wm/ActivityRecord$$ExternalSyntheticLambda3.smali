.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 9
    .line 10
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-ne v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastAllDrawn:Z

    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    .line 41
    .line 42
    :cond_2
    return-void

    .line 43
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    iput-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 47
    .line 48
    iput-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    .line 49
    .line 50
    iput-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_1
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_2
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 66
    .line 67
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 68
    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 72
    .line 73
    const/4 v0, 0x2

    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void

    .line 85
    :pswitch_4
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
