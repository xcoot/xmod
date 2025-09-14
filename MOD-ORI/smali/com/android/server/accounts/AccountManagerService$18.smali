.class public final Lcom/android/server/accounts/AccountManagerService$18;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic val$opPackageName:Ljava/lang/String;

.field public final synthetic val$response:Landroid/accounts/IAccountManagerResponse;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$18;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$response:Landroid/accounts/IAccountManagerResponse;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$opPackageName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onResult(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "accounts"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    array-length v0, p1

    .line 8
    new-array v0, v0, [Landroid/accounts/Account;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p1

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    aget-object v2, p1, v1

    .line 15
    .line 16
    check-cast v2, Landroid/accounts/Account;

    .line 17
    .line 18
    aput-object v2, v0, v1

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$18;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$response:Landroid/accounts/IAccountManagerResponse;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$18;->val$opPackageName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0, p0}, Lcom/android/server/accounts/AccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
