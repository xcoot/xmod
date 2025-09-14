.class public final Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

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
    const-string p1, "KNOX_CUSTOM"

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_7

    .line 14
    .line 15
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 16
    .line 17
    sget-object v0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getMultiWindowState()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    const/4 v0, 0x0

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 27
    .line 28
    invoke-virtual {p2, v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setMultiWindowState(Z)I

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getDeviceSpeakerEnabledStateInternal()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const/4 v1, 0x1

    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 41
    .line 42
    invoke-virtual {p2, v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setDeviceSpeakerEnabledState(Z)I

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getProKioskState()Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbMassStorageState()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_2

    .line 60
    .line 61
    iget-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 62
    .line 63
    invoke-virtual {p2, v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    .line 64
    .line 65
    .line 66
    :cond_2
    const/16 p2, 0x3e8

    .line 67
    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 71
    .line 72
    const-string/jumbo v3, "sealedStatusBarMode"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, p2, v0, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const/4 v3, 0x3

    .line 80
    if-ne v2, v3, :cond_3

    .line 81
    .line 82
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 83
    .line 84
    iget-object v3, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 85
    .line 86
    const-string v7, "KNOX_CUSTOM"

    .line 87
    .line 88
    const-string/jumbo v8, "statusBarMode"

    .line 89
    .line 90
    .line 91
    const/4 v5, 0x0

    .line 92
    const/16 v4, 0x3e8

    .line 93
    .line 94
    const/4 v6, 0x4

    .line 95
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 99
    .line 100
    iget-object v3, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 101
    .line 102
    const-string v7, "KNOX_CUSTOM"

    .line 103
    .line 104
    const-string/jumbo v8, "sealedStatusBarMode"

    .line 105
    .line 106
    .line 107
    const/4 v5, 0x0

    .line 108
    const/16 v4, 0x3e8

    .line 109
    .line 110
    const/4 v6, -0x1

    .line 111
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    :catch_0
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 115
    .line 116
    iget-object v2, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 117
    .line 118
    const-string/jumbo v3, "sealedStatusBarClockState"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, p2, v0, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_4

    .line 126
    .line 127
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 128
    .line 129
    iget-object v3, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 130
    .line 131
    const-string v7, "KNOX_CUSTOM"

    .line 132
    .line 133
    const-string/jumbo v8, "statusBarClockState"

    .line 134
    .line 135
    .line 136
    const/4 v5, 0x0

    .line 137
    const/16 v4, 0x3e8

    .line 138
    .line 139
    const/4 v6, 0x4

    .line 140
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 144
    .line 145
    iget-object v3, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 146
    .line 147
    const-string v7, "KNOX_CUSTOM"

    .line 148
    .line 149
    const-string/jumbo v8, "sealedStatusBarClockState"

    .line 150
    .line 151
    .line 152
    const/4 v5, 0x0

    .line 153
    const/16 v4, 0x3e8

    .line 154
    .line 155
    const/4 v6, -0x1

    .line 156
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    .line 158
    .line 159
    :catch_1
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 160
    .line 161
    iget-object v2, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 162
    .line 163
    const-string/jumbo v3, "sealedStatusBarIconsState"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, p2, v0, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    if-nez v2, :cond_5

    .line 171
    .line 172
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 173
    .line 174
    iget-object v3, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 175
    .line 176
    const-string v7, "KNOX_CUSTOM"

    .line 177
    .line 178
    const-string/jumbo v8, "statusBarIconsState"

    .line 179
    .line 180
    .line 181
    const/4 v5, 0x0

    .line 182
    const/16 v4, 0x3e8

    .line 183
    .line 184
    const/4 v6, 0x4

    .line 185
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 189
    .line 190
    iget-object v3, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 191
    .line 192
    const-string v7, "KNOX_CUSTOM"

    .line 193
    .line 194
    const-string/jumbo v8, "sealedStatusBarIconsState"

    .line 195
    .line 196
    .line 197
    const/4 v5, 0x0

    .line 198
    const/16 v4, 0x3e8

    .line 199
    .line 200
    const/4 v6, -0x1

    .line 201
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 202
    .line 203
    .line 204
    :catch_2
    :cond_5
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 205
    .line 206
    iget-object v2, v2, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 207
    .line 208
    const-string/jumbo v3, "sealedHardKeyIntentState"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, p2, v0, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    if-ne v2, v1, :cond_6

    .line 216
    .line 217
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 218
    .line 219
    iget-object v2, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 220
    .line 221
    const-string v6, "KNOX_CUSTOM"

    .line 222
    .line 223
    const-string v7, "hardKeyIntentMode"

    .line 224
    .line 225
    const/4 v4, 0x0

    .line 226
    const/16 v3, 0x3e8

    .line 227
    .line 228
    const/4 v5, 0x4

    .line 229
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 233
    .line 234
    iget-object v2, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 235
    .line 236
    const-string v6, "KNOX_CUSTOM"

    .line 237
    .line 238
    const-string/jumbo v7, "sealedHardKeyIntentState"

    .line 239
    .line 240
    .line 241
    const/4 v4, 0x0

    .line 242
    const/16 v3, 0x3e8

    .line 243
    .line 244
    const/4 v5, -0x1

    .line 245
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 246
    .line 247
    .line 248
    :catch_3
    :cond_6
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 249
    .line 250
    iget-object v1, v1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 251
    .line 252
    const-string v2, "adminUid"

    .line 253
    .line 254
    invoke-virtual {v1, p2, v0, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 255
    .line 256
    .line 257
    goto :goto_0

    .line 258
    :catch_4
    const-string p1, "KnoxCustomManagerService"

    .line 259
    .line 260
    const-string v0, "initializing KNOX_CUSTOM with default values"

    .line 261
    .line 262
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 266
    .line 267
    iget-object v0, p1, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 268
    .line 269
    const/4 v2, 0x0

    .line 270
    const/16 v1, 0x3e8

    .line 271
    .line 272
    const-string v4, "KNOX_CUSTOM"

    .line 273
    .line 274
    const-string v5, "adminUid"

    .line 275
    .line 276
    const/16 v3, 0x3e8

    .line 277
    .line 278
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 279
    .line 280
    .line 281
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$3;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 282
    .line 283
    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->loadHardKeyReportList(I)V

    .line 284
    .line 285
    .line 286
    :cond_7
    return-void
.end method
