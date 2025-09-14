.class public final Lcom/android/server/accounts/AccountManagerService$10;
.super Lcom/android/server/accounts/AccountManagerService$StartAccountSession;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic val$accountType:Ljava/lang/String;

.field public final synthetic val$authTokenType:Ljava/lang/String;

.field public final synthetic val$callerPkg:Ljava/lang/String;

.field public final synthetic val$options:Landroid/os/Bundle;

.field public final synthetic val$requiredFeatures:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/android/server/accounts/AccountManagerService$10;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 5
    move-object v2, p7

    .line 6
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$10;->val$authTokenType:Ljava/lang/String;

    .line 8
    move-object/from16 v2, p8

    .line 10
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$10;->val$requiredFeatures:[Ljava/lang/String;

    .line 12
    move-object/from16 v2, p9

    .line 14
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$10;->val$options:Landroid/os/Bundle;

    .line 16
    move-object/from16 v2, p10

    .line 18
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$10;->val$callerPkg:Ljava/lang/String;

    .line 20
    move-object/from16 v2, p11

    .line 22
    iput-object v2, v0, Lcom/android/server/accounts/AccountManagerService$10;->val$accountType:Ljava/lang/String;

    .line 24
    const/4 v6, 0x0

    .line 25
    move-object v2, p2

    .line 26
    move-object v3, p3

    .line 27
    move-object v4, p4

    .line 28
    move v5, p5

    .line 29
    move v7, p6

    .line 30
    invoke-direct/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 3
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$authTokenType:Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$requiredFeatures:[Ljava/lang/String;

    .line 9
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$options:Landroid/os/Bundle;

    .line 11
    move-object v1, p0

    .line 12
    invoke-interface/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator;->startAddAccountSession(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$10;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 17
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$callerPkg:Ljava/lang/String;

    .line 19
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$accountType:Ljava/lang/String;

    .line 21
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$requiredFeatures:[Ljava/lang/String;

    .line 23
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$authTokenType:Ljava/lang/String;

    .line 25
    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mlogAddAccountMetrics(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 28
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
    const-string p1, ", startAddAccountSession, accountType "

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$accountType:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string p1, ", requiredFeatures "

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$10;->val$requiredFeatures:[Ljava/lang/String;

    .line 30
    if-eqz p0, :cond_0

    .line 32
    const-string p1, ","

    .line 34
    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string/jumbo p0, "null"

    .line 42
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method
