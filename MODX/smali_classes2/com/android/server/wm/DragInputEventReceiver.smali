.class public final Lcom/android/server/wm/DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDragDropController:Lcom/android/server/wm/DragDropController;

.field public mIsStartEvent:Z

.field public mMuteInput:Z

.field public mStylusButtonDownAtStart:Z


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/DragDropController;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 9
    .line 10
    iput-object p3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 11

    .line 1
    const-string v0, "WindowManager"

    .line 2
    .line 3
    const-string v1, "Got UP on move channel; dropping at "

    .line 4
    .line 5
    const-string v2, "Button no longer pressed; dropping at "

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    instance-of v4, p1, Landroid/view/MotionEvent;

    .line 9
    .line 10
    if-eqz v4, :cond_8

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x2

    .line 17
    and-int/2addr v4, v5

    .line 18
    if-eqz v4, :cond_8

    .line 19
    .line 20
    iget-boolean v4, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 21
    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_0
    move-object v4, p1

    .line 27
    check-cast v4, Landroid/view/MotionEvent;

    .line 28
    .line 29
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getButtonState()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    and-int/lit8 v8, v8, 0x20

    .line 42
    .line 43
    const/4 v9, 0x1

    .line 44
    if-eqz v8, :cond_1

    .line 45
    .line 46
    move v8, v9

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v8, v3

    .line 49
    :goto_0
    iget-boolean v10, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    .line 50
    .line 51
    if-eqz v10, :cond_2

    .line 52
    .line 53
    iput-boolean v8, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    .line 54
    .line 55
    iput-boolean v3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto/16 :goto_6

    .line 60
    .line 61
    :catch_0
    move-exception v1

    .line 62
    goto :goto_4

    .line 63
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    .line 64
    .line 65
    .line 66
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-eqz v4, :cond_7

    .line 68
    .line 69
    const-string v10, ","

    .line 70
    .line 71
    if-eq v4, v9, :cond_5

    .line 72
    .line 73
    if-eq v4, v5, :cond_4

    .line 74
    .line 75
    const/4 v1, 0x3

    .line 76
    if-eq v4, v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    :try_start_1
    const-string v1, "Drag cancelled!"

    .line 83
    .line 84
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iput-boolean v9, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    .line 91
    .line 92
    if-eqz v1, :cond_6

    .line 93
    .line 94
    if-nez v8, :cond_6

    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    iput-boolean v9, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    iput-boolean v9, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 142
    .line 143
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 144
    .line 145
    iget-boolean v2, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 146
    .line 147
    xor-int/2addr v2, v9

    .line 148
    invoke-virtual {v1, v2, v6, v7}, Lcom/android/server/wm/DragDropController;->handleMotionEvent(ZFF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p1, v9}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_7
    :try_start_2
    const-string v1, "Unexpected ACTION_DOWN in drag layer"

    .line 156
    .line 157
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_8
    :goto_3
    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :goto_4
    :try_start_3
    const-string v2, "Exception caught by drag handleMotion"

    .line 169
    .line 170
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 174
    .line 175
    .line 176
    :goto_5
    return-void

    .line 177
    :goto_6
    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 178
    .line 179
    .line 180
    throw v0
.end method
