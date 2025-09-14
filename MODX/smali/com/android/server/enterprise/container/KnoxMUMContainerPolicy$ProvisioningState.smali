.class public final Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public adminPackageName:Ljava/lang/String;

.field public containerId:I

.field public creatorUid:I

.field public isCLType:Z

.field public pidKnox:I

.field public pidProvision:I

.field public pwdRstToken:Ljava/lang/String;

.field public requestId:I

.field public state:I

.field public final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    .line 9
    iput p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->requestId:I

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->adminPackageName:Ljava/lang/String;

    .line 16
    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 19
    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    .line 21
    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pidProvision:I

    .line 23
    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pidKnox:I

    .line 25
    iput-boolean p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->isCLType:Z

    .line 27
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pwdRstToken:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static toString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    .line 2
    new-instance p0, Ljava/lang/String;

    const-string/jumbo v0, "null"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_2
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final notifyAdminCreationStatus(ILjava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "Exception:"

    .line 3
    new-instance v1, Landroid/content/Intent;

    .line 5
    const-string/jumbo v2, "com.samsung.knox.container.creation.status"

    .line 8
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 19
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    :cond_0
    const-string/jumbo p2, "code"

    .line 25
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    const-string/jumbo p2, "requestId"

    .line 31
    iget v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->requestId:I

    .line 33
    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    const-string/jumbo p2, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    .line 39
    iget v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 41
    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 46
    iget v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 48
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 51
    move-result-object v2

    .line 52
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 55
    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 58
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 60
    iget v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 62
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 65
    move-result-object v2

    .line 66
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 69
    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 72
    const/16 p2, -0x3f9

    .line 74
    const/4 v1, 0x1

    .line 75
    if-lez p1, :cond_1

    .line 77
    new-instance v2, Landroid/content/Intent;

    .line 79
    const-string/jumbo v3, "enterprise.container.created.nonactive"

    .line 82
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v3, "containerid"

    .line 88
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    .line 94
    iget v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 96
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 101
    new-instance v4, Landroid/os/UserHandle;

    .line 103
    iget v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 105
    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 108
    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 111
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 114
    sget-object v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 116
    new-instance v4, Landroid/os/UserHandle;

    .line 118
    iget v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 120
    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 123
    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 126
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 129
    new-instance v2, Landroid/content/Intent;

    .line 131
    const-string/jumbo v3, "enterprise.container.setup.success"

    .line 134
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v3, "containerid"

    .line 140
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 145
    new-instance v3, Landroid/os/UserHandle;

    .line 147
    iget v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 149
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 152
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 155
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 158
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 160
    new-instance v3, Landroid/os/UserHandle;

    .line 162
    iget v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 164
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 167
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 170
    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 173
    goto :goto_0

    .line 174
    :cond_1
    if-ne p1, p2, :cond_2

    .line 176
    new-instance p1, Landroid/content/Intent;

    .line 178
    const-string/jumbo v2, "enterprise.container.cancelled"

    .line 181
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    const-string/jumbo v2, "containerid"

    .line 187
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string/jumbo v2, "requestid"

    .line 193
    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->requestId:I

    .line 195
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 200
    new-instance v3, Landroid/os/UserHandle;

    .line 202
    iget v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 204
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 207
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 210
    invoke-virtual {v2, p1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 213
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 215
    new-instance v3, Landroid/os/UserHandle;

    .line 217
    iget v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 219
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 222
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 225
    invoke-virtual {v2, p1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 228
    goto :goto_0

    .line 229
    :cond_2
    new-instance p1, Landroid/content/Intent;

    .line 231
    const-string/jumbo v2, "enterprise.container.setup.failure"

    .line 234
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 239
    new-instance v3, Landroid/os/UserHandle;

    .line 241
    iget v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 243
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 246
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 249
    invoke-virtual {v2, p1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 252
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 254
    new-instance v3, Landroid/os/UserHandle;

    .line 256
    iget v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 258
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 261
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 264
    invoke-virtual {v2, p1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 267
    :goto_0
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallbackLock:Ljava/lang/Object;

    .line 269
    monitor-enter p1

    .line 270
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    .line 272
    if-eqz v2, :cond_5

    .line 274
    const-string v2, "KnoxMUMContainerPolicy"

    .line 276
    const-string/jumbo v3, "create callback found, updating callback.."

    .line 279
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v2, Landroid/os/Bundle;

    .line 284
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 287
    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    .line 289
    if-lez v3, :cond_3

    .line 291
    const-string/jumbo p0, "containerid"

    .line 294
    invoke-virtual {v2, p0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 297
    const/16 p0, 0x3e9

    .line 299
    goto :goto_1

    .line 300
    :catchall_0
    move-exception p0

    .line 301
    goto :goto_3

    .line 302
    :cond_3
    if-ne v3, p2, :cond_4

    .line 304
    const-string/jumbo p2, "containerid"

    .line 307
    invoke-virtual {v2, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    const-string/jumbo p2, "requestid"

    .line 313
    iget p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->requestId:I

    .line 315
    invoke-virtual {v2, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    const/16 p0, 0x3f8

    .line 320
    goto :goto_1

    .line 321
    :cond_4
    const-string/jumbo p0, "containerid"

    .line 324
    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    const/16 p0, 0x3ea

    .line 329
    :goto_1
    :try_start_1
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    .line 331
    invoke-interface {p2, p0, v2}, Lcom/samsung/android/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    goto :goto_2

    .line 335
    :catch_0
    move-exception p0

    .line 336
    :try_start_2
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 338
    const-string p2, "KnoxMUMContainerPolicy"

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    .line 342
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 348
    move-result-object p0

    .line 349
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    move-result-object p0

    .line 356
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_2
    const/4 p0, 0x0

    .line 360
    sput-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/samsung/android/knox/IEnterpriseContainerCallback;

    .line 362
    :cond_5
    monitor-exit p1

    .line 363
    return-void

    .line 364
    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    throw p0
.end method

.method public final start(Landroid/os/Bundle;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    const-string v1, "Provisioning started... "

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "KnoxMUMContainerPolicy"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const-string/jumbo v0, "type"

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "requestId"

    .line 39
    const/4 v3, -0x1

    .line 40
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->requestId:I

    .line 46
    const-string/jumbo v0, "pidProvision"

    .line 49
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 52
    move-result v0

    .line 53
    iput v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pidProvision:I

    .line 55
    const-string v0, "adminPackageName"

    .line 57
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->adminPackageName:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "isCLType"

    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 70
    move-result v0

    .line 71
    iput-boolean v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->isCLType:Z

    .line 73
    const-string/jumbo v0, "pwdRstToken"

    .line 76
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pwdRstToken:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "creatorUid"

    .line 85
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 88
    move-result p1

    .line 89
    iput p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 91
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    .line 93
    if-nez p1, :cond_0

    .line 95
    const-string/jumbo p0, "tyep not specified, provisioning fails"

    .line 98
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v4

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->adminPackageName:Ljava/lang/String;

    .line 104
    if-nez p0, :cond_1

    .line 106
    const-string p0, "admin not specified, provisioning fails"

    .line 108
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return v4

    .line 112
    :cond_1
    const/4 p0, 0x1

    .line 113
    return p0
.end method

.method public final startProvisioningObserver()Z
    .locals 4

    .line 1
    const-string v0, "KnoxMUMContainerPolicy"

    .line 3
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 5
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    .line 7
    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    .line 11
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    .line 14
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 20
    move-result-object v2

    .line 21
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    .line 23
    invoke-interface {v2, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 26
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 28
    const-string p0, "Process kill observer registered."

    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :goto_0
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    const-string v3, "RemoteException :("

    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v1

    .line 63
    :goto_1
    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    const-string v3, "NullPointerException :("

    .line 69
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v1
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 8
    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    const-string/jumbo v2, "state"

    .line 14
    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    .line 16
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    const-string/jumbo v2, "requestId"

    .line 22
    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->requestId:I

    .line 24
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    const-string/jumbo v2, "type"

    .line 30
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v2, "adminPackageName"

    .line 37
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->adminPackageName:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v2, "creatorUid"

    .line 45
    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 47
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string/jumbo v2, "containerId"

    .line 53
    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    .line 55
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-string/jumbo v2, "pidProvision"

    .line 61
    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pidProvision:I

    .line 63
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string/jumbo v2, "pidKnox"

    .line 69
    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pidKnox:I

    .line 71
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string/jumbo v2, "isCLType"

    .line 77
    iget-boolean v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->isCLType:Z

    .line 79
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    const-string/jumbo v2, "pwdRstToken"

    .line 85
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pwdRstToken:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    monitor-exit v1

    .line 91
    return-object v0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroid/os/Bundle;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 3
    const-string v0, "KnoxMUMContainerPolicy"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    const-string v2, "ProvisioningState.update():"

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toBundle()Landroid/os/Bundle;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v0, "KnoxMUMContainerPolicy"

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "ProvisioningState.update(): appying:"

    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 55
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mProvisioningLock:Ljava/lang/Object;

    .line 57
    monitor-enter v0

    .line 58
    :try_start_0
    const-string/jumbo v1, "state"

    .line 61
    const/4 v2, -0x1

    .line 62
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 65
    move-result v1

    .line 66
    const/4 v3, 0x2

    .line 67
    const/4 v4, 0x0

    .line 68
    if-eq v1, v3, :cond_4

    .line 70
    const/16 v3, -0x3f6

    .line 72
    const/4 v5, 0x3

    .line 73
    if-eq v1, v5, :cond_0

    .line 75
    packed-switch v1, :pswitch_data_0

    .line 78
    goto/16 :goto_0

    .line 80
    :pswitch_0
    const-string p1, "KnoxMUMContainerPolicy"

    .line 82
    const-string/jumbo v1, "cancelled"

    .line 85
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/16 p1, 0xc

    .line 90
    iput p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    .line 92
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 94
    const/16 p1, -0x3f9

    .line 96
    invoke-static {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mprovisioningFinished(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V

    .line 99
    goto/16 :goto_0

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto/16 :goto_1

    .line 104
    :pswitch_1
    const-string p1, "KnoxMUMContainerPolicy"

    .line 106
    const-string/jumbo v1, "failed"

    .line 109
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/16 p1, 0xb

    .line 114
    iput p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    .line 116
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 118
    invoke-static {p0, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mprovisioningFinished(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V

    .line 121
    goto/16 :goto_0

    .line 123
    :pswitch_2
    const-string p1, "KnoxMUMContainerPolicy"

    .line 125
    const-string/jumbo v1, "finished"

    .line 128
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/16 p1, 0xa

    .line 133
    iput p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    .line 135
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 137
    iget p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    .line 139
    invoke-static {p1, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mprovisioningFinished(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V

    .line 142
    goto/16 :goto_0

    .line 144
    :cond_0
    const-string v1, "KnoxMUMContainerPolicy"

    .line 146
    const-string v6, "KnoxCore extension service started"

    .line 148
    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput v5, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    .line 153
    const-string/jumbo v1, "containerId"

    .line 156
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 159
    move-result v1

    .line 160
    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    .line 162
    const-string/jumbo v1, "pidKnox"

    .line 165
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 168
    move-result v1

    .line 169
    iput v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->pidKnox:I

    .line 171
    iget v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->containerId:I

    .line 173
    if-gez v1, :cond_1

    .line 175
    const-string p0, "KnoxMUMContainerPolicy"

    .line 177
    const-string/jumbo p1, "container id is not provided"

    .line 180
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    monitor-exit v0

    .line 184
    return v4

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    .line 187
    if-nez v1, :cond_6

    .line 189
    const-string/jumbo v1, "type"

    .line 192
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_3

    .line 198
    const-string/jumbo v1, "type"

    .line 201
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    move-result-object v1

    .line 205
    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->type:Ljava/lang/String;

    .line 207
    const-string/jumbo v1, "creatorUid"

    .line 210
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_2

    .line 216
    const-string/jumbo v1, "creatorUid"

    .line 219
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 222
    move-result p1

    .line 223
    iput p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->creatorUid:I

    .line 225
    goto :goto_0

    .line 226
    :cond_2
    const-string p0, "KnoxMUMContainerPolicy"

    .line 228
    const-string/jumbo p1, "creatorUid not provided"

    .line 231
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    monitor-exit v0

    .line 235
    return v4

    .line 236
    :cond_3
    const-string p0, "KnoxMUMContainerPolicy"

    .line 238
    const-string/jumbo p1, "type not provided"

    .line 241
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    monitor-exit v0

    .line 245
    return v4

    .line 246
    :cond_4
    iput v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->state:I

    .line 248
    const-string p1, "KnoxMUMContainerPolicy"

    .line 250
    const-string v1, "ManagedProvisioning service started"

    .line 252
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 258
    move-result-wide v1

    .line 259
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->startProvisioningObserver()Z

    .line 262
    move-result p0

    .line 263
    if-nez p0, :cond_5

    .line 265
    const-string p0, "KnoxMUMContainerPolicy"

    .line 267
    const-string/jumbo p1, "failed to start provisioning"

    .line 270
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    monitor-exit v0

    .line 277
    return v4

    .line 278
    :cond_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 281
    :cond_6
    :goto_0
    monitor-exit v0

    .line 282
    const/4 p0, 0x1

    .line 283
    return p0

    .line 284
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    throw p0

    .line 286
    nop

    .line 287
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
