.class public final Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final accountDigest:Ljava/lang/String;

.field public final certDigest:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerBackupHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 6
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->accountDigest:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    .line 12
    iput p5, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    .line 14
    return-void
.end method


# virtual methods
.method public final apply(Landroid/content/pm/PackageManager;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 3
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    .line 5
    iget v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 16
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 19
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v0

    .line 27
    const/4 v3, 0x0

    .line 28
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x0

    .line 33
    if-eqz v4, :cond_3

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v4

    .line 39
    check-cast v4, [Landroid/accounts/Account;

    .line 41
    array-length v6, v4

    .line 42
    move v7, v5

    .line 43
    :goto_0
    if-ge v7, v6, :cond_2

    .line 45
    aget-object v8, v4, v7

    .line 47
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->accountDigest:Ljava/lang/String;

    .line 49
    iget-object v10, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 51
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    .line 54
    move-result-object v10

    .line 55
    invoke-static {v10}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    .line 58
    move-result-object v10

    .line 59
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v9

    .line 63
    if-eqz v9, :cond_1

    .line 65
    move-object v3, v8

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 74
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    if-nez v3, :cond_4

    .line 78
    return v5

    .line 79
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->packageName:Ljava/lang/String;

    .line 81
    iget v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->userId:I

    .line 83
    const/16 v2, 0x40

    .line 85
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 88
    move-result-object p1
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 89
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 91
    invoke-static {v0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v1

    .line 105
    const/4 v2, 0x1

    .line 106
    if-nez v1, :cond_6

    .line 108
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 110
    array-length v1, v1

    .line 111
    if-le v1, v2, :cond_5

    .line 113
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->certDigest:Ljava/lang/String;

    .line 115
    aget-object v0, v0, v5

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_6

    .line 123
    :cond_5
    return v5

    .line 124
    :cond_6
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 126
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 128
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 130
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    .line 132
    invoke-virtual {v0, v3, p1}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_7

    .line 138
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper$PendingAppPermission;->this$0:Lcom/android/server/accounts/AccountManagerBackupHelper;

    .line 140
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerBackupHelper;->mAccountManagerService:Lcom/android/server/accounts/AccountManagerService;

    .line 142
    const-string/jumbo v0, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 145
    invoke-virtual {p0, v3, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 148
    :cond_7
    return v2

    .line 149
    :catch_0
    return v5

    .line 150
    :catchall_1
    move-exception p0

    .line 151
    goto :goto_3

    .line 152
    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    :try_start_5
    throw p0

    .line 154
    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 155
    throw p0
.end method
