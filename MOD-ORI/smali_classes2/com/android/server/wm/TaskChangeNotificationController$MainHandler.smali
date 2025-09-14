.class public final Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/TaskChangeNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskChangeNotificationController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    goto/16 :goto_0

    .line 9
    .line 10
    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_NOTIFY_TASKBAR_VISIBLE:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskbarVisibleChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskWindowingModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotInvalidated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyLockTaskModeChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToBack:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyOnActivityRotation:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 50
    .line 51
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskFocusChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListFrozen:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskListUpdated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 112
    .line 113
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 118
    .line 119
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 120
    .line 121
    .line 122
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p0, Landroid/window/TaskSnapshot;

    .line 125
    .line 126
    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0, v0}, Landroid/window/TaskSnapshot;->removeReference(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 132
    .line 133
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 138
    .line 139
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 144
    .line 145
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 150
    .line 151
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :pswitch_15
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 156
    .line 157
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :pswitch_16
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 162
    .line 163
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :pswitch_17
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 168
    .line 169
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :pswitch_18
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedTask:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 174
    .line 175
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :pswitch_19
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 180
    .line 181
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 186
    .line 187
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 192
    .line 193
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :pswitch_1c
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 198
    .line 199
    invoke-static {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->-$$Nest$mforAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 200
    .line 201
    .line 202
    :cond_0
    :goto_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 203
    .line 204
    instance-of p1, p0, Lcom/android/internal/os/SomeArgs;

    .line 205
    .line 206
    if-eqz p1, :cond_1

    .line 207
    .line 208
    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 211
    .line 212
    .line 213
    :cond_1
    return-void

    .line 214
    nop

    .line 215
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
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
        :pswitch_0
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
    .end packed-switch
.end method
