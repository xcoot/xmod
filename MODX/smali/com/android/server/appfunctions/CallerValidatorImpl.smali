.class public final Lcom/android/server/appfunctions/CallerValidatorImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/appfunctions/CallerValidator;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Landroid/content/Context;

    .line 10
    iput-object p1, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public final handleIncomingUser(IILandroid/os/UserHandle;Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    return-object p3

    .line 12
    :cond_0
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 15
    move-result v0

    .line 16
    if-ltz v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    .line 20
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 22
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p4, p1, p3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object p3

    .line 35
    :catch_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 37
    const-string p1, "Package: "

    .line 39
    const-string p2, " haven\'t installed for user "

    .line 41
    invoke-static {p1, p4, p2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 48
    move-result p2

    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    const-string p4, "Permission denied while calling from uid "

    .line 66
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string p2, " with "

    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const-string p2, "; Requires permission: android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p0

    .line 93
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    const-string p2, "Call does not support special user "

    .line 99
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    throw p0
.end method

.method public final isUserOrganizationManaged(Landroid/os/UserHandle;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    .line 3
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 17
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    .line 27
    const-class v0, Landroid/os/UserManager;

    .line 29
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroid/os/UserManager;

    .line 35
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-object v0, p0

    .line 39
    check-cast v0, Landroid/os/UserManager;

    .line 41
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 44
    move-result p1

    .line 45
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 12
    move-result-object v3

    .line 13
    iget-object p0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 27
    move-result p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    const/4 p0, -0x1

    .line 30
    :goto_0
    if-ne p0, v0, :cond_0

    .line 32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    return-object p1

    .line 36
    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 38
    const-string v3, "Specified calling package ["

    .line 40
    const-string v4, "] does not match the calling uid "

    .line 42
    invoke-static {v0, v3, p1, v4}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    throw p0
.end method

.method public final verifyCallerCanExecuteAppFunction(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)Lcom/android/internal/infra/AndroidFuture;
    .locals 7

    .line 1
    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    .line 16
    const-string v1, "android.permission.EXECUTE_APP_FUNCTIONS_TRUSTED"

    .line 18
    invoke-virtual {v0, v1, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_6

    .line 24
    const-string/jumbo v0, "packageName : "

    .line 27
    invoke-virtual {p7, p4}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->isSystemAppOrPrivilegedApp(Ljava/lang/String;)Z

    .line 30
    move-result v1

    .line 31
    iget-object v2, p7, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mLock:Ljava/lang/Object;

    .line 33
    monitor-enter v2

    .line 34
    const/4 v3, 0x1

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v1, :cond_1

    .line 38
    :try_start_0
    iget-object v1, p7, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->appliedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 40
    iget-object v1, v1, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->trustedAgentList:Ljava/util/List;

    .line 42
    check-cast v1, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 50
    move v1, v3

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto/16 :goto_4

    .line 55
    :cond_1
    move v1, v4

    .line 56
    :goto_0
    const-string v5, "AppFunctionAgentPolicyManager"

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v0, " / isTrustedAgentPackage : "

    .line 68
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v0

    .line 78
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    if-eqz v1, :cond_2

    .line 84
    goto/16 :goto_5

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    .line 88
    const-string v1, "android.permission.EXECUTE_APP_FUNCTIONS"

    .line 90
    invoke-virtual {v0, v1, p2, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_5

    .line 96
    const-string/jumbo p1, "packageName : "

    .line 99
    invoke-virtual {p7, p4}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->isSystemAppOrPrivilegedApp(Ljava/lang/String;)Z

    .line 102
    move-result p2

    .line 103
    iget-object v0, p7, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->mLock:Ljava/lang/Object;

    .line 105
    monitor-enter v0

    .line 106
    if-eqz p2, :cond_3

    .line 108
    :try_start_1
    iget-object p2, p7, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->appliedAgentPolicyInfo:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;

    .line 110
    iget-object p2, p2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager$AgentPolicyInfo;->normalAgentList:Ljava/util/List;

    .line 112
    check-cast p2, Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_3

    .line 120
    goto :goto_1

    .line 121
    :catchall_1
    move-exception p0

    .line 122
    goto :goto_2

    .line 123
    :cond_3
    move v3, v4

    .line 124
    :goto_1
    const-string p2, "AppFunctionAgentPolicyManager"

    .line 126
    new-instance p7, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {p7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string p1, " / isAgentPackage : "

    .line 136
    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    if-eqz v3, :cond_4

    .line 152
    goto :goto_3

    .line 153
    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 155
    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    .line 158
    move-result-object p0

    .line 159
    return-object p0

    .line 160
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    throw p0

    .line 162
    :cond_5
    :goto_3
    new-instance p1, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    .line 164
    iget-object p0, p0, Lcom/android/server/appfunctions/CallerValidatorImpl;->mContext:Landroid/content/Context;

    .line 166
    invoke-virtual {p0, p3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 169
    move-result-object p0

    .line 170
    const-class p2, Landroid/app/appsearch/AppSearchManager;

    .line 172
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 175
    move-result-object p0

    .line 176
    check-cast p0, Landroid/app/appsearch/AppSearchManager;

    .line 178
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object p2, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 183
    new-instance p3, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    .line 185
    const-string p4, "apps-db"

    .line 187
    invoke-direct {p3, p4}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p3}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    .line 193
    move-result-object p3

    .line 194
    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V

    .line 197
    invoke-static {p5, p6}, Landroid/app/appfunctions/AppFunctionStaticMetadataHelper;->getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    move-result-object p0

    .line 201
    new-instance p2, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    .line 203
    const-string p3, "app_functions"

    .line 205
    invoke-direct {p2, p3}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 208
    filled-new-array {p0}, [Ljava/lang/String;

    .line 211
    move-result-object p3

    .line 212
    invoke-virtual {p2, p3}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    .line 215
    move-result-object p2

    .line 216
    invoke-virtual {p2}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/GetByDocumentIdRequest;

    .line 219
    move-result-object p2

    .line 220
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    .line 226
    move-result-object p3

    .line 227
    new-instance p4, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;

    .line 229
    const/4 p5, 0x4

    .line 230
    invoke-direct {p4, p1, p2, p5}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Ljava/lang/Object;I)V

    .line 233
    invoke-virtual {p3, p4}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 236
    move-result-object p2

    .line 237
    new-instance p3, Lcom/android/server/appfunctions/CallerValidatorImpl$$ExternalSyntheticLambda0;

    .line 239
    invoke-direct {p3, p0}, Lcom/android/server/appfunctions/CallerValidatorImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2, p3}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 245
    move-result-object p0

    .line 246
    new-instance p2, Lcom/android/server/appfunctions/CallerValidatorImpl$$ExternalSyntheticLambda1;

    .line 248
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 251
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 254
    move-result-object p0

    .line 255
    new-instance p2, Lcom/android/server/appfunctions/CallerValidatorImpl$$ExternalSyntheticLambda2;

    .line 257
    invoke-direct {p2, p1}, Lcom/android/server/appfunctions/CallerValidatorImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;)V

    .line 260
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 263
    move-result-object p0

    .line 264
    return-object p0

    .line 265
    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    throw p0

    .line 267
    :cond_6
    :goto_5
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 269
    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    .line 272
    move-result-object p0

    .line 273
    return-object p0
.end method

.method public final verifyTargetUserHandle(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v1

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v2

    .line 13
    :try_start_0
    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/android/server/appfunctions/CallerValidatorImpl;->handleIncomingUser(IILandroid/os/UserHandle;Ljava/lang/String;)Landroid/os/UserHandle;

    .line 16
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    throw p0
.end method
