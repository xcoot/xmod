.class public final Lcom/android/server/accounts/AccountManagerService$1$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/accounts/AccountManagerService$1;

.field public final synthetic val$removedPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService$1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->this$1:Lcom/android/server/accounts/AccountManagerService$1;

    .line 6
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->val$removedPackageName:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->this$1:Lcom/android/server/accounts/AccountManagerService$1;

    .line 3
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$1;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 5
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 7
    monitor-enter v1

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    :try_start_0
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 15
    move-result v4

    .line 16
    if-ge v3, v4, :cond_0

    .line 18
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 26
    invoke-virtual {v0, v4}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto/16 :goto_8

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->this$1:Lcom/android/server/accounts/AccountManagerService$1;

    .line 38
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$1;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 40
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->val$removedPackageName:Ljava/lang/String;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {p0}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 51
    goto/16 :goto_6

    .line 53
    :cond_1
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 55
    monitor-enter v3

    .line 56
    :try_start_1
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 58
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 61
    move-result v1

    .line 62
    :goto_1
    if-ge v2, v1, :cond_3

    .line 64
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 66
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    :try_start_2
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 74
    iget v6, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 76
    invoke-virtual {v5, p0, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    goto :goto_5

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    goto :goto_7

    .line 82
    :catch_0
    :try_start_3
    iget-object v5, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 84
    iget-object v5, v5, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 86
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    move-result-object v5

    .line 90
    const-string v6, "_package=? "

    .line 92
    filled-new-array {p0}, [Ljava/lang/String;

    .line 95
    move-result-object v7

    .line 96
    const-string/jumbo v8, "visibility"

    .line 99
    invoke-virtual {v5, v8, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    :try_start_4
    iget-object v5, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 104
    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 105
    :try_start_5
    iget-object v6, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 107
    monitor-enter v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 108
    :try_start_6
    iget-object v7, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    .line 110
    check-cast v7, Ljava/util/HashMap;

    .line 112
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 115
    move-result-object v7

    .line 116
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object v7

    .line 120
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result v8

    .line 124
    if-eqz v8, :cond_2

    .line 126
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    move-result-object v8

    .line 130
    check-cast v8, Landroid/accounts/Account;

    .line 132
    invoke-static {v8, v4}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    .line 135
    move-result-object v8

    .line 136
    invoke-interface {v8, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    goto :goto_2

    .line 140
    :catchall_2
    move-exception p0

    .line 141
    goto :goto_3

    .line 142
    :cond_2
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 145
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 146
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 147
    goto :goto_5

    .line 148
    :catchall_3
    move-exception p0

    .line 149
    goto :goto_4

    .line 150
    :goto_3
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 151
    :try_start_9
    throw p0

    .line 152
    :goto_4
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 153
    :try_start_a
    throw p0

    .line 154
    :catch_1
    move-exception v5

    .line 155
    const-string v6, "AccountManagerService"

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    const-string v8, "Could not delete account visibility for user = "

    .line 164
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget v4, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 169
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v4

    .line 176
    invoke-static {v6, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 181
    goto :goto_1

    .line 182
    :cond_3
    monitor-exit v3

    .line 183
    :goto_6
    return-void

    .line 184
    :goto_7
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 185
    throw p0

    .line 186
    :goto_8
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 187
    throw p0
.end method
