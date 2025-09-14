.class public final synthetic Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/accounts/AccountManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPermissionsChanged(I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/accounts/AccountManagerService;

    .line 4
    .line 5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 9
    .line 10
    .line 11
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    move/from16 v7, p1

    .line 14
    .line 15
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    if-eqz v8, :cond_4

    .line 20
    .line 21
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v10

    .line 29
    :try_start_0
    array-length v12, v8

    .line 30
    const/4 v13, 0x0

    .line 31
    const/4 v0, 0x0

    .line 32
    move v14, v13

    .line 33
    :goto_0
    if-ge v14, v12, :cond_1

    .line 34
    .line 35
    aget-object v15, v8, v14

    .line 36
    .line 37
    iget-object v1, v6, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    const-string v2, "android.permission.GET_ACCOUNTS"

    .line 40
    .line 41
    invoke-virtual {v1, v2, v15}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_0
    if-nez v0, :cond_2

    .line 49
    .line 50
    const-string v0, "android"

    .line 51
    .line 52
    invoke-virtual {v6, v9, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountsOrEmptyArray(ILjava/lang/String;)[Landroid/accounts/Account;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    :cond_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    goto :goto_5

    .line 66
    :cond_2
    move-object v5, v0

    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    goto :goto_4

    .line 70
    :goto_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {v6, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 75
    .line 76
    .line 77
    move-result-object v16

    .line 78
    array-length v4, v5

    .line 79
    move v3, v13

    .line 80
    :goto_2
    if-ge v3, v4, :cond_3

    .line 81
    .line 82
    aget-object v1, v5, v3

    .line 83
    .line 84
    const/16 v17, 0x1

    .line 85
    .line 86
    move-object v0, v6

    .line 87
    move/from16 v2, p1

    .line 88
    .line 89
    move/from16 v18, v3

    .line 90
    .line 91
    move-object v3, v15

    .line 92
    move/from16 v19, v4

    .line 93
    .line 94
    move/from16 v4, v17

    .line 95
    .line 96
    move-object/from16 v17, v5

    .line 97
    .line 98
    move-object/from16 v5, v16

    .line 99
    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;ZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    add-int/lit8 v3, v18, 0x1

    .line 104
    .line 105
    move-object/from16 v5, v17

    .line 106
    .line 107
    move/from16 v4, v19

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_3
    move-object/from16 v17, v5

    .line 111
    .line 112
    move-object/from16 v0, v17

    .line 113
    .line 114
    :goto_3
    add-int/lit8 v14, v14, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :goto_4
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :cond_4
    :goto_5
    return-void
.end method
