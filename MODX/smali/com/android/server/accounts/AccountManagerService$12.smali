.class public final Lcom/android/server/accounts/AccountManagerService$12;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final val$account:Landroid/accounts/Account;

.field public final val$options:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 12

    move-object v10, p0

    move-object/from16 v11, p4

    const/4 v0, 0x1

    iput v0, v10, Lcom/android/server/accounts/AccountManagerService$12;->$r8$classId:I

    .line 1
    iget-object v4, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2
    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    move-object/from16 v0, p5

    .line 3
    iput-object v0, v10, Lcom/android/server/accounts/AccountManagerService$12;->val$options:Ljava/lang/Object;

    .line 4
    iput-object v11, v10, Lcom/android/server/accounts/AccountManagerService$12;->val$account:Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 10

    move-object v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/accounts/AccountManagerService$12;->$r8$classId:I

    move-object/from16 v1, p7

    .line 5
    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$12;->val$account:Landroid/accounts/Account;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$12;->val$options:Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$12;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    .line 9
    return-void

    .line 10
    :pswitch_0
    const-string/jumbo v0, "booleanResult"

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {p1, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 17
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_2

    .line 23
    const/4 v1, 0x2

    .line 24
    const-string v2, "AccountManagerService"

    .line 26
    if-nez p1, :cond_0

    .line 28
    :try_start_0
    const-string/jumbo p1, "null bundle"

    .line 31
    const/4 v0, 0x5

    .line 32
    invoke-interface {p0, v0, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-class v4, Lcom/android/server/accounts/AccountManagerService$12;

    .line 51
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v4, " calling onResult() on response "

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    .line 75
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 82
    move-result p1

    .line 83
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    invoke-interface {p0, v3}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_1

    .line 90
    :goto_0
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_2

    .line 96
    const-string/jumbo p1, "failure while notifying response"

    .line 99
    invoke-static {v2, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :cond_2
    :goto_1
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$12;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 8
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$12;->val$account:Landroid/accounts/Account;

    .line 10
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$12;->val$options:Ljava/lang/Object;

    .line 12
    check-cast v2, [Ljava/lang/String;

    .line 14
    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const/4 v0, 0x1

    .line 19
    const-string/jumbo v1, "remote exception"

    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 25
    :goto_0
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 28
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$12;->val$account:Landroid/accounts/Account;

    .line 30
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$12;->val$options:Ljava/lang/Object;

    .line 32
    check-cast v2, Landroid/os/Bundle;

    .line 34
    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->confirmCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toDebugString(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$12;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string p1, ", hasFeatures, "

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$12;->val$account:Landroid/accounts/Account;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string p1, ", "

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$12;->val$options:Ljava/lang/Object;

    .line 35
    check-cast p0, [Ljava/lang/String;

    .line 37
    if-eqz p0, :cond_0

    .line 39
    const-string p1, ","

    .line 41
    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p0, 0x0

    .line 47
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string p1, ", confirmCredentials, "

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$12;->val$account:Landroid/accounts/Account;

    .line 74
    invoke-virtual {p0}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
