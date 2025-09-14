.class public final Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    const/4 p1, 0x3

    .line 2
    const/4 v0, 0x2

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    if-nez v4, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, 0x5

    .line 24
    const-string v6, "[MCF_DS_SYS]_PreconditionObserver"

    .line 25
    .line 26
    const/4 v7, -0x1

    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    sparse-switch v8, :sswitch_data_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :sswitch_0
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    .line 36
    .line 37
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v7, p1

    .line 45
    goto :goto_0

    .line 46
    :sswitch_1
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    .line 47
    .line 48
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move v7, v0

    .line 56
    goto :goto_0

    .line 57
    :sswitch_2
    const-string v8, "android.intent.action.PACKAGE_RESTARTED"

    .line 58
    .line 59
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    move v7, v1

    .line 67
    goto :goto_0

    .line 68
    :sswitch_3
    const-string v8, "android.intent.action.PACKAGE_REPLACED"

    .line 69
    .line 70
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_5

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    move v7, v2

    .line 78
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 79
    .line 80
    .line 81
    goto/16 :goto_2

    .line 82
    .line 83
    :pswitch_0
    const-string p1, "android.intent.extra.REPLACING"

    .line 84
    .line 85
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iget-object p2, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 90
    .line 91
    invoke-static {p2, v4}, Lcom/samsung/android/server/continuity/PreconditionObserver;->-$$Nest$msetInstalledFlag(Lcom/samsung/android/server/continuity/PreconditionObserver;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    if-eqz p1, :cond_6

    .line 95
    .line 96
    const-string p1, "handlePackageAdded - with EXTRA_REPLACING"

    .line 97
    .line 98
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 102
    .line 103
    invoke-static {p0, v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->-$$Nest$mnotifyReplacedPackage(Lcom/samsung/android/server/continuity/PreconditionObserver;Z)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_6
    const-string p1, "handlePackageAdded - without EXTRA_REPLACING"

    .line 109
    .line 110
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 114
    .line 115
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/continuity/PreconditionObserver;->notifyChanged(I)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_2

    .line 119
    .line 120
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    const-string p2, "com.samsung.android.scloud"

    .line 126
    .line 127
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-eqz p2, :cond_7

    .line 132
    .line 133
    const-string/jumbo p2, "unsetInstalledFlag - Scloud"

    .line 134
    .line 135
    .line 136
    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    iget p2, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 140
    .line 141
    and-int/lit16 p2, p2, -0xf1

    .line 142
    .line 143
    iput p2, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_7
    const-string p2, "com.samsung.android.mcfds"

    .line 147
    .line 148
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_8

    .line 153
    .line 154
    const-string/jumbo p2, "unsetInstalledFlag - MCFDS"

    .line 155
    .line 156
    .line 157
    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    iget p2, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 161
    .line 162
    and-int/lit16 p2, p2, -0xf01

    .line 163
    .line 164
    iput p2, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    .line 165
    .line 166
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 167
    .line 168
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/continuity/PreconditionObserver;->notifyChanged(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 173
    .line 174
    iget-object p0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;

    .line 175
    .line 176
    if-eqz p0, :cond_a

    .line 177
    .line 178
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 179
    .line 180
    iget-object p2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 181
    .line 182
    invoke-virtual {p2}, Lcom/samsung/android/server/continuity/PreconditionObserver;->meetConditions()Z

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string/jumbo v2, "onPackageRestarted - "

    .line 189
    .line 190
    .line 191
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-boolean v2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v2, ", "

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const-string v2, "[MCF_DS_SYS]_McfDsManager"

    .line 212
    .line 213
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    iput-boolean p2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    .line 217
    .line 218
    if-nez p2, :cond_9

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_9
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    .line 222
    .line 223
    .line 224
    const-wide/16 p1, 0x3e8

    .line 225
    .line 226
    const/4 v1, 0x6

    .line 227
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->sendMessageDelayed(IIJ)V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 232
    .line 233
    invoke-static {p1, v4}, Lcom/samsung/android/server/continuity/PreconditionObserver;->-$$Nest$msetInstalledFlag(Lcom/samsung/android/server/continuity/PreconditionObserver;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 237
    .line 238
    invoke-static {p0, v2}, Lcom/samsung/android/server/continuity/PreconditionObserver;->-$$Nest$mnotifyReplacedPackage(Lcom/samsung/android/server/continuity/PreconditionObserver;Z)V

    .line 239
    .line 240
    .line 241
    :cond_a
    :goto_2
    return-void

    .line 242
    nop

    .line 243
    :sswitch_data_0
    .sparse-switch
        -0x304ed112 -> :sswitch_3
        -0x2d2ad030 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
