.class public final Lcom/android/server/accounts/AccountManagerService$4;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onOpChanged(ILjava/lang/String;)V
    .locals 12

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 16
    .line 17
    const/16 v2, 0x3e

    .line 18
    .line 19
    invoke-virtual {v1, v2, v0, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const-string v2, "android"

    .line 45
    .line 46
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsOrEmptyArray(ILjava/lang/String;)[Landroid/accounts/Account;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    array-length v10, v9

    .line 51
    const/4 v1, 0x0

    .line 52
    move v11, v1

    .line 53
    :goto_0
    if-ge v11, v10, :cond_0

    .line 54
    .line 55
    aget-object v2, v9, v11

    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    move-object v1, p0

    .line 59
    move v3, v0

    .line 60
    move-object v4, p2

    .line 61
    move-object v6, p1

    .line 62
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;ZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    add-int/lit8 v11, v11, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    :try_start_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    throw p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    :goto_1
    const-string p1, "AccountManagerService"

    .line 80
    .line 81
    const-string p2, "Can\'t read accounts database"

    .line 82
    .line 83
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    :catch_1
    :cond_1
    :goto_2
    return-void
.end method
