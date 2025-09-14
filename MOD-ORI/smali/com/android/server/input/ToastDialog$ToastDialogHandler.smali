.class public final Lcom/android/server/input/ToastDialog$ToastDialogHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/ToastDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/input/ToastDialog;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/input/ToastDialog$ToastDialogHandler;->this$0:Lcom/android/server/input/ToastDialog;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x7d8

    .line 4
    .line 5
    const v2, 0x104000a

    .line 6
    .line 7
    .line 8
    const v3, 0x10302d2

    .line 9
    .line 10
    .line 11
    const v4, 0x10302d1

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    iget-object p0, p0, Lcom/android/server/input/ToastDialog$ToastDialogHandler;->this$0:Lcom/android/server/input/ToastDialog;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    :pswitch_0
    goto/16 :goto_0

    .line 21
    .line 22
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 25
    .line 26
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 27
    .line 28
    iget-object v6, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v6, Ljava/lang/String;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v7, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 37
    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 41
    .line 42
    .line 43
    iput-object v5, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 44
    .line 45
    :cond_0
    const/4 v5, 0x1

    .line 46
    if-ne v0, v5, :cond_6

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    move v3, v4

    .line 65
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/android/server/input/ToastDialog;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-direct {v0, v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v0, Lcom/android/server/input/ToastDialog$1;

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    invoke-direct {v0, v3}, Lcom/android/server/input/ToastDialog$1;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 113
    .line 114
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v0, Ljava/lang/String;

    .line 117
    .line 118
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p1, Ljava/lang/String;

    .line 121
    .line 122
    iget-object v6, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 123
    .line 124
    if-eqz v6, :cond_2

    .line 125
    .line 126
    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 127
    .line 128
    .line 129
    iput-object v5, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 130
    .line 131
    :cond_2
    iget-object v5, p0, Lcom/android/server/input/ToastDialog;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v5}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_3

    .line 146
    .line 147
    move v3, v4

    .line 148
    :cond_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    .line 149
    .line 150
    iget-object v5, p0, Lcom/android/server/input/ToastDialog;->mContext:Landroid/content/Context;

    .line 151
    .line 152
    invoke-direct {v4, v5, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    new-instance v0, Lcom/android/server/input/ToastDialog$1;

    .line 164
    .line 165
    const/4 v3, 0x0

    .line 166
    invoke-direct {v0, v3}, Lcom/android/server/input/ToastDialog$1;-><init>(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iput-object p1, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 184
    .line 185
    .line 186
    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 193
    .line 194
    if-eqz v0, :cond_4

    .line 195
    .line 196
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 197
    .line 198
    .line 199
    iput-object v5, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 200
    .line 201
    :cond_4
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 204
    .line 205
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast p1, Ljava/lang/String;

    .line 208
    .line 209
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mToast:Landroid/widget/Toast;

    .line 210
    .line 211
    if-eqz v0, :cond_5

    .line 212
    .line 213
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 214
    .line 215
    .line 216
    iput-object v5, p0, Lcom/android/server/input/ToastDialog;->mToast:Landroid/widget/Toast;

    .line 217
    .line 218
    :cond_5
    iget-object v0, p0, Lcom/android/server/input/ToastDialog;->mContext:Landroid/content/Context;

    .line 219
    .line 220
    const/4 v1, 0x0

    .line 221
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iput-object p1, p0, Lcom/android/server/input/ToastDialog;->mToast:Landroid/widget/Toast;

    .line 226
    .line 227
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 228
    .line 229
    .line 230
    :cond_6
    :goto_0
    return-void

    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
