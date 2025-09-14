.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-ne p1, p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0

    .line 23
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eq p1, p0, :cond_1

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
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_2

    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    const/4 p0, 0x0

    .line 72
    :goto_2
    return p0

    .line 73
    :pswitch_2
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 79
    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    if-eq p1, p0, :cond_3

    .line 83
    .line 84
    const/4 p0, 0x1

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    const/4 p0, 0x0

    .line 87
    :goto_3
    return p0

    .line 88
    :pswitch_3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    const/4 v0, 0x1

    .line 94
    if-ne p1, p0, :cond_4

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_4
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 98
    .line 99
    if-eqz v1, :cond_6

    .line 100
    .line 101
    iget-object v2, v1, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    .line 102
    .line 103
    if-nez v2, :cond_6

    .line 104
    .line 105
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 106
    .line 107
    invoke-virtual {v2, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_6

    .line 112
    .line 113
    instance-of v1, v1, Lcom/android/server/wm/SnapshotStartingData;

    .line 114
    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-nez v1, :cond_6

    .line 130
    .line 131
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 132
    .line 133
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TransitionController;->inPlayingTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 140
    .line 141
    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->setNoAnimation(Lcom/android/server/wm/WindowContainer;)V

    .line 142
    .line 143
    .line 144
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->setNoAnimation(Lcom/android/server/wm/WindowContainer;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_7

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-eqz p0, :cond_7

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_7
    const/4 v0, 0x0

    .line 167
    :goto_4
    return v0

    .line 168
    :pswitch_4
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 169
    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    if-eq p1, p0, :cond_8

    .line 174
    .line 175
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 176
    .line 177
    if-eqz p0, :cond_8

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    if-eqz p0, :cond_8

    .line 184
    .line 185
    const/4 p0, 0x1

    .line 186
    goto :goto_5

    .line 187
    :cond_8
    const/4 p0, 0x0

    .line 188
    :goto_5
    return p0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
