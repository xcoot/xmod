.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;
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
    iput p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;->$r8$classId:I

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
    iget p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0

    .line 31
    :pswitch_1
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 40
    .line 41
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 42
    .line 43
    const/high16 p1, 0x4000000

    .line 44
    .line 45
    and-int/2addr p0, p1

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    :goto_1
    return p0

    .line 52
    :pswitch_2
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 53
    .line 54
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    const/4 p1, -0x2

    .line 65
    if-eq p0, p1, :cond_3

    .line 66
    .line 67
    const/4 p1, 0x3

    .line 68
    if-eq p0, p1, :cond_3

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    :cond_3
    :goto_2
    return v0

    .line 72
    :pswitch_3
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_4

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    const/4 p0, 0x1

    .line 87
    goto :goto_3

    .line 88
    :cond_4
    const/4 p0, 0x0

    .line 89
    :goto_3
    return p0

    .line 90
    :pswitch_4
    check-cast p1, Lcom/android/server/wm/Task;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_6

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_5

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_5
    const/4 p0, 0x0

    .line 106
    goto :goto_5

    .line 107
    :cond_6
    :goto_4
    const/4 p0, 0x1

    .line 108
    :goto_5
    return p0

    .line 109
    :pswitch_5
    check-cast p1, Lcom/android/server/wm/Task;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-eqz p0, :cond_7

    .line 116
    .line 117
    const/4 p0, 0x0

    .line 118
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-eqz p0, :cond_7

    .line 123
    .line 124
    const/4 p0, 0x1

    .line 125
    goto :goto_6

    .line 126
    :cond_7
    const/4 p0, 0x0

    .line 127
    :goto_6
    return p0

    .line 128
    :pswitch_6
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 129
    .line 130
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 131
    .line 132
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 133
    .line 134
    const/high16 v0, -0x80000000

    .line 135
    .line 136
    and-int/2addr p1, v0

    .line 137
    if-eqz p1, :cond_8

    .line 138
    .line 139
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 140
    .line 141
    and-int/lit8 p0, p0, 0x10

    .line 142
    .line 143
    if-eqz p0, :cond_8

    .line 144
    .line 145
    const/4 p0, 0x1

    .line 146
    goto :goto_7

    .line 147
    :cond_8
    const/4 p0, 0x0

    .line 148
    :goto_7
    return p0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
