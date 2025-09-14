.class public final synthetic Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 7
    .line 8
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0

    .line 26
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    :goto_1
    return p0

    .line 46
    :pswitch_1
    check-cast p1, Lcom/android/server/wm/Task;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    const/4 p0, 0x1

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/4 p0, 0x0

    .line 63
    :goto_2
    return p0

    .line 64
    :pswitch_2
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 65
    .line 66
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    .line 67
    .line 68
    if-nez p0, :cond_3

    .line 69
    .line 70
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 71
    .line 72
    if-eqz p0, :cond_3

    .line 73
    .line 74
    const/4 p0, 0x1

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    const/4 p0, 0x0

    .line 77
    :goto_3
    return p0

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
