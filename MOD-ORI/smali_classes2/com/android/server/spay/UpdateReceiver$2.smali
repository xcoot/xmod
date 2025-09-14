.class public final Lcom/android/server/spay/UpdateReceiver$2;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/spay/UpdateReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/spay/UpdateReceiver;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

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
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    const-string v2, "Handler : "

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v2, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "UpdateReceiver"

    .line 19
    .line 20
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v1, "action"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_6

    .line 34
    .line 35
    const-string v3, "com.samsung.android.rajaampat"

    .line 36
    .line 37
    const-string v4, "com.samsung.android.samsungpay.gear"

    .line 38
    .line 39
    const-string v5, "com.samsung.android.spaymini"

    .line 40
    .line 41
    const-string v6, "com.samsung.android.spay"

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    .line 44
    .line 45
    const/4 v7, -0x1

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    sparse-switch v8, :sswitch_data_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :sswitch_0
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    .line 55
    .line 56
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-nez v8, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 v7, 0x2

    .line 64
    goto :goto_0

    .line 65
    :sswitch_1
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    .line 66
    .line 67
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-nez v8, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 v7, 0x1

    .line 75
    goto :goto_0

    .line 76
    :sswitch_2
    const-string v8, "android.intent.action.PACKAGE_REPLACED"

    .line 77
    .line 78
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-nez v8, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    move v7, v0

    .line 86
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :pswitch_0
    const-string p1, "ACTION_BOOT_COMPLETED received : triggering PF Install"

    .line 92
    .line 93
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    if-eqz p1, :cond_6

    .line 99
    .line 100
    invoke-static {p1}, Lcom/android/server/spay/UpdateReceiver;->triggerPFInstall(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    invoke-static {p1, v6, v0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    const-string v1, "com.samsung.android.spayfw"

    .line 111
    .line 112
    invoke-static {p1, v1, v0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    invoke-static {p1, v5, v0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {p1, v4, v0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    invoke-static {p0, v3, v0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :pswitch_1
    const-string v7, "action : "

    .line 132
    .line 133
    const-string v8, ", "

    .line 134
    .line 135
    invoke-static {v7, v1, v8}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    const-string v8, "getdata_of_intent"

    .line 140
    .line 141
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    iget-object v7, p0, Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;

    .line 156
    .line 157
    if-eqz v7, :cond_6

    .line 158
    .line 159
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    if-eqz v7, :cond_6

    .line 164
    .line 165
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-eqz v7, :cond_3

    .line 174
    .line 175
    const-string p1, " received : triggering PF Install"

    .line 176
    .line 177
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;

    .line 185
    .line 186
    invoke-static {p1}, Lcom/android/server/spay/UpdateReceiver;->triggerPFInstall(Landroid/content/Context;)V

    .line 187
    .line 188
    .line 189
    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;

    .line 190
    .line 191
    invoke-static {p0, v6, v0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_3
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_4

    .line 204
    .line 205
    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;

    .line 206
    .line 207
    invoke-static {p0, v5, v0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_4
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_5

    .line 220
    .line 221
    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;

    .line 222
    .line 223
    invoke-static {p0, v4, v0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 224
    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_5
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-eqz p1, :cond_6

    .line 236
    .line 237
    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver;->mContext:Landroid/content/Context;

    .line 238
    .line 239
    invoke-static {p0, v3, v0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 240
    .line 241
    .line 242
    :cond_6
    :goto_1
    return-void

    .line 243
    :sswitch_data_0
    .sparse-switch
        -0x304ed112 -> :sswitch_2
        0x2f94f923 -> :sswitch_1
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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
