.class public final synthetic Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 7
    .line 8
    iget p2, p2, Landroid/os/Message;->arg2:I

    .line 9
    .line 10
    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskDisplayChanged(II)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskSnapshotInvalidated(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 21
    .line 22
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p2, Landroid/window/TaskSnapshot;

    .line 25
    .line 26
    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 33
    .line 34
    iget p2, p2, Landroid/os/Message;->arg1:I

    .line 35
    .line 36
    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskProfileLocked(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_3
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 43
    .line 44
    iget p2, p2, Landroid/os/Message;->arg1:I

    .line 45
    .line 46
    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_4
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 53
    .line 54
    iget p2, p2, Landroid/os/Message;->arg1:I

    .line 55
    .line 56
    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_5
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    .line 62
    instance-of p2, p0, Ljava/lang/String;

    .line 63
    .line 64
    if-eqz p2, :cond_0

    .line 65
    .line 66
    check-cast p0, Ljava/lang/String;

    .line 67
    .line 68
    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onActivityDismissingSplitTask(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {p1}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedTask()V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void

    .line 76
    :pswitch_6
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p0, Ljava/lang/String;

    .line 79
    .line 80
    iget v0, p2, Landroid/os/Message;->arg1:I

    .line 81
    .line 82
    iget p2, p2, Landroid/os/Message;->arg2:I

    .line 83
    .line 84
    invoke-interface {p1, p0, v0, p2}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_7
    invoke-interface {p1}, Landroid/app/ITaskStackListener;->onActivityUnpinned()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_8
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p0, Ljava/lang/String;

    .line 95
    .line 96
    iget v0, p2, Landroid/os/Message;->sendingUid:I

    .line 97
    .line 98
    iget v1, p2, Landroid/os/Message;->arg1:I

    .line 99
    .line 100
    iget p2, p2, Landroid/os/Message;->arg2:I

    .line 101
    .line 102
    invoke-interface {p1, p0, v0, v1, p2}, Landroid/app/ITaskStackListener;->onActivityPinned(Ljava/lang/String;III)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_9
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 109
    .line 110
    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :pswitch_a
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 115
    .line 116
    iget p2, p2, Landroid/os/Message;->arg2:I

    .line 117
    .line 118
    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onActivityRequestedOrientationChanged(II)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_b
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 125
    .line 126
    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :pswitch_c
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 133
    .line 134
    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :pswitch_d
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 141
    .line 142
    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :pswitch_e
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 147
    .line 148
    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskRemoved(I)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :pswitch_f
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 155
    .line 156
    iget-object p2, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 159
    .line 160
    iget v0, p0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 161
    .line 162
    const/4 v1, 0x0

    .line 163
    const/4 v2, 0x1

    .line 164
    if-eqz v0, :cond_1

    .line 165
    .line 166
    move v0, v2

    .line 167
    goto :goto_1

    .line 168
    :cond_1
    move v0, v1

    .line 169
    :goto_1
    iget v3, p0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 170
    .line 171
    if-eqz v3, :cond_2

    .line 172
    .line 173
    move v3, v2

    .line 174
    goto :goto_2

    .line 175
    :cond_2
    move v3, v1

    .line 176
    :goto_2
    iget p0, p0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 177
    .line 178
    if-eqz p0, :cond_3

    .line 179
    .line 180
    move v1, v2

    .line 181
    :cond_3
    invoke-interface {p1, p2, v0, v3, v1}, Landroid/app/ITaskStackListener;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_10
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    .line 187
    if-eqz p0, :cond_4

    .line 188
    .line 189
    check-cast p0, Landroid/content/ComponentName;

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_4
    const/4 p0, 0x0

    .line 193
    :goto_3
    iget p2, p2, Landroid/os/Message;->arg1:I

    .line 194
    .line 195
    if-eqz p2, :cond_5

    .line 196
    .line 197
    const/4 p2, 0x1

    .line 198
    goto :goto_4

    .line 199
    :cond_5
    const/4 p2, 0x0

    .line 200
    :goto_4
    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskbarIconVisibleChangeRequest(Landroid/content/ComponentName;Z)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :pswitch_11
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 205
    .line 206
    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskWindowingModeChanged(I)V

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :pswitch_12
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 211
    .line 212
    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onLockTaskModeChanged(I)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :pswitch_13
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 219
    .line 220
    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onTaskMovedToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :pswitch_14
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 225
    .line 226
    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onActivityRotation(I)V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :pswitch_15
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 231
    .line 232
    iget p2, p2, Landroid/os/Message;->arg2:I

    .line 233
    .line 234
    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskRequestedOrientationChanged(II)V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :pswitch_16
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 239
    .line 240
    iget p2, p2, Landroid/os/Message;->arg2:I

    .line 241
    .line 242
    if-eqz p2, :cond_6

    .line 243
    .line 244
    const/4 p2, 0x1

    .line 245
    goto :goto_5

    .line 246
    :cond_6
    const/4 p2, 0x0

    .line 247
    :goto_5
    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskFocusChanged(IZ)V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :pswitch_17
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 252
    .line 253
    if-eqz p0, :cond_7

    .line 254
    .line 255
    const/4 p0, 0x1

    .line 256
    goto :goto_6

    .line 257
    :cond_7
    const/4 p0, 0x0

    .line 258
    :goto_6
    invoke-interface {p1, p0}, Landroid/app/ITaskStackListener;->onRecentTaskListFrozenChanged(Z)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :pswitch_18
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 263
    .line 264
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast p2, Landroid/content/ComponentName;

    .line 267
    .line 268
    invoke-interface {p1, p0, p2}, Landroid/app/ITaskStackListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    :pswitch_19
    invoke-interface {p1}, Landroid/app/ITaskStackListener;->onRecentTaskListUpdated()V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :pswitch_1a
    invoke-interface {p1}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    nop

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
