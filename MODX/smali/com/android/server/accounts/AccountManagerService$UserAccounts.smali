.class public final Lcom/android/server/accounts/AccountManagerService$UserAccounts;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final accountCache:Ljava/util/HashMap;

.field public final accountTokenCaches:Lcom/android/server/accounts/TokenCache;

.field public final accountsDb:Lcom/android/server/accounts/AccountsDb;

.field public final authTokenCache:Ljava/util/Map;

.field public final cacheLock:Ljava/lang/Object;

.field public final credentialsPermissionNotificationIds:Ljava/util/HashMap;

.field public final dbLock:Ljava/lang/Object;

.field public final mReceiversForType:Ljava/util/Map;

.field public final previousNameCache:Ljava/util/HashMap;

.field public final signinRequiredNotificationIds:Ljava/util/HashMap;

.field public final userDataCache:Ljava/util/Map;

.field public final userId:I

.field public final visibilityCache:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    .line 25
    new-instance v1, Ljava/lang/Object;

    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    .line 32
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 34
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 39
    new-instance v2, Ljava/util/HashMap;

    .line 41
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;

    .line 46
    new-instance v2, Ljava/util/HashMap;

    .line 48
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;

    .line 53
    new-instance v2, Lcom/android/server/accounts/TokenCache;

    .line 55
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v3, Lcom/android/server/accounts/TokenCache$TokenLruCache;

    .line 60
    const v4, 0xfa00

    .line 63
    invoke-direct {v3, v4}, Landroid/util/LruCache;-><init>(I)V

    .line 66
    new-instance v4, Ljava/util/HashMap;

    .line 68
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 71
    iput-object v4, v3, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    .line 73
    new-instance v4, Ljava/util/HashMap;

    .line 75
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 78
    iput-object v4, v3, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    .line 80
    iput-object v3, v2, Lcom/android/server/accounts/TokenCache;->mCachedTokens:Lcom/android/server/accounts/TokenCache$TokenLruCache;

    .line 82
    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    .line 84
    new-instance v2, Ljava/util/HashMap;

    .line 86
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 89
    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;

    .line 91
    new-instance v2, Ljava/util/HashMap;

    .line 93
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 96
    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;

    .line 98
    new-instance v2, Ljava/util/HashMap;

    .line 100
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 103
    iput-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;

    .line 105
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 107
    monitor-enter v1

    .line 108
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/accounts/AccountsDb;->create(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountsDb;

    .line 112
    move-result-object p1

    .line 113
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 115
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    return-void

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    goto :goto_0

    .line 120
    :catchall_1
    move-exception p0

    .line 121
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    :try_start_4
    throw p0

    .line 123
    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    throw p0
.end method
