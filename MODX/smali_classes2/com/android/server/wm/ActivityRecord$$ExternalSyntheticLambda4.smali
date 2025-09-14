.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda4;
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
    iput p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda4;->$r8$classId:I

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
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    .line 7
    .line 8
    iget-boolean p0, p1, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 9
    .line 10
    return p0

    .line 11
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :pswitch_1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    const/4 p1, -0x2

    .line 31
    if-eq p0, p1, :cond_1

    .line 32
    .line 33
    const/4 p1, 0x3

    .line 34
    if-eq p0, p1, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    :cond_1
    :goto_0
    return v0

    .line 38
    :pswitch_2
    check-cast p1, Lcom/android/server/wm/Task;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_2

    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 p0, 0x0

    .line 61
    :goto_1
    return p0

    .line 62
    :pswitch_3
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 63
    .line 64
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 65
    .line 66
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 67
    .line 68
    const/4 p1, 0x3

    .line 69
    if-ne p0, p1, :cond_3

    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    const/4 p0, 0x0

    .line 74
    :goto_2
    return p0

    .line 75
    :pswitch_4
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_4

    .line 82
    .line 83
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    .line 84
    .line 85
    if-nez p0, :cond_4

    .line 86
    .line 87
    const/4 p0, 0x1

    .line 88
    goto :goto_3

    .line 89
    :cond_4
    const/4 p0, 0x0

    .line 90
    :goto_3
    return p0

    .line 91
    :pswitch_5
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 92
    .line 93
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 94
    .line 95
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 96
    .line 97
    invoke-static {p0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    return p0

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
