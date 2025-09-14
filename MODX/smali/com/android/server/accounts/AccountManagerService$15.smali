.class public final Lcom/android/server/accounts/AccountManagerService$15;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$account:Landroid/accounts/Account;

.field public final synthetic val$statusToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/accounts/AccountManagerService$15;->$r8$classId:I

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$15;->this$0:Ljava/lang/Object;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$15;->val$account:Landroid/accounts/Account;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$15;->val$statusToken:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 3
    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    move-object v0, p0

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/accounts/AccountManagerService$15;->$r8$classId:I

    move-object/from16 v1, p7

    .line 1
    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$15;->val$account:Landroid/accounts/Account;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$15;->val$statusToken:Ljava/lang/String;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$15;->this$0:Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v8, 0x0

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
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$15;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    .line 9
    return-void

    .line 10
    :pswitch_0
    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 20
    goto/16 :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x5

    .line 23
    if-nez p1, :cond_1

    .line 25
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$15;->this$0:Ljava/lang/Object;

    .line 27
    check-cast p0, Lcom/android/server/accounts/AccountManagerService;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    const-string/jumbo p0, "null bundle"

    .line 35
    invoke-static {v0, v1, p0}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 38
    goto/16 :goto_0

    .line 40
    :cond_1
    const-string v2, "AccountManagerService"

    .line 42
    const/4 v3, 0x2

    .line 43
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-class v5, Lcom/android/server/accounts/AccountManagerService$15;

    .line 56
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v5, " calling onResult() on response "

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v4

    .line 75
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    const-string/jumbo v4, "errorCode"

    .line 81
    const/4 v5, -0x1

    .line 82
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 85
    move-result v5

    .line 86
    if-lez v5, :cond_3

    .line 88
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$15;->this$0:Ljava/lang/Object;

    .line 90
    check-cast p0, Lcom/android/server/accounts/AccountManagerService;

    .line 92
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 95
    move-result v1

    .line 96
    const-string/jumbo v2, "errorMessage"

    .line 99
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    invoke-static {v0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 109
    goto :goto_0

    .line 110
    :cond_3
    const-string/jumbo v4, "booleanResult"

    .line 113
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 116
    move-result v5

    .line 117
    if-nez v5, :cond_4

    .line 119
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$15;->this$0:Ljava/lang/Object;

    .line 121
    check-cast p0, Lcom/android/server/accounts/AccountManagerService;

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    const-string/jumbo p0, "no result in response"

    .line 129
    invoke-static {v0, v1, p0}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 132
    goto :goto_0

    .line 133
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    .line 135
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 138
    const/4 v5, 0x0

    .line 139
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 142
    move-result p1

    .line 143
    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$15;->this$0:Ljava/lang/Object;

    .line 148
    check-cast p0, Lcom/android/server/accounts/AccountManagerService;

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    :try_start_0
    invoke-interface {v0, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 157
    :catch_0
    move-exception p0

    .line 158
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_5

    .line 164
    const-string/jumbo p1, "failure while notifying response"

    .line 167
    invoke-static {v2, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    :cond_5
    :goto_0
    return-void

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$15;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 8
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$15;->val$account:Landroid/accounts/Account;

    .line 10
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$15;->val$statusToken:Ljava/lang/String;

    .line 12
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$15;->this$0:Ljava/lang/Object;

    .line 14
    check-cast v3, Landroid/os/Bundle;

    .line 16
    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->updateCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 22
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$15;->val$account:Landroid/accounts/Account;

    .line 24
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$15;->val$statusToken:Ljava/lang/String;

    .line 26
    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->isCredentialsUpdateSuggested(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toDebugString(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$15;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$15;->this$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Landroid/os/Bundle;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string p1, ", updateCredentials, "

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$15;->val$account:Landroid/accounts/Account;

    .line 34
    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string p1, ", authTokenType "

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$15;->val$statusToken:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string p1, ", loginOptions "

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$15;->this$0:Ljava/lang/Object;

    .line 58
    check-cast p0, Landroid/os/Bundle;

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string p1, ", isCredentialsUpdateSuggested, "

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$15;->val$account:Landroid/accounts/Account;

    .line 87
    invoke-virtual {p0}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
