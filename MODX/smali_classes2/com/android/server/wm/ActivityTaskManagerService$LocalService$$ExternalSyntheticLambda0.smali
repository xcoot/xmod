.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService$LocalService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/am/BaseErrorDialog;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/16 v2, 0x7da

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 35
    .line 36
    const v2, 0x10401be

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 47
    .line 48
    const v2, 0x1040f12

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 59
    .line 60
    const v2, 0x104000a

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const/4 v2, -0x1

    .line 75
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void

    .line 82
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 83
    .line 84
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 85
    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    new-instance v0, Lcom/android/server/am/BaseErrorDialog;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-direct {v0, v1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const/16 v2, 0x7da

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 102
    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 109
    .line 110
    const v2, 0x10401be

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 121
    .line 122
    const v2, 0x1040f13

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 133
    .line 134
    const v2, 0x104000a

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    .line 142
    .line 143
    const/4 v2, 0x1

    .line 144
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    const/4 v2, -0x1

    .line 149
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 153
    .line 154
    .line 155
    :cond_1
    return-void

    .line 156
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 157
    .line 158
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 159
    .line 160
    if-eqz v0, :cond_4

    .line 161
    .line 162
    new-instance v0, Lcom/android/server/am/BaseErrorDialog;

    .line 163
    .line 164
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 165
    .line 166
    invoke-direct {v0, v1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const/16 v2, 0x7da

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 176
    .line 177
    .line 178
    const/4 v1, 0x0

    .line 179
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 180
    .line 181
    .line 182
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 183
    .line 184
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    .line 185
    .line 186
    if-eqz v2, :cond_2

    .line 187
    .line 188
    const v3, 0x1040c8e

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_2
    const v3, 0x1040c8d

    .line 193
    .line 194
    .line 195
    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 203
    .line 204
    if-eqz v2, :cond_3

    .line 205
    .line 206
    const v2, 0x1040c8c

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_3
    const v2, 0x1040c8b

    .line 211
    .line 212
    .line 213
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 221
    .line 222
    const v2, 0x104000a

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    .line 230
    .line 231
    const/4 v2, 0x1

    .line 232
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    const/4 v2, -0x1

    .line 237
    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 241
    .line 242
    .line 243
    :cond_4
    return-void

    .line 244
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 245
    .line 246
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 247
    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
