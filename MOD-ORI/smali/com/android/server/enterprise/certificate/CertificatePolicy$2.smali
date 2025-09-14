.class public final Lcom/android/server/enterprise/certificate/CertificatePolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

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
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_4

    .line 11
    .line 12
    const-string v0, "android.intent.extra.user_handle"

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    if-eqz p2, :cond_4

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter p1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->cleanUid(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->cleanUid(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    .line 47
    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v0, Ljava/util/HashSet;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    const/4 v0, 0x4

    .line 61
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 68
    .line 69
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/certificate/CertificateCache;->removeUserFromCache(I)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 73
    .line 74
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/certificate/CertificateCache;->removeUserFromCache(I)V

    .line 75
    .line 76
    .line 77
    monitor-exit p1

    .line 78
    goto :goto_2

    .line 79
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0

    .line 81
    :cond_1
    const-string v0, "android.intent.action.USER_ADDED"

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPersonaManagerAdapter$2()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_4

    .line 108
    .line 109
    const-string p1, "CertificatePolicy"

    .line 110
    .line 111
    const-string p2, "Reloading cache for new user"

    .line 112
    .line 113
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 117
    .line 118
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->initCache(I)V

    .line 119
    .line 120
    .line 121
    const/4 p1, 0x1

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->initCache(I)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    const-string v0, "android.intent.action.DEVICE_LOCKED_CHANGED"

    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_3

    .line 133
    .line 134
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_4

    .line 141
    .line 142
    :cond_3
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 143
    .line 144
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyUserKeystoreUnlocked(I)V

    .line 145
    .line 146
    .line 147
    :cond_4
    :goto_2
    return-void

    .line 148
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    const-string p2, "CertificatePolicy"

    .line 153
    .line 154
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    if-eqz p1, :cond_6

    .line 158
    .line 159
    const-string p2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 160
    .line 161
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    if-nez p2, :cond_5

    .line 166
    .line 167
    const-string/jumbo p2, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_6

    .line 175
    .line 176
    :cond_5
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 177
    .line 178
    const/4 p2, 0x1

    .line 179
    iput-boolean p2, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    .line 180
    .line 181
    iget-object v0, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 182
    .line 183
    iget-object p1, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    .line 184
    .line 185
    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 189
    .line 190
    const/4 v0, 0x0

    .line 191
    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->initCache(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->initCache(I)V

    .line 195
    .line 196
    .line 197
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 198
    .line 199
    const/4 p1, 0x3

    .line 200
    const/4 p2, -0x1

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    .line 202
    .line 203
    .line 204
    :cond_6
    return-void

    .line 205
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    if-eqz p1, :cond_7

    .line 215
    .line 216
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    goto :goto_3

    .line 221
    :cond_7
    const/4 p1, 0x0

    .line 222
    :goto_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    const-string/jumbo v1, "isMarketInstallation"

    .line 227
    .line 228
    .line 229
    const/4 v2, 0x0

    .line 230
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 231
    .line 232
    .line 233
    move-result p2

    .line 234
    if-eqz p1, :cond_8

    .line 235
    .line 236
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-lez v1, :cond_8

    .line 245
    .line 246
    if-eqz v0, :cond_8

    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-lez v1, :cond_8

    .line 257
    .line 258
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_8

    .line 265
    .line 266
    if-eqz p2, :cond_8

    .line 267
    .line 268
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 269
    .line 270
    invoke-static {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$mdisplayAppSignature(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :catch_0
    move-exception p0

    .line 275
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    .line 277
    .line 278
    :cond_8
    :goto_4
    return-void

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
