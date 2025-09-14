.class public final Lcom/android/server/credentials/CredentialManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mRequestSessions:Landroid/util/SparseArray;

.field public final mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

.field public final mSystemServicesCacheList:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$maddSessionLocked(Lcom/android/server/credentials/CredentialManagerService;ILcom/android/server/credentials/RequestSession;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    .line 6
    iget-object v1, p2, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    .line 8
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$SessionManager;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 10
    iget-object v2, p0, Lcom/android/server/credentials/CredentialManagerService;->mRequestSessions:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_0

    .line 18
    iget-object v2, p0, Lcom/android/server/credentials/CredentialManagerService;->mRequestSessions:Landroid/util/SparseArray;

    .line 20
    new-instance v3, Ljava/util/HashMap;

    .line 22
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 25
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mRequestSessions:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Ljava/util/Map;

    .line 36
    invoke-interface {p0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public static -$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    move-result-object p0

    .line 12
    const-wide/32 v0, 0x8000000

    .line 15
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    .line 22
    move-result-object p0

    .line 23
    new-instance p2, Landroid/service/credentials/CallingAppInfo;

    .line 25
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 27
    invoke-direct {p2, p1, p0, p3}, Landroid/service/credentials/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    const-string p2, "CredentialManager"

    .line 34
    const-string v0, "Issue while retrieving signatureInfo : "

    .line 36
    invoke-static {p2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    new-instance p2, Landroid/service/credentials/CallingAppInfo;

    .line 41
    const/4 p0, 0x0

    .line 42
    invoke-direct {p2, p1, p0, p3}, Landroid/service/credentials/CallingAppInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;)V

    .line 45
    :goto_0
    return-object p2
.end method

.method public static -$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    move-result-object p0

    .line 16
    const-wide/16 v0, 0x0

    .line 18
    :try_start_0
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I

    .line 25
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    if-ne p0, p2, :cond_0

    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 31
    const-string v0, " does not belong to uid "

    .line 33
    invoke-static {p2, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0

    .line 41
    :catch_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 43
    const-string p2, " not found"

    .line 45
    invoke-static {p1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0
.end method

.method public static -$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 12
    move-result v1

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    move-result-wide v2

    .line 17
    :try_start_0
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 19
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 20
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceListForUserLocked(I)Ljava/util/List;

    .line 28
    move-result-object v6

    .line 29
    if-eqz v6, :cond_0

    .line 31
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 34
    move-result v7

    .line 35
    if-nez v7, :cond_0

    .line 37
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/credentials/CredentialManagerService;->getOrConstructSystemServiceListLock(I)Ljava/util/List;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v1

    .line 51
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    .line 63
    iget-object v6, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 65
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    :try_start_2
    invoke-virtual {v5, p1, p2}, Lcom/android/server/credentials/CredentialManagerServiceImpl;->initiateProviderSessionForRequestLocked(Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Lcom/android/server/credentials/ProviderSession;

    .line 69
    move-result-object v5

    .line 70
    if-eqz v5, :cond_1

    .line 72
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    :goto_1
    monitor-exit v6

    .line 79
    goto :goto_0

    .line 80
    :goto_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    :try_start_3
    throw p0

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    goto :goto_3

    .line 84
    :cond_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    return-object v0

    .line 89
    :goto_3
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 90
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 91
    :catchall_2
    move-exception p0

    .line 92
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;

    .line 3
    const-string/jumbo v1, "credential_service"

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/infra/SecureSettingsServiceNameResolver;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 10
    const/4 v1, 0x4

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameBaseResolver;Ljava/lang/String;I)V

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    .line 17
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSystemServicesCacheList:Landroid/util/SparseArray;

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    .line 24
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerService;->mRequestSessions:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    .line 31
    invoke-direct {v0, p0}, Lcom/android/server/credentials/CredentialManagerService$SessionManager;-><init>(Lcom/android/server/credentials/CredentialManagerService;)V

    .line 34
    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    .line 36
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v1

    .line 9
    const-string/jumbo v5, "getPrimaryProvidersForUserId"

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    move v2, p1

    .line 16
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 19
    move-result p1

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    .line 22
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 25
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 27
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 30
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 32
    const/16 v1, 0x3a

    .line 34
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    move-result-object p0

    .line 41
    const-string/jumbo v1, "credential_service_primary"

    .line 44
    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    new-instance p1, Landroid/util/ArraySet;

    .line 50
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 59
    invoke-virtual {v0, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 62
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 65
    move-result p0

    .line 66
    if-eqz p0, :cond_1

    .line 68
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_0

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 86
    move-result p0

    .line 87
    new-array p0, p0, [Ljava/lang/String;

    .line 89
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 92
    move-result-object p0

    .line 93
    check-cast p0, [Ljava/lang/String;

    .line 95
    if-nez p0, :cond_2

    .line 97
    new-instance p0, Ljava/util/HashSet;

    .line 99
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 102
    return-object p0

    .line 103
    :cond_2
    new-instance p1, Ljava/util/HashSet;

    .line 105
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 108
    array-length v0, p0

    .line 109
    const/4 v1, 0x0

    .line 110
    :goto_1
    if-ge v1, v0, :cond_4

    .line 112
    aget-object v2, p0, v1

    .line 114
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 117
    move-result-object v3

    .line 118
    if-nez v3, :cond_3

    .line 120
    const-string v3, "Primary provider component name unflatten from string error: "

    .line 122
    const-string v4, "CredentialManager"

    .line 124
    invoke-static {v3, v2, v4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    goto :goto_2

    .line 128
    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 133
    goto :goto_1

    .line 134
    :cond_4
    return-object p1
.end method

.method public static getStoredProviders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    if-eqz p0, :cond_4

    .line 8
    if-nez p1, :cond_0

    .line 10
    goto :goto_3

    .line 11
    :cond_0
    const-string v1, ":"

    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    array-length v1, p0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_4

    .line 21
    aget-object v3, p0, v2

    .line 23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_2

    .line 29
    const-string/jumbo v4, "null"

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_3

    .line 45
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_3

    .line 55
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    :goto_1
    const-string v3, "CredentialManager"

    .line 65
    const-string/jumbo v4, "provider component name is empty or null"

    .line 68
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    :goto_3
    return-object v0
.end method

.method public static isCredentialDescriptionApiEnabled()Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    const-string/jumbo v2, "credential_manager"

    .line 8
    const-string/jumbo v3, "enable_credential_description_api"

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v2, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 15
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    return v2

    .line 20
    :catchall_0
    move-exception v2

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    throw v2
.end method


# virtual methods
.method public final getOrConstructSystemServiceListLock(I)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSystemServicesCacheList:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 17
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 24
    new-instance v2, Ljava/util/HashSet;

    .line 26
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static {v1, p1, v3, v2}, Landroid/service/credentials/CredentialProviderInfoFactory;->getAvailableSystemServices(Landroid/content/Context;IZLjava/util/Set;)Ljava/util/List;

    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;

    .line 36
    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/credentials/CredentialManagerService;Ljava/util/List;I)V

    .line 39
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 42
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mSystemServicesCacheList:Landroid/util/SparseArray;

    .line 44
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    :cond_1
    return-object v0
.end method

.method public final getServiceSettingsProperty()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "credential_service"

    .line 4
    return-object p0
.end method

.method public final handlePackageRemovedMultiModeLocked(ILjava/lang/String;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v8, p1

    .line 4
    move-object/from16 v9, p2

    .line 6
    iget-object v10, v0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 8
    const-string/jumbo v1, "updateProvidersWhenPackageRemoved)pkg="

    .line 11
    const-string v2, " ("

    .line 13
    const-string v3, ")"

    .line 15
    invoke-static {v8, v1, v9, v2, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const-string v11, "CredentialManager"

    .line 21
    invoke-static {v11, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    move-result-object v1

    .line 28
    const-string/jumbo v2, "credential_service_primary"

    .line 31
    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_0

    .line 37
    const-string/jumbo v1, "settings key is null"

    .line 40
    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    goto/16 :goto_0

    .line 45
    :cond_0
    invoke-static {v1, v9}, Lcom/android/server/credentials/CredentialManagerService;->getStoredProviders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    .line 48
    move-result-object v12

    .line 49
    const-string v13, ":"

    .line 51
    invoke-static {v13, v12}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 58
    move-result-object v1

    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v14, 0x1

    .line 62
    move/from16 v6, p1

    .line 64
    move v7, v14

    .line 65
    invoke-static/range {v1 .. v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_1

    .line 71
    const-string v1, "Failed to remove primary package: "

    .line 73
    invoke-static {v1, v9, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    goto/16 :goto_0

    .line 78
    :cond_1
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 81
    move-result-object v1

    .line 82
    const-string v2, "autofill_service"

    .line 84
    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object v3

    .line 92
    const v4, 0x1040316

    .line 95
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    if-eqz v1, :cond_2

    .line 101
    check-cast v12, Ljava/util/HashSet;

    .line 103
    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_2

    .line 109
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 112
    move-result v3

    .line 113
    if-nez v3, :cond_2

    .line 115
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 118
    move-result-object v1

    .line 119
    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 134
    move-result-object v1

    .line 135
    const/4 v5, 0x0

    .line 136
    const-string v3, ""

    .line 138
    const/4 v4, 0x0

    .line 139
    move/from16 v6, p1

    .line 141
    move v7, v14

    .line 142
    invoke-static/range {v1 .. v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    .line 145
    move-result v1

    .line 146
    if-nez v1, :cond_2

    .line 148
    const-string v1, "Failed to remove autofill package: "

    .line 150
    invoke-static {v1, v9, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_2
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 156
    move-result-object v1

    .line 157
    const-string/jumbo v2, "credential_service"

    .line 160
    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 163
    move-result-object v1

    .line 164
    invoke-static {v1, v9}, Lcom/android/server/credentials/CredentialManagerService;->getStoredProviders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    .line 167
    move-result-object v1

    .line 168
    invoke-static {v13, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 175
    move-result-object v1

    .line 176
    const/4 v4, 0x0

    .line 177
    const/4 v5, 0x0

    .line 178
    move/from16 v6, p1

    .line 180
    move v7, v14

    .line 181
    invoke-static/range {v1 .. v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    .line 184
    move-result v1

    .line 185
    if-nez v1, :cond_3

    .line 187
    const-string v1, "Failed to remove secondary package: "

    .line 189
    invoke-static {v1, v9, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceListForUserLocked(I)Ljava/util/List;

    .line 195
    move-result-object v1

    .line 196
    if-nez v1, :cond_4

    .line 198
    return-void

    .line 199
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    .line 201
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 207
    move-result-object v1

    .line 208
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    move-result v3

    .line 212
    if-eqz v3, :cond_6

    .line 214
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    .line 220
    if-eqz v3, :cond_5

    .line 222
    iget-object v4, v3, Lcom/android/server/credentials/CredentialManagerServiceImpl;->mInfo:Landroid/credentials/CredentialProviderInfo;

    .line 224
    invoke-virtual {v4}, Landroid/credentials/CredentialProviderInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_5

    .line 242
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    goto :goto_1

    .line 246
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 249
    move-result-object v1

    .line 250
    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_a

    .line 256
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    move-result-object v2

    .line 260
    check-cast v2, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    .line 262
    iget-object v3, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 264
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 267
    move-result-object v3

    .line 268
    if-eqz v3, :cond_8

    .line 270
    iget-object v3, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 272
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 275
    move-result-object v3

    .line 276
    check-cast v3, Ljava/util/List;

    .line 278
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 281
    :cond_8
    iget-object v3, v0, Lcom/android/server/credentials/CredentialManagerService;->mSystemServicesCacheList:Landroid/util/SparseArray;

    .line 283
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 286
    move-result-object v3

    .line 287
    if-eqz v3, :cond_9

    .line 289
    iget-object v3, v0, Lcom/android/server/credentials/CredentialManagerService;->mSystemServicesCacheList:Landroid/util/SparseArray;

    .line 291
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 294
    move-result-object v3

    .line 295
    check-cast v3, Ljava/util/List;

    .line 297
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 300
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    .line 303
    move-result-object v3

    .line 304
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServicePackageName()Ljava/lang/String;

    .line 307
    move-result-object v2

    .line 308
    iget-object v4, v3, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 310
    check-cast v4, Ljava/util/HashMap;

    .line 312
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 315
    move-result v4

    .line 316
    if-eqz v4, :cond_7

    .line 318
    iget-object v3, v3, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 320
    check-cast v3, Ljava/util/HashMap;

    .line 322
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    goto :goto_2

    .line 326
    :cond_a
    return-void
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    if-nez p0, :cond_1

    .line 14
    const-string v0, "Caller does not have permission: "

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const-string v0, "CredentialManager"

    .line 22
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_1
    return p0
.end method

.method public final newServiceListLocked(I[Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->getOrConstructSystemServiceListLock(I)Ljava/util/List;

    .line 4
    if-eqz p2, :cond_3

    .line 6
    array-length v0, p2

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_2

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    array-length v1, p2

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    array-length v1, p2

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_2

    .line 20
    aget-object v3, p2, v2

    .line 22
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :try_start_0
    new-instance v4, Lcom/android/server/credentials/CredentialManagerServiceImpl;

    .line 31
    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 33
    invoke-direct {v4, p0, v5, p1, v3}, Lcom/android/server/credentials/CredentialManagerServiceImpl;-><init>(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/Object;ILjava/lang/String;)V

    .line 36
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception v3

    .line 41
    const-string v4, "CredentialManager"

    .line 43
    const-string v5, "Unable to add serviceInfo : "

    .line 45
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object v0

    .line 52
    :cond_3
    :goto_2
    new-instance p0, Ljava/util/ArrayList;

    .line 54
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    return-object p0
.end method

.method public final newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 1
    const-string p0, "CredentialManager"

    .line 3
    const-string p1, "Should not be here - CredentialManagerService is configured to use multiple services"

    .line 5
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;-><init>(Lcom/android/server/credentials/CredentialManagerService;)V

    .line 6
    const-string/jumbo v1, "credential"

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 12
    return-void
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onUserStopped(Lcom/android/server/SystemService$TargetUser;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 7
    move-result p0

    .line 8
    sget-object p1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 13
    :try_start_0
    sget-object v0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sCredentialDescriptionSessionPerUser:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    sget-object p1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->sLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 25
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 28
    throw p0
.end method
