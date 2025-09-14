.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$2:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;II)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/String;

    .line 10
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$2:I

    .line 12
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 14
    invoke-static {v1, v0, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationAsUser(Ljava/lang/String;Landroid/content/Context;I)V

    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 20
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/String;

    .line 22
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$2:I

    .line 24
    invoke-virtual {v0, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforcePackageIsSystemPackage(ILjava/lang/String;)V

    .line 27
    return-void

    .line 28
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 30
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/String;

    .line 32
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$2:I

    .line 34
    invoke-virtual {v0, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforcePackageIsSystemPackage(ILjava/lang/String;)V

    .line 37
    return-void

    .line 38
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 40
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/String;

    .line 42
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$2:I

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    new-instance v8, Ljava/util/concurrent/CompletableFuture;

    .line 49
    invoke-direct {v8}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 52
    new-instance v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda220;

    .line 54
    invoke-direct {v7, v8, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda220;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V

    .line 57
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 59
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 62
    move-result-object v5

    .line 63
    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 65
    const-string v2, "android.app.role.DIALER"

    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-virtual/range {v1 .. v7}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 71
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 73
    const-wide/16 v0, 0x14

    .line 75
    invoke-virtual {v8, v0, v1, p0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 79
    :catch_0
    move-exception p0

    .line 80
    goto :goto_0

    .line 81
    :catch_1
    move-exception p0

    .line 82
    goto :goto_1

    .line 83
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    .line 86
    move-result-object p0

    .line 87
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    .line 89
    if-eqz v0, :cond_0

    .line 91
    check-cast p0, Ljava/lang/IllegalArgumentException;

    .line 93
    throw p0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 96
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 99
    throw v0

    .line 100
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 102
    const-string v1, "Timeout when setting the app as the dialer"

    .line 104
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    throw v0

    .line 108
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 110
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$2:I

    .line 112
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/String;

    .line 114
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 116
    invoke-static {v2, v1}, Landroid/net/ConnectivitySettingsManager;->setPrivateDnsMode(Landroid/content/Context;I)V

    .line 119
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {v0, p0}, Landroid/net/ConnectivitySettingsManager;->setPrivateDnsHostname(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    return-void

    .line 125
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 127
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/String;

    .line 129
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$2:I

    .line 131
    invoke-virtual {v0, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforcePackageIsSystemPackage(ILjava/lang/String;)V

    .line 134
    return-void

    .line 135
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 137
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/String;

    .line 139
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$2:I

    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    const-string v2, "DevicePolicyManager"

    .line 146
    const-string v3, "Non-existent VPN package: "

    .line 148
    :try_start_1
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 150
    const-wide/16 v5, 0x0

    .line 152
    invoke-interface {v4, v1, v5, v6, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 155
    move-result-object p0

    .line 156
    if-nez p0, :cond_1

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object p0

    .line 170
    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    goto :goto_3

    .line 174
    :catch_2
    move-exception p0

    .line 175
    goto :goto_2

    .line 176
    :cond_1
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 178
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    .line 181
    move-result-object v0

    .line 182
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 184
    const/4 v3, 0x3

    .line 185
    const/16 v4, 0x2f

    .line 187
    invoke-virtual {v0, v4, p0, v1, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 190
    goto :goto_3

    .line 191
    :goto_2
    const-string v0, "Can\'t talk to package managed"

    .line 193
    invoke-static {v2, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    :goto_3
    return-void

    .line 197
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 199
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$1:Ljava/lang/String;

    .line 201
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda21;->f$2:I

    .line 203
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    :try_start_2
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 208
    invoke-interface {v1, v7, p0}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    .line 211
    move-result v1

    .line 212
    if-nez v1, :cond_2

    .line 214
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 216
    const/high16 v4, 0x400000

    .line 218
    const/4 v5, 0x1

    .line 219
    const/4 v6, 0x0

    .line 220
    move-object v2, v7

    .line 221
    move v3, p0

    .line 222
    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 225
    goto :goto_4

    .line 226
    :catch_3
    move-exception v0

    .line 227
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    move-result-object p0

    .line 231
    filled-new-array {v7, p0}, [Ljava/lang/Object;

    .line 234
    move-result-object p0

    .line 235
    const-string v1, "DevicePolicyManager"

    .line 237
    const-string v2, "Failed to install admin package %s for user %d"

    .line 239
    invoke-static {v1, v0, v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :cond_2
    :goto_4
    return-void

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
