.class public final Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    iget p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "UcmService"

    .line 7
    .line 8
    const-string/jumbo v0, "mOnNotiRemoveBroadcastReceiver "

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const-string p1, "CS_NAME"

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "USER_ID"

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const-string p0, "USER_ID"

    .line 33
    .line 34
    const-string v0, "CS_NAME"

    .line 35
    .line 36
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 37
    .line 38
    const-string v2, "com.samsung.android.knox.intent.action.ACTION_ENFORCE_LOCKTYPE"

    .line 39
    .line 40
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    const/high16 v3, 0xc000000

    .line 51
    .line 52
    invoke-static {v2, p2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 53
    .line 54
    .line 55
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    const-string v4, ""

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    :try_start_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-nez v5, :cond_0

    .line 65
    .line 66
    const-string v5, ":"

    .line 67
    .line 68
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const/4 v6, -0x1

    .line 73
    if-eq v5, v6, :cond_0

    .line 74
    .line 75
    add-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    goto :goto_1

    .line 88
    :cond_0
    :goto_0
    new-instance v5, Landroid/content/Intent;

    .line 89
    .line 90
    const-string v6, "com.samsung.android.knox.intent.action.ACTION_REMOVE_NOTIFICATION"

    .line 91
    .line 92
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    invoke-static {v2, p2, v5, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    new-instance p1, Landroid/app/Notification$Builder;

    .line 106
    .line 107
    const-string p2, "UCM_KEYGUARD_NOTIFICATION"

    .line 108
    .line 109
    invoke-direct {p1, v2, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const p1, 0x1080027

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 128
    .line 129
    .line 130
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string p2, "The exception occurs "

    .line 134
    .line 135
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string p2, "UcmService"

    .line 139
    .line 140
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v0, "inside mRefreshReceiver onReceive : "

    .line 151
    .line 152
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    const-string v0, "UcmService"

    .line 163
    .line 164
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 168
    .line 169
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    const/4 v1, 0x0

    .line 174
    const/4 v2, 0x1

    .line 175
    if-nez p2, :cond_5

    .line 176
    .line 177
    const-string p2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 178
    .line 179
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-nez p1, :cond_4

    .line 184
    .line 185
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_2

    .line 195
    .line 196
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 197
    .line 198
    iget-boolean p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    .line 199
    .line 200
    if-eqz p1, :cond_1

    .line 201
    .line 202
    const-string p0, "Already UPSM is enabled nothing to do"

    .line 203
    .line 204
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    .line 209
    .line 210
    const-string p0, "Already UPSM disabled -> enabled"

    .line 211
    .line 212
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_2
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 217
    .line 218
    iget-boolean p1, p1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mEmergencyEnabled:Z

    .line 219
    .line 220
    if-nez p1, :cond_3

    .line 221
    .line 222
    :goto_2
    return-void

    .line 223
    :cond_3
    const-string p1, "Already UPSM enabled -> disabled"

    .line 224
    .line 225
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 229
    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    throw v1

    .line 234
    :cond_4
    const-string/jumbo p1, "onReceive : ACTION_LOCKED_BOOT_COMPLETED"

    .line 235
    .line 236
    .line 237
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 241
    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    throw v1

    .line 246
    :cond_5
    const-string/jumbo p1, "onReceive : ACTION_BOOT_COMPLETED"

    .line 247
    .line 248
    .line 249
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    :try_start_2
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 253
    .line 254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    const/4 p1, 0x0

    .line 258
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 259
    .line 260
    .line 261
    goto :goto_3

    .line 262
    :catch_1
    move-exception p1

    .line 263
    new-instance p2, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string v2, "The exception occurs "

    .line 266
    .line 267
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :goto_3
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 274
    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    throw v1

    .line 279
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    const-string/jumbo v0, "onReceive "

    .line 282
    .line 283
    .line 284
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    const-string v0, "UcmService"

    .line 299
    .line 300
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    const-string p1, "android.intent.extra.UID"

    .line 304
    .line 305
    const/4 v1, -0x1

    .line 306
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    if-ne p1, v1, :cond_6

    .line 311
    .line 312
    return-void

    .line 313
    :cond_6
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 314
    .line 315
    .line 316
    move-result p2

    .line 317
    const-string v1, "Package update in userId-"

    .line 318
    .line 319
    const-string v2, " and uid-"

    .line 320
    .line 321
    invoke-static {p2, p1, v1, v2, v0}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$4;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 325
    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    const/4 p0, 0x0

    .line 330
    throw p0

    .line 331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
