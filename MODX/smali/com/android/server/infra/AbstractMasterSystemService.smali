.class public abstract Lcom/android/server/infra/AbstractMasterSystemService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public debug:Z

.field public mAllowInstantService:Z

.field public final mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

.field public final mLock:Ljava/lang/Object;

.field public final mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

.field public final mServicePackagePolicyFlags:I

.field public final mServicesCacheList:Landroid/util/SparseArray;

.field public final mTag:Ljava/lang/String;

.field public mUm:Lcom/android/server/pm/UserManagerInternal;

.field public mUpdatingPackageNames:Landroid/util/SparseArray;

.field public verbose:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x22

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameBaseResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameBaseResolver;Ljava/lang/String;I)V
    .locals 5

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 7
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    and-int/lit8 v1, p4, 0x7

    if-nez v1, :cond_0

    or-int/lit8 p4, p4, 0x2

    :cond_0
    and-int/lit8 v1, p4, 0x70

    if-nez v1, :cond_1

    or-int/lit8 p4, p4, 0x20

    .line 8
    :cond_1
    iput p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    .line 9
    iput-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    if-eqz p2, :cond_2

    .line 10
    new-instance p4, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;)V

    .line 11
    iget-object v1, p2, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 12
    :try_start_0
    iput-object p4, p2, Lcom/android/server/infra/ServiceNameBaseResolver;->mOnSetCallback:Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;

    .line 13
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const/4 p2, 0x0

    if-nez p3, :cond_3

    .line 14
    iput-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    goto :goto_2

    .line 15
    :cond_3
    new-instance p4, Landroid/util/SparseBooleanArray;

    invoke-direct {p4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    .line 16
    iget-object p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUm:Lcom/android/server/pm/UserManagerInternal;

    if-nez p4, :cond_5

    .line 17
    iget-boolean p4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p4, :cond_4

    const-string/jumbo p4, "lazy-loading UserManagerInternal"

    invoke-static {p1, p4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_4
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUm:Lcom/android/server/pm/UserManagerInternal;

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUm:Lcom/android/server/pm/UserManagerInternal;

    .line 20
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    move-result-object p4

    .line 21
    :goto_1
    move-object v1, p4

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 23
    invoke-virtual {p1, v1, p3}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 24
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    const-string v4, "Disabling by restrictions user "

    .line 25
    invoke-static {v1, v4, v3}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    :cond_7
    new-instance p4, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p3}, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lcom/android/server/pm/UserManagerInternal;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    .line 28
    :goto_2
    new-instance p1, Lcom/android/server/infra/AbstractMasterSystemService$1;

    invoke-direct {p1, p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;)V

    .line 29
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 p4, 0x1

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method


# virtual methods
.method public assertCalledByPackageOwner(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 22
    array-length v1, p0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_1

    .line 26
    aget-object v3, p0, v2

    .line 28
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 34
    return-void

    .line 35
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 40
    const-string v1, "UID "

    .line 42
    const-string v2, " does not own "

    .line 44
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 10

    .line 1
    const-string v0, ""

    .line 3
    iget-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 5
    iget-boolean v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 7
    const/4 v3, 0x1

    .line 8
    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 10
    iput-boolean v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 12
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 17
    move-result v3

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 21
    const-string v4, "Debug: "

    .line 23
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 29
    const-string v4, " Verbose: "

    .line 31
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 37
    const-string v4, "Package policy flags: "

    .line 39
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    iget v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    .line 44
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 47
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    .line 49
    if-eqz v4, :cond_0

    .line 51
    const-string v4, "Packages being updated: "

    .line 53
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    .line 58
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto/16 :goto_5

    .line 65
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->dumpSupportedUsers(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 68
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 70
    const/4 v5, 0x0

    .line 71
    if-eqz v4, :cond_1

    .line 73
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    const-string v4, "Name resolver: "

    .line 78
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 83
    invoke-virtual {v4, p1}, Lcom/android/server/infra/ServiceNameBaseResolver;->dumpShort(Ljava/io/PrintWriter;)V

    .line 86
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 89
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getSupportedUsers()Ljava/util/List;

    .line 92
    move-result-object v4

    .line 93
    move v6, v5

    .line 94
    :goto_1
    move-object v7, v4

    .line 95
    check-cast v7, Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 100
    move-result v8

    .line 101
    if-ge v6, v8, :cond_1

    .line 103
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    move-result-object v7

    .line 107
    check-cast v7, Landroid/content/pm/UserInfo;

    .line 109
    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    .line 111
    const-string v8, "    "

    .line 113
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 119
    const-string v8, ": "

    .line 121
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    iget-object v8, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 126
    invoke-virtual {v8, v7, p1}, Lcom/android/server/infra/ServiceNameBaseResolver;->dumpShort(ILjava/io/PrintWriter;)V

    .line 129
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 132
    add-int/lit8 v6, v6, 0x1

    .line 134
    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 138
    const-string v4, "Users disabled by restriction: "

    .line 140
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    .line 145
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 151
    const-string v4, "Allow instant service: "

    .line 153
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    iget-boolean v4, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    .line 158
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    .line 164
    move-result-object v4

    .line 165
    if-eqz v4, :cond_2

    .line 167
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    const-string v6, "Settings property: "

    .line 172
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 181
    const-string v4, "Cached services: "

    .line 183
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    if-nez v3, :cond_3

    .line 188
    const-string/jumbo v0, "none"

    .line 191
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    goto :goto_4

    .line 195
    :cond_3
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 198
    move v4, v5

    .line 199
    :goto_2
    if-ge v4, v3, :cond_5

    .line 201
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    const-string v6, "Service at "

    .line 206
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 212
    const-string v6, ": "

    .line 214
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    iget-object v6, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 219
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 222
    move-result-object v6

    .line 223
    check-cast v6, Ljava/util/List;

    .line 225
    move v7, v5

    .line 226
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 229
    move-result v8

    .line 230
    if-ge v7, v8, :cond_4

    .line 232
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 235
    move-result-object v8

    .line 236
    check-cast v8, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 238
    iget-object v9, v8, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 240
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :try_start_1
    invoke-virtual {v8, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 244
    monitor-exit v9

    .line 245
    add-int/lit8 v7, v7, 0x1

    .line 247
    goto :goto_3

    .line 248
    :catchall_1
    move-exception p1

    .line 249
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    :try_start_2
    throw p1

    .line 251
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    add-int/lit8 v4, v4, 0x1

    .line 256
    goto :goto_2

    .line 257
    :cond_5
    :goto_4
    iput-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 259
    iput-boolean v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 261
    return-void

    .line 262
    :goto_5
    iput-boolean v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    .line 264
    iput-boolean v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 266
    throw p1
.end method

.method public enforceCallingPermissionForManagement()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "Not implemented by "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 24
    throw v0
.end method

.method public getMaximumTemporaryServiceDurationMs()I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "Not implemented by "

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 24
    throw v0
.end method

.method public final getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceListForUserLocked(I)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 23
    :goto_1
    return-object p0
.end method

.method public final getServiceListForUserLocked(I)Ljava/util/List;
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
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    move v2, p1

    .line 14
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/List;

    .line 26
    if-eqz v1, :cond_0

    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_3

    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    .line 37
    move-result v1

    .line 38
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 40
    if-eqz v2, :cond_1

    .line 42
    iget-boolean v3, v2, Lcom/android/server/infra/ServiceNameBaseResolver;->mIsMultiple:Z

    .line 44
    if-eqz v3, :cond_1

    .line 46
    invoke-virtual {v2, p1}, Lcom/android/server/infra/ServiceNameBaseResolver;->getServiceNameList(I)[Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p0, v0, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->newServiceListLocked(I[Ljava/lang/String;)Ljava/util/List;

    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_0
    if-nez v1, :cond_2

    .line 69
    const/4 v1, 0x0

    .line 70
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 73
    move-result v3

    .line 74
    if-ge v1, v3, :cond_2

    .line 76
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 82
    invoke-virtual {p0, v3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 90
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    move-object v1, v2

    .line 94
    :cond_3
    return-object v1
.end method

.method public getServiceSettingsProperty()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getSupportedUsers()Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUm:Lcom/android/server/pm/UserManagerInternal;

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 11
    const-string/jumbo v1, "lazy-loading UserManagerInternal"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_0
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 19
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 25
    iput-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUm:Lcom/android/server/pm/UserManagerInternal;

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mUm:Lcom/android/server/pm/UserManagerInternal;

    .line 29
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    .line 32
    move-result-object v0

    .line 33
    array-length v1, v0

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    const/4 v3, 0x0

    .line 40
    :goto_0
    if-ge v3, v1, :cond_3

    .line 42
    aget-object v4, v0, v3

    .line 44
    new-instance v5, Lcom/android/server/SystemService$TargetUser;

    .line 46
    invoke-direct {v5, v4}, Lcom/android/server/SystemService$TargetUser;-><init>(Landroid/content/pm/UserInfo;)V

    .line 49
    invoke-virtual {p0, v5}, Lcom/android/server/SystemService;->isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z

    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_2

    .line 55
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return-object v2
.end method

.method public handlePackageRemovedMultiModeLocked(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 3
    if-eqz p2, :cond_0

    .line 5
    const-string/jumbo p2, "handlePackageRemovedMultiModeLocked("

    .line 8
    const-string v0, ")"

    .line 10
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 16
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    return-void
.end method

.method public final isBindInstantServiceAllowed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final isDefaultServiceEnabled(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 4
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 6
    if-nez v0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 15
    iget-object v1, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    iget-object p0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mDefaultServicesDisabled:Landroid/util/SparseBooleanArray;

    .line 20
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 23
    move-result p0

    .line 24
    xor-int/lit8 p0, p0, 0x1

    .line 26
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    return p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 33
    :try_start_4
    throw p0

    .line 34
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 35
    throw p0
.end method

.method public isDisabledLocked(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mDisabledByUserRestriction:Landroid/util/SparseBooleanArray;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public newServiceListLocked(I[Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "newServiceListLocked not implemented. "

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public abstract newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
.end method

.method public onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x258

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    new-instance p1, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;

    .line 7
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p1, p0, v0}, Lcom/android/server/infra/AbstractMasterSystemService$SettingsObserver;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/os/Handler;)V

    .line 14
    :cond_0
    return-void
.end method

.method public onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onServiceNameChanged(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    .line 7
    move-result p3

    .line 8
    invoke-virtual {p0, p1, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceListLocked(IZ)V

    .line 11
    monitor-exit p2

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onServicePackageRestartedLocked(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string/jumbo v0, "onServicePackageRestarted("

    .line 8
    const-string v1, ")"

    .line 10
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 16
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    return-void
.end method

.method public onServicePackageUpdatedLocked(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string/jumbo v0, "onServicePackageUpdated("

    .line 8
    const-string v1, ")"

    .line 10
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 16
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    return-void
.end method

.method public onServicePackageUpdatingLocked(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string/jumbo v0, "onServicePackageUpdatingLocked("

    .line 8
    const-string v1, ")"

    .line 10
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 16
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    return-void
.end method

.method public onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSettingsChanged(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)V

    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceListForUserLocked(I)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 23
    :goto_1
    return-object p0
.end method

.method public final peekServiceListForUserLocked(I)Ljava/util/List;
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
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    move v2, p1

    .line 14
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 17
    move-result p1

    .line 18
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/util/List;

    .line 26
    return-object p0
.end method

.method public registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final removeCachedServiceListLocked(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceListForUserLocked(I)Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_0

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 25
    invoke-virtual {p0, v2, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public final resetTemporaryService(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "resetTemporaryService(): "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 24
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_0

    .line 33
    iget-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 35
    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 37
    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 39
    invoke-virtual {p1, p0}, Lcom/android/server/infra/ServiceNameBaseResolver;->resetTemporaryService(I)V

    .line 42
    :cond_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final setAllowInstantService(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "setAllowInstantService(): "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 24
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mAllowInstantService:Z

    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final setDefaultServiceEnabled(IZ)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "setDefaultServiceEnabled("

    .line 4
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v3, "setDefaultServiceEnabled() for userId "

    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v3, ": "

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 35
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 37
    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 40
    const/4 v3, 0x0

    .line 41
    if-nez v2, :cond_0

    .line 43
    monitor-exit v1

    .line 44
    return v3

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v2, p1, p2}, Lcom/android/server/infra/ServiceNameBaseResolver;->setDefaultServiceEnabled(IZ)Z

    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_2

    .line 53
    iget-boolean v2, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    .line 55
    if-eqz v2, :cond_1

    .line 57
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string p1, "): already "

    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1
    monitor-exit v1

    .line 83
    return v3

    .line 84
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 87
    move-result-object p2

    .line 88
    if-eqz p2, :cond_3

    .line 90
    invoke-virtual {p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCache()V

    .line 93
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    .line 96
    monitor-exit v1

    .line 97
    const/4 p0, 0x1

    .line 98
    return p0

    .line 99
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw p0
.end method

.method public final setTemporaryService(ILjava/lang/String;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    .line 3
    const-string/jumbo v1, "setTemporaryService("

    .line 6
    const-string v2, ") to "

    .line 8
    const-string v3, " for "

    .line 10
    invoke-static {p1, v1, v2, p2, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v1

    .line 14
    const-string/jumbo v2, "ms"

    .line 17
    invoke-static {v1, p3, v2, v0}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 22
    if-nez v0, :cond_0

    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->enforceCallingPermissionForManagement()V

    .line 28
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService;->getMaximumTemporaryServiceDurationMs()I

    .line 34
    move-result v0

    .line 35
    if-gt p3, v0, :cond_2

    .line 37
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->removeSelfFromCache()V

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 54
    filled-new-array {p2}, [Ljava/lang/String;

    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/infra/ServiceNameBaseResolver;->setTemporaryServices(II[Ljava/lang/String;)V

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 63
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0

    .line 65
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 67
    const-string p1, "Max duration is "

    .line 69
    const-string p2, " (called with "

    .line 71
    const-string v1, ")"

    .line 73
    invoke-static {v0, p3, p1, p2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p0
.end method

.method public final updateCachedServiceListLocked(IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, v0, Lcom/android/server/infra/ServiceNameBaseResolver;->mIsMultiple:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    move-result v1

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    move-result v2

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    move v3, p1

    .line 22
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 25
    move-result p2

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceListForUserLocked(I)Ljava/util/List;

    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceListForUserLocked(I)Ljava/util/List;

    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_1

    .line 51
    return-void

    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 53
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    move-result v2

    .line 57
    if-ge v1, v2, :cond_4

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 65
    if-eqz v2, :cond_3

    .line 67
    iget-object v3, v2, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 69
    monitor-enter v3

    .line 70
    :try_start_1
    invoke-virtual {v2, p2}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    .line 73
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_2

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)V

    .line 82
    goto :goto_1

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 91
    invoke-virtual {p0, v2, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V

    .line 94
    :goto_1
    monitor-exit v3

    .line 95
    goto :goto_3

    .line 96
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    throw p0

    .line 98
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    return-void
.end method

.method public final updateCachedServiceLocked(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceListLocked(IZ)V

    .line 8
    return-void
.end method
