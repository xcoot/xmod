.class public final synthetic Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, [I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, [I

    .line 13
    .line 14
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 15
    .line 16
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getMinDimensions()Landroid/graphics/Point;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    aget v2, v0, v1

    .line 30
    .line 31
    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 32
    .line 33
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    aput v2, v0, v1

    .line 38
    .line 39
    aget v0, p0, v1

    .line 40
    .line 41
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 42
    .line 43
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    aput p1, p0, v1

    .line 48
    .line 49
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Lcom/android/server/wm/TaskFragment;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;->f$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Lcom/android/server/wm/Task;

    .line 57
    .line 58
    check-cast p1, Lcom/android/server/wm/Task;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    if-eq p0, p1, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_2

    .line 76
    .line 77
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->setResumedAffordance(Lcom/android/server/wm/WindowContainer;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Lcom/android/server/wm/TaskFragment;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;->f$1:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p0, Lcom/android/server/wm/Task;

    .line 95
    .line 96
    check-cast p1, Lcom/android/server/wm/Task;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    if-eq p0, p1, :cond_3

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_3

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-eqz p0, :cond_3

    .line 114
    .line 115
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 118
    .line 119
    .line 120
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->setResumedAffordance(Lcom/android/server/wm/WindowContainer;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
