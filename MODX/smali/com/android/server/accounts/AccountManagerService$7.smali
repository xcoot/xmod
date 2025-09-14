.class public final Lcom/android/server/accounts/AccountManagerService$7;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final val$accountType:Ljava/lang/Object;

.field public final synthetic val$authTokenType:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .locals 12

    move-object v10, p0

    move-object/from16 v11, p4

    const/4 v0, 0x1

    iput v0, v10, Lcom/android/server/accounts/AccountManagerService$7;->$r8$classId:I

    move-object v1, p1

    .line 1
    iput-object v1, v10, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/Object;

    .line 2
    iget-object v4, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p5

    .line 3
    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 4
    iput-object v11, v10, Lcom/android/server/accounts/AccountManagerService$7;->val$accountType:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/accounts/AccountManagerService$7;->$r8$classId:I

    move-object v1, p5

    .line 5
    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$7;->val$accountType:Ljava/lang/Object;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 6
    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/accounts/AccountManagerService$7;->$r8$classId:I

    move-object/from16 v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/Object;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$7;->val$accountType:Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$7;->$r8$classId:I

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
    if-eqz p1, :cond_2

    .line 16
    const-string/jumbo v0, "booleanResult"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 25
    const-string/jumbo v1, "intent"

    .line 28
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/Object;

    .line 42
    check-cast v0, Lcom/android/server/accounts/AccountManagerService;

    .line 44
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 46
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$accountType:Ljava/lang/Object;

    .line 48
    check-cast v2, Landroid/accounts/Account;

    .line 50
    invoke-static {}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->getCallingUid()I

    .line 53
    move-result v3

    .line 54
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    .line 63
    const/4 v1, 0x2

    .line 64
    const-string v2, "AccountManagerService"

    .line 66
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-class v3, Lcom/android/server/accounts/AccountManagerService$7;

    .line 79
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v3, " calling onResult() on response "

    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string v1, "Error calling onResult()"

    .line 108
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    .line 114
    return-void

    .line 115
    :pswitch_1
    const/4 v0, 0x1

    .line 116
    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 119
    if-eqz p1, :cond_3

    .line 121
    const-string v0, "authTokenLabelKey"

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 130
    move-result-object p1

    .line 131
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    .line 134
    goto :goto_1

    .line 135
    :cond_3
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    .line 138
    :goto_1
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$7;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 8
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/Object;

    .line 12
    check-cast v2, Landroid/os/Bundle;

    .line 14
    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->finishSession(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 20
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$accountType:Ljava/lang/Object;

    .line 22
    check-cast v1, Landroid/accounts/Account;

    .line 24
    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    .line 27
    return-void

    .line 28
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 30
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/Object;

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 34
    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toDebugString(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$7;->$r8$classId:I

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
    const-string p1, ", finishSession, accountType "

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$accountType:Ljava/lang/Object;

    .line 25
    check-cast p0, Ljava/lang/String;

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string p1, ", removeAccount, account "

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$accountType:Ljava/lang/Object;

    .line 54
    check-cast p0, Landroid/accounts/Account;

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string p1, ", getAuthTokenLabel, "

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$accountType:Ljava/lang/Object;

    .line 83
    check-cast p1, Ljava/lang/String;

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string p1, ", authTokenType "

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/Object;

    .line 95
    check-cast p0, Ljava/lang/String;

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
