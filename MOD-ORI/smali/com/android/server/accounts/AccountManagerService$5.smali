.class public final Lcom/android/server/accounts/AccountManagerService$5;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic val$account:Landroid/accounts/Account;

.field public final synthetic val$response:Landroid/accounts/IAccountManagerResponse;

.field public final synthetic val$toAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field public final synthetic val$userFrom:I


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$5;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$5;->val$account:Landroid/accounts/Account;

    .line 8
    .line 9
    move-object/from16 v2, p7

    .line 10
    .line 11
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$5;->val$response:Landroid/accounts/IAccountManagerResponse;

    .line 12
    .line 13
    move-object/from16 v2, p8

    .line 14
    .line 15
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$5;->val$toAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 16
    .line 17
    move/from16 v2, p9

    .line 18
    .line 19
    iput v2, v0, Lcom/android/server/accounts/AccountManagerService$5;->val$userFrom:I

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    move-object v0, p0

    .line 26
    move-object v1, p1

    .line 27
    move-object v2, p2

    .line 28
    move-object v3, p3

    .line 29
    move-object v4, p4

    .line 30
    move-object v7, p5

    .line 31
    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string/jumbo v1, "booleanResult"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$5;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 18
    .line 19
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$response:Landroid/accounts/IAccountManagerResponse;

    .line 20
    .line 21
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$account:Landroid/accounts/Account;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$toAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 24
    .line 25
    iget v9, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$userFrom:I

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    :try_start_0
    new-instance p0, Lcom/android/server/accounts/AccountManagerService$6;

    .line 38
    .line 39
    iget-object v6, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v7, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 42
    .line 43
    move-object v2, p0

    .line 44
    move-object v10, p1

    .line 45
    invoke-direct/range {v2 .. v10}, Lcom/android/server/accounts/AccountManagerService$6;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILandroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$account:Landroid/accounts/Account;

    .line 4
    .line 5
    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAccountCredentialsForCloning(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final toDebugString(J)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, ", getAccountCredentialsForClone, "

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$5;->val$account:Landroid/accounts/Account;

    .line 19
    .line 20
    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method
