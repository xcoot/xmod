.class public final Lcom/android/server/accounts/AccountManagerService$14;
.super Lcom/android/server/accounts/AccountManagerService$StartAccountSession;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$account:Landroid/accounts/Account;

.field public final synthetic val$authTokenType:Ljava/lang/String;

.field public final synthetic val$loginOptions:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p8, p0, Lcom/android/server/accounts/AccountManagerService$14;->val$account:Landroid/accounts/Account;

    .line 3
    iput-object p9, p0, Lcom/android/server/accounts/AccountManagerService$14;->val$authTokenType:Ljava/lang/String;

    .line 5
    iput-object p10, p0, Lcom/android/server/accounts/AccountManagerService$14;->val$loginOptions:Landroid/os/Bundle;

    .line 7
    invoke-direct/range {p0 .. p7}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$14;->val$account:Landroid/accounts/Account;

    .line 5
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$14;->val$authTokenType:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$14;->val$loginOptions:Landroid/os/Bundle;

    .line 9
    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->startUpdateCredentialsSession(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 12
    return-void
.end method

.method public final toDebugString(J)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$14;->val$loginOptions:Landroid/os/Bundle;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string p1, ", startUpdateCredentialsSession, "

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$14;->val$account:Landroid/accounts/Account;

    .line 27
    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string p1, ", authTokenType "

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$14;->val$authTokenType:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string p1, ", loginOptions "

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$14;->val$loginOptions:Landroid/os/Bundle;

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method
