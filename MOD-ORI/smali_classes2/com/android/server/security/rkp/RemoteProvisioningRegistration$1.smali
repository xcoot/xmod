.class public final Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

.field public final val$callback:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;Landroid/security/rkp/IGetKeyCallback;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    .line 2
    iput-object p2, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/security/rkp/RemoteProvisioningRegistration;Landroid/security/rkp/IStoreUpgradedKeyCallback;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    iput-object p2, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Exception;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mGetKeyOperations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Landroid/security/rkp/IGetKeyCallback;

    .line 15
    .line 16
    invoke-interface {v1}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    instance-of v0, p1, Landroid/os/OperationCanceledException;

    .line 24
    .line 25
    const-string v1, "Error invoking callback on client binder"

    .line 26
    .line 27
    const-string v2, "RemoteProvisionSysSvc"

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v0, "Operation cancelled for client "

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroid/security/rkp/IGetKeyCallback;

    .line 41
    .line 42
    invoke-interface {v0}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Landroid/security/rkp/IGetKeyCallback;

    .line 65
    .line 66
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    :try_start_0
    invoke-interface {p0}, Landroid/security/rkp/IGetKeyCallback;->onCancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :catch_0
    move-exception p0

    .line 78
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :cond_0
    instance-of v0, p1, Landroid/security/rkp/service/RkpProxyException;

    .line 84
    .line 85
    const/4 v3, 0x1

    .line 86
    const-string v4, ": "

    .line 87
    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v5, "RKP error fetching key for client "

    .line 93
    .line 94
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v5, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v5, Landroid/security/rkp/IGetKeyCallback;

    .line 100
    .line 101
    invoke-interface {v5}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-interface {v5}, Landroid/os/IBinder;->hashCode()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-object v0, p1

    .line 130
    check-cast v0, Landroid/security/rkp/service/RkpProxyException;

    .line 131
    .line 132
    iget-object v4, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    :try_start_1
    iget-object v4, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v4, Landroid/security/rkp/IGetKeyCallback;

    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/security/rkp/service/RkpProxyException;->getError()I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    if-eqz p0, :cond_4

    .line 151
    .line 152
    const/4 v5, 0x2

    .line 153
    if-eq p0, v3, :cond_3

    .line 154
    .line 155
    const/4 v6, 0x3

    .line 156
    if-eq p0, v5, :cond_2

    .line 157
    .line 158
    if-eq p0, v6, :cond_1

    .line 159
    .line 160
    const-string p0, "Unexpected error code in RkpProxyException"

    .line 161
    .line 162
    invoke-static {v2, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_1
    const/4 v3, 0x5

    .line 167
    goto :goto_0

    .line 168
    :cond_2
    move v3, v6

    .line 169
    goto :goto_0

    .line 170
    :cond_3
    move v3, v5

    .line 171
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-interface {v4, v3, p0}, Landroid/security/rkp/IGetKeyCallback;->onError(BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :catch_1
    move-exception p0

    .line 180
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string v5, "Unknown error fetching key for client "

    .line 187
    .line 188
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v5, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v5, Landroid/security/rkp/IGetKeyCallback;

    .line 194
    .line 195
    invoke-interface {v5}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-interface {v5}, Landroid/os/IBinder;->hashCode()I

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    :try_start_2
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast p0, Landroid/security/rkp/IGetKeyCallback;

    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-interface {p0, v3, p1}, Landroid/security/rkp/IGetKeyCallback;->onError(BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :catch_2
    move-exception p0

    .line 241
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .line 243
    .line 244
    :goto_1
    return-void

    .line 245
    :pswitch_0
    check-cast p1, Ljava/lang/Exception;

    .line 246
    .line 247
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    .line 248
    .line 249
    iget-object v0, v0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mStoreUpgradedKeyOperations:Ljava/util/Set;

    .line 250
    .line 251
    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v1, Landroid/security/rkp/IStoreUpgradedKeyCallback;

    .line 254
    .line 255
    invoke-interface {v1}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    .line 263
    .line 264
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast p0, Landroid/security/rkp/IStoreUpgradedKeyCallback;

    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-interface {p0, p1}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->onError(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 276
    .line 277
    .line 278
    goto :goto_2

    .line 279
    :catch_3
    move-exception p0

    .line 280
    const-string p1, "RemoteProvisionSysSvc"

    .line 281
    .line 282
    const-string v0, "Error invoking callback on client binder"

    .line 283
    .line 284
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .line 286
    .line 287
    :goto_2
    return-void

    .line 288
    nop

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/security/rkp/service/RemotelyProvisionedKey;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mGetKeyOperations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Landroid/security/rkp/IGetKeyCallback;

    .line 15
    .line 16
    invoke-interface {v1}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Successfully fetched key for client "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Landroid/security/rkp/IGetKeyCallback;

    .line 33
    .line 34
    invoke-interface {v1}, Landroid/security/rkp/IGetKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Landroid/os/IBinder;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "RemoteProvisionSysSvc"

    .line 50
    .line 51
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    new-instance v0, Landroid/security/rkp/RemotelyProvisionedKey;

    .line 55
    .line 56
    invoke-direct {v0}, Landroid/security/rkp/RemotelyProvisionedKey;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/security/rkp/service/RemotelyProvisionedKey;->getKeyBlob()[B

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iput-object v2, v0, Landroid/security/rkp/RemotelyProvisionedKey;->keyBlob:[B

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/security/rkp/service/RemotelyProvisionedKey;->getEncodedCertChain()[B

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, v0, Landroid/security/rkp/RemotelyProvisionedKey;->encodedCertChain:[B

    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    :try_start_0
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p0, Landroid/security/rkp/IGetKeyCallback;

    .line 79
    .line 80
    invoke-interface {p0, v0}, Landroid/security/rkp/IGetKeyCallback;->onSuccess(Landroid/security/rkp/RemotelyProvisionedKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception p0

    .line 85
    const-string p1, "Error invoking callback on client binder"

    .line 86
    .line 87
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void

    .line 91
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    .line 94
    .line 95
    iget-object p1, p1, Lcom/android/server/security/rkp/RemoteProvisioningRegistration;->mStoreUpgradedKeyOperations:Ljava/util/Set;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Landroid/security/rkp/IStoreUpgradedKeyCallback;

    .line 100
    .line 101
    invoke-interface {v0}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->asBinder()Landroid/os/IBinder;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->this$0:Lcom/android/server/security/rkp/RemoteProvisioningRegistration;

    .line 109
    .line 110
    iget-object p0, p0, Lcom/android/server/security/rkp/RemoteProvisioningRegistration$1;->val$callback:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p0, Landroid/security/rkp/IStoreUpgradedKeyCallback;

    .line 113
    .line 114
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    :try_start_1
    invoke-interface {p0}, Landroid/security/rkp/IStoreUpgradedKeyCallback;->onSuccess()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catch_1
    move-exception p0

    .line 125
    const-string p1, "RemoteProvisionSysSvc"

    .line 126
    .line 127
    const-string v0, "Error invoking callback on client binder"

    .line 128
    .line 129
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .line 131
    .line 132
    :goto_1
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
