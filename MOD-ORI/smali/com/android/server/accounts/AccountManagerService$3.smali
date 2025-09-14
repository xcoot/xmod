.class public final Lcom/android/server/accounts/AccountManagerService$3;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$3;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 5

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$3;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$3;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, "android"

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountsOrEmptyArray(ILjava/lang/String;)[Landroid/accounts/Account;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    array-length v1, v0

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-ge v2, v1, :cond_0

    .line 29
    .line 30
    aget-object v3, v0, v2

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-virtual {p0, v3, p2, v4, p1}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "AccountManagerService"

    .line 42
    .line 43
    const-string p2, "Can\'t read accounts database"

    .line 44
    .line 45
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 5

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$3;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$3;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, "android"

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountsOrEmptyArray(ILjava/lang/String;)[Landroid/accounts/Account;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    array-length v1, v0

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-ge v2, v1, :cond_0

    .line 29
    .line 30
    aget-object v3, v0, v2

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-virtual {p0, v3, p2, v4, p1}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "AccountManagerService"

    .line 42
    .line 43
    const-string p2, "Can\'t read accounts database"

    .line 44
    .line 45
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    return-void
.end method
