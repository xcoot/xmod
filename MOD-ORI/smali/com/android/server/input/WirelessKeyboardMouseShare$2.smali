.class public final Lcom/android/server/input/WirelessKeyboardMouseShare$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

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
    .locals 12

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_a

    .line 13
    .line 14
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 15
    .line 16
    const/high16 v0, -0x80000000

    .line 17
    .line 18
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 23
    .line 24
    iget-boolean p2, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInitialized:Z

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez p2, :cond_8

    .line 29
    .line 30
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_8

    .line 39
    .line 40
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 41
    .line 42
    iget-object v3, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 43
    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iput-object v3, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 51
    .line 52
    :cond_0
    const-string p2, "WirelessKeyboardMouseShare"

    .line 53
    .line 54
    const-string v3, "BluetoothAdapter.ACTION_STATE_CHANGED enabled, initailizing"

    .line 55
    .line 56
    invoke-static {p2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 60
    .line 61
    iget-object v4, v3, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const-string/jumbo v5, "wireless_keyboard_setting_repository"

    .line 68
    .line 69
    .line 70
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_1

    .line 79
    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string/jumbo v6, "initializing : "

    .line 85
    .line 86
    .line 87
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-static {p2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    const-string v5, "/"

    .line 101
    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    const/4 v5, 0x2

    .line 107
    aget-object v6, v4, v5

    .line 108
    .line 109
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_2

    .line 114
    .line 115
    array-length v6, v4

    .line 116
    const/4 v7, 0x3

    .line 117
    if-ge v6, v7, :cond_2

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_2
    aget-object v4, v4, v5

    .line 121
    .line 122
    const-string v5, ","

    .line 123
    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    move v5, v0

    .line 129
    :goto_0
    const/4 v6, 0x4

    .line 130
    if-ge v5, v6, :cond_7

    .line 131
    .line 132
    array-length v6, v4

    .line 133
    add-int/2addr v6, v0

    .line 134
    if-ge v5, v6, :cond_7

    .line 135
    .line 136
    add-int/lit8 v6, v5, -0x1

    .line 137
    .line 138
    aget-object v6, v4, v6

    .line 139
    .line 140
    const-string v7, ""

    .line 141
    .line 142
    if-eq v6, v7, :cond_6

    .line 143
    .line 144
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eqz v7, :cond_3

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_3
    iget-object v7, v3, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 152
    .line 153
    iget-object v8, v3, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 154
    .line 155
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    if-eqz v9, :cond_5

    .line 168
    .line 169
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    .line 174
    .line 175
    new-instance v10, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string/jumbo v11, "bonded bt device : "

    .line 178
    .line 179
    .line 180
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v11

    .line 187
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    invoke-static {p2, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v10

    .line 205
    if-eqz v10, :cond_4

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_5
    const-string/jumbo v8, "not exist bonded device : "

    .line 209
    .line 210
    .line 211
    invoke-static {v8, v6, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    move-object v9, v1

    .line 215
    :goto_1
    aput-object v9, v7, v5

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_6
    :goto_2
    iget-object v6, v3, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 219
    .line 220
    aput-object v1, v6, v5

    .line 221
    .line 222
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 223
    .line 224
    goto :goto_0

    .line 225
    :cond_7
    :goto_4
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 226
    .line 227
    invoke-virtual {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 228
    .line 229
    .line 230
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 231
    .line 232
    iput-boolean v0, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInitialized:Z

    .line 233
    .line 234
    :cond_8
    const/16 p2, 0xc

    .line 235
    .line 236
    if-ne p1, p2, :cond_9

    .line 237
    .line 238
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 239
    .line 240
    iget-boolean v1, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedToTurnOnBT:Z

    .line 241
    .line 242
    if-eqz v1, :cond_9

    .line 243
    .line 244
    iput-boolean v2, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedToTurnOnBT:Z

    .line 245
    .line 246
    iput-boolean v0, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNotiTurnOnBT:Z

    .line 247
    .line 248
    invoke-virtual {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()V

    .line 249
    .line 250
    .line 251
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 254
    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_9
    const/16 p2, 0xa

    .line 258
    .line 259
    if-ne p1, p2, :cond_b

    .line 260
    .line 261
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()V

    .line 264
    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_a
    const-string p2, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 268
    .line 269
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-eqz p1, :cond_b

    .line 274
    .line 275
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$2;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 276
    .line 277
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    .line 278
    .line 279
    iget-object p1, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 280
    .line 281
    if-eqz p1, :cond_b

    .line 282
    .line 283
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 284
    .line 285
    .line 286
    iput-object v1, p0, Lcom/android/server/input/ToastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 287
    .line 288
    :cond_b
    :goto_5
    return-void
.end method
