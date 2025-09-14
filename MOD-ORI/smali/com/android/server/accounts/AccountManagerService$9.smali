.class public final Lcom/android/server/accounts/AccountManagerService$9;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic val$accountType:Ljava/lang/String;

.field public final synthetic val$authTokenType:Ljava/lang/String;

.field public final synthetic val$options:Landroid/os/Bundle;

.field public final synthetic val$requiredFeatures:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$9;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$9;->val$authTokenType:Ljava/lang/String;

    .line 8
    .line 9
    move-object/from16 v2, p7

    .line 10
    .line 11
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$9;->val$requiredFeatures:[Ljava/lang/String;

    .line 12
    .line 13
    move-object/from16 v2, p8

    .line 14
    .line 15
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$9;->val$options:Landroid/os/Bundle;

    .line 16
    .line 17
    move-object/from16 v2, p9

    .line 18
    .line 19
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$9;->val$accountType:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v9, 0x1

    .line 25
    move-object v2, p2

    .line 26
    move-object v3, p3

    .line 27
    move-object v4, p4

    .line 28
    move v5, p5

    .line 29
    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$authTokenType:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$requiredFeatures:[Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$options:Landroid/os/Bundle;

    .line 10
    .line 11
    move-object v1, p0

    .line 12
    invoke-interface/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator;->addAccount(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$options:Landroid/os/Bundle;

    .line 16
    .line 17
    const-string v1, "androidPackageName"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$9;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$accountType:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$requiredFeatures:[Ljava/lang/String;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$authTokenType:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v0, v2, v3, p0}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mlogAddAccountMetrics(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
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
    const-string p1, ", addAccount, accountType "

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$accountType:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, ", requiredFeatures "

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$9;->val$requiredFeatures:[Ljava/lang/String;

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const-string p1, ","

    .line 33
    .line 34
    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method
