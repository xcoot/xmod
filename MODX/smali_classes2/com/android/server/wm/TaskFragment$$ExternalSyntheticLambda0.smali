.class public final synthetic Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;->$r8$classId:I

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
    iget p0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0

    .line 24
    :pswitch_0
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 25
    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    :goto_1
    return p0

    .line 38
    :pswitch_1
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 39
    .line 40
    if-nez p0, :cond_2

    .line 41
    .line 42
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 43
    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    .line 47
    .line 48
    if-nez p0, :cond_2

    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/4 p0, 0x0

    .line 53
    :goto_2
    return p0

    .line 54
    :pswitch_2
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 55
    .line 56
    if-nez p0, :cond_3

    .line 57
    .line 58
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 59
    .line 60
    if-nez p0, :cond_3

    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    const/4 p0, 0x0

    .line 65
    :goto_3
    return p0

    .line 66
    :pswitch_3
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 67
    .line 68
    if-nez p0, :cond_4

    .line 69
    .line 70
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    .line 71
    .line 72
    if-nez p0, :cond_4

    .line 73
    .line 74
    const/4 p0, 0x1

    .line 75
    goto :goto_4

    .line 76
    :cond_4
    const/4 p0, 0x0

    .line 77
    :goto_4
    return p0

    .line 78
    :pswitch_4
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 79
    .line 80
    xor-int/lit8 p0, p0, 0x1

    .line 81
    .line 82
    return p0

    .line 83
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_5

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->allowEdgeExtension()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_5

    .line 94
    .line 95
    const/4 p0, 0x1

    .line 96
    goto :goto_5

    .line 97
    :cond_5
    const/4 p0, 0x0

    .line 98
    :goto_5
    return p0

    .line 99
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
