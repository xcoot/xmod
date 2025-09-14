.class public final Lcom/android/server/accounts/AccountManagerService$17;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic val$account:Landroid/accounts/Account;

.field public final synthetic val$callback:Landroid/os/RemoteCallback;

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;ILandroid/accounts/Account;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$17;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$uid:I

    .line 5
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$account:Landroid/accounts/Account;

    .line 7
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$callback:Landroid/os/RemoteCallback;

    .line 9
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final handleAuthenticatorResponse(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$17;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$uid:I

    .line 5
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$17;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 15
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$account:Landroid/accounts/Account;

    .line 17
    iget v3, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$uid:I

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    const-string/jumbo v4, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 25
    invoke-static {v3, v2, v0, v4}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(ILandroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 32
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$callback:Landroid/os/RemoteCallback;

    .line 34
    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Landroid/os/Bundle;

    .line 38
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    const-string/jumbo v1, "booleanResult"

    .line 44
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$callback:Landroid/os/RemoteCallback;

    .line 49
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 52
    :cond_0
    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService$17;->handleAuthenticatorResponse(Z)V

    .line 5
    return-void
.end method

.method public final onRequestContinued()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onResult(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService$17;->handleAuthenticatorResponse(Z)V

    .line 5
    return-void
.end method
