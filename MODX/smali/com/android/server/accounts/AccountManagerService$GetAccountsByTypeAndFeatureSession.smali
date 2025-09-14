.class public final Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile mAccountsOfType:[Landroid/accounts/Account;

.field public volatile mAccountsWithFeatures:Ljava/util/ArrayList;

.field public final mCallingUid:I

.field public volatile mCurrentAccount:I

.field public final mFeatures:[Ljava/lang/String;

.field public final mIncludeManagedNotVisible:Z

.field public final mPackageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 11

    .line 1
    move-object v10, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v10, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v8, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x1

    .line 9
    const/4 v9, 0x0

    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    move-object v4, p4

    .line 15
    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, v10, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    .line 21
    iput-object v0, v10, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, v10, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 26
    move/from16 v0, p6

    .line 28
    iput v0, v10, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCallingUid:I

    .line 30
    move-object/from16 v0, p5

    .line 32
    iput-object v0, v10, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    .line 34
    move-object/from16 v0, p7

    .line 36
    iput-object v0, v10, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mPackageName:Ljava/lang/String;

    .line 38
    move/from16 v0, p8

    .line 40
    iput-boolean v0, v10, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mIncludeManagedNotVisible:Z

    .line 42
    return-void
.end method


# virtual methods
.method public final checkAccount()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    .line 5
    array-length v1, v1

    .line 6
    const/4 v2, 0x2

    .line 7
    const-string v3, "AccountManagerService"

    .line 9
    if-lt v0, v1, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v1

    .line 23
    new-array v4, v1, [Landroid/accounts/Account;

    .line 25
    const/4 v5, 0x0

    .line 26
    :goto_0
    if-ge v5, v1, :cond_0

    .line 28
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v6

    .line 34
    check-cast v6, Landroid/accounts/Account;

    .line 36
    aput-object v6, v4, v5

    .line 38
    add-int/lit8 v5, v5, 0x1

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_1

    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    const-class v1, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, " calling onResult() on response "

    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    new-instance p0, Landroid/os/Bundle;

    .line 80
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 83
    const-string v1, "accounts"

    .line 85
    invoke-virtual {p0, v1, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 88
    invoke-interface {v0, p0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_2

    .line 92
    :goto_1
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_2

    .line 98
    const-string/jumbo v0, "failure while notifying response"

    .line 101
    invoke-static {v3, v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :cond_2
    :goto_2
    return-void

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 107
    if-nez v0, :cond_5

    .line 109
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_4

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v1, "checkAccount: aborting session since we are no longer connected to the authenticator, "

    .line 120
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 126
    move-result-wide v1

    .line 127
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->toDebugString(J)Ljava/lang/String;

    .line 130
    move-result-object p0

    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_4
    return-void

    .line 142
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    .line 144
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 146
    aget-object v1, v1, v2

    .line 148
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    .line 150
    invoke-interface {v0, p0, v1, v2}, Landroid/accounts/IAccountAuthenticator;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    goto :goto_3

    .line 154
    :catch_1
    const-string/jumbo v0, "remote exception"

    .line 157
    const/4 v1, 0x1

    .line 158
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 161
    :goto_3
    return-void
.end method

.method public final onResult(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 5
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 7
    add-int/2addr v1, v0

    .line 8
    iput v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 10
    if-nez p1, :cond_0

    .line 12
    const/4 p1, 0x5

    .line 13
    const-string/jumbo v0, "null bundle"

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 19
    return-void

    .line 20
    :cond_0
    const-string/jumbo v1, "booleanResult"

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 32
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    .line 34
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 36
    aget-object v1, v1, v2

    .line 38
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_1
    iget p1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 43
    add-int/2addr p1, v0

    .line 44
    iput p1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 46
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->checkAccount()V

    .line 49
    return-void
.end method

.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 5
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 7
    iget v3, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCallingUid:I

    .line 9
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mPackageName:Ljava/lang/String;

    .line 11
    iget-boolean v5, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mIncludeManagedNotVisible:Z

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsOfType:[Landroid/accounts/Account;

    .line 23
    array-length v1, v1

    .line 24
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mAccountsWithFeatures:Ljava/util/ArrayList;

    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mCurrentAccount:I

    .line 32
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->checkAccount()V

    .line 35
    return-void
.end method

.method public final toDebugString(J)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string p1, ", getAccountsByTypeAndFeatures, "

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->mFeatures:[Ljava/lang/String;

    .line 20
    if-eqz p0, :cond_0

    .line 22
    const-string p1, ","

    .line 24
    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
