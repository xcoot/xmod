.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;->$r8$classId:I

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
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    if-ne p0, p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1

    .line 20
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 21
    .line 22
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 23
    .line 24
    if-nez p0, :cond_2

    .line 25
    .line 26
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 27
    .line 28
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    if-eq p0, v0, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    if-eq p0, v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    if-ne p0, v1, :cond_2

    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    :goto_1
    return v0

    .line 54
    :pswitch_1
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 55
    .line 56
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 57
    .line 58
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 59
    .line 60
    const/4 p1, 0x1

    .line 61
    if-ne p0, p1, :cond_3

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    const/4 p1, 0x0

    .line 65
    :goto_2
    return p1

    .line 66
    :pswitch_2
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    return p0

    .line 73
    :pswitch_3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 74
    .line 75
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 76
    .line 77
    if-eqz p0, :cond_4

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_4

    .line 84
    .line 85
    const/4 p0, 0x1

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    const/4 p0, 0x0

    .line 88
    :goto_3
    return p0

    .line 89
    :pswitch_4
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 90
    .line 91
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 92
    .line 93
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 94
    .line 95
    const/4 v0, 0x1

    .line 96
    if-ne p1, v0, :cond_5

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

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
    const/4 v0, 0x0

    .line 106
    :goto_4
    return v0

    .line 107
    :pswitch_5
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 108
    .line 109
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 110
    .line 111
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 112
    .line 113
    const/4 p1, 0x3

    .line 114
    if-ne p0, p1, :cond_6

    .line 115
    .line 116
    const/4 p0, 0x1

    .line 117
    goto :goto_5

    .line 118
    :cond_6
    const/4 p0, 0x0

    .line 119
    :goto_5
    return p0

    .line 120
    :pswitch_6
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 121
    .line 122
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 123
    .line 124
    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 125
    .line 126
    if-eqz p0, :cond_7

    .line 127
    .line 128
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 129
    .line 130
    if-nez p0, :cond_7

    .line 131
    .line 132
    const/4 p0, 0x1

    .line 133
    goto :goto_6

    .line 134
    :cond_7
    const/4 p0, 0x0

    .line 135
    :goto_6
    return p0

    .line 136
    :pswitch_7
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 137
    .line 138
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 139
    .line 140
    if-nez p0, :cond_8

    .line 141
    .line 142
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 143
    .line 144
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 145
    .line 146
    const/4 p1, 0x1

    .line 147
    if-eq p0, p1, :cond_9

    .line 148
    .line 149
    const/4 v0, 0x2

    .line 150
    if-eq p0, v0, :cond_9

    .line 151
    .line 152
    const/4 v0, 0x4

    .line 153
    if-ne p0, v0, :cond_8

    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_8
    const/4 p1, 0x0

    .line 157
    :cond_9
    :goto_7
    return p1

    .line 158
    :pswitch_8
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 159
    .line 160
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 161
    .line 162
    return p0

    .line 163
    :pswitch_9
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 164
    .line 165
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    return p0

    .line 172
    :pswitch_a
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 173
    .line 174
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    .line 175
    .line 176
    if-nez p0, :cond_a

    .line 177
    .line 178
    iget-boolean p0, p1, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 179
    .line 180
    if-eqz p0, :cond_a

    .line 181
    .line 182
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 183
    .line 184
    if-eqz p0, :cond_a

    .line 185
    .line 186
    const/4 p0, 0x1

    .line 187
    goto :goto_8

    .line 188
    :cond_a
    const/4 p0, 0x0

    .line 189
    :goto_8
    return p0

    .line 190
    :pswitch_b
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 191
    .line 192
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 193
    .line 194
    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 195
    .line 196
    if-nez p0, :cond_b

    .line 197
    .line 198
    sget-object p0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    .line 199
    .line 200
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    .line 201
    .line 202
    .line 203
    move-result p0

    .line 204
    if-nez p0, :cond_b

    .line 205
    .line 206
    const/4 p0, 0x1

    .line 207
    goto :goto_9

    .line 208
    :cond_b
    const/4 p0, 0x0

    .line 209
    :goto_9
    return p0

    .line 210
    :pswitch_c
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 211
    .line 212
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 213
    .line 214
    xor-int/lit8 p0, p0, 0x1

    .line 215
    .line 216
    return p0

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
