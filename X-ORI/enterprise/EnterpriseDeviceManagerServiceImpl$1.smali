.class public final Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

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
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "EnterpriseDeviceManagerService"

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string p0, "action is null!"

    .line 10
    .line 11
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_5

    .line 22
    .line 23
    const-string p1, "android.intent.extra.user_handle"

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 p2, 0x1

    .line 31
    if-ge p1, p2, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 35
    .line 36
    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    const-string/jumbo v2, "userID"

    .line 42
    .line 43
    .line 44
    filled-new-array {v2}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    filled-new-array {v3}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object p2, p2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 57
    .line 58
    const-string/jumbo v4, "generic"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v4, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 65
    .line 66
    iget-object p2, p2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    iget-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 78
    .line 79
    iget-object p2, p2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_2
    const-string p1, "ACTION_USER_REMOVED removing pseudo admin since associated profile is getting removed."

    .line 93
    .line 94
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 98
    .line 99
    iget p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 100
    .line 101
    if-eq p1, v1, :cond_3

    .line 102
    .line 103
    :goto_0
    move v4, p1

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    new-instance p2, Landroid/content/ContentValues;

    .line 111
    .line 112
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .line 114
    .line 115
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 116
    .line 117
    const-string/jumbo v3, "isPseudoAdmin"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 121
    .line 122
    .line 123
    const-string v2, "ADMIN_INFO"

    .line 124
    .line 125
    const-string v3, "adminUid"

    .line 126
    .line 127
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    goto :goto_0

    .line 132
    :goto_1
    iput v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 133
    .line 134
    if-ne v4, v1, :cond_4

    .line 135
    .line 136
    goto/16 :goto_3

    .line 137
    .line 138
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 139
    .line 140
    const-string v3, "ADMIN_INFO"

    .line 141
    .line 142
    const-string/jumbo v7, "canRemove"

    .line 143
    .line 144
    .line 145
    const/4 v6, 0x0

    .line 146
    const/4 v5, 0x1

    .line 147
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catch_0
    move-exception p1

    .line 152
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    .line 154
    .line 155
    :goto_2
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 156
    .line 157
    iget p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeAdminFromDatabase(I)V

    .line 160
    .line 161
    .line 162
    iput v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPseudoAdminUid:I

    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 165
    .line 166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :catch_1
    move-exception p0

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string/jumbo p2, "removePseudoAdmin exception "

    .line 178
    .line 179
    .line 180
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-static {p0, p1, v0}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_5
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 188
    .line 189
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_7

    .line 194
    .line 195
    const-string/jumbo p1, "networkInfo"

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Landroid/net/NetworkInfo;

    .line 203
    .line 204
    if-nez p1, :cond_6

    .line 205
    .line 206
    const-string/jumbo p0, "networkInfo is null"

    .line 207
    .line 208
    .line 209
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_6
    const-string/jumbo v0, "noConnectivity"

    .line 214
    .line 215
    .line 216
    const/4 v1, 0x0

    .line 217
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    if-nez p2, :cond_9

    .line 222
    .line 223
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-eqz p1, :cond_9

    .line 228
    .line 229
    const-string/jumbo p1, "com.samsung.android.knox.intent.action.KES_TRIGGER"

    .line 230
    .line 231
    .line 232
    const-string/jumbo p2, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 233
    .line 234
    .line 235
    invoke-static {p1, p2}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 240
    .line 241
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 242
    .line 243
    sget-object p2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 244
    .line 245
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_7
    const-string p2, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 250
    .line 251
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    if-nez p2, :cond_8

    .line 256
    .line 257
    const-string p2, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 258
    .line 259
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-eqz p1, :cond_9

    .line 264
    .line 265
    :cond_8
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 266
    .line 267
    sget-object p2, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->EXCLUDED_ADMINS:Ljava/util/List;

    .line 268
    .line 269
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->isDeviceOwnedByOrganization()Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-eqz p1, :cond_9

    .line 274
    .line 275
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 276
    .line 277
    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->startDeferredServicesIfNeeded()V

    .line 278
    .line 279
    .line 280
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 281
    .line 282
    iget-object p1, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 283
    .line 284
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 285
    .line 286
    .line 287
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->registerBroadcastReceiver()V

    .line 290
    .line 291
    .line 292
    :cond_9
    :goto_3
    return-void
.end method
