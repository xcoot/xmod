.class public abstract Lcom/android/server/appfunctions/MetadataSyncPerUser;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sLock:Ljava/lang/Object;

.field public static final sPerUserMetadataSyncAdapter:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sPerUserMetadataSyncAdapter:Landroid/util/SparseArray;

    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    sput-object v0, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sLock:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public static getPerUserMetadataSyncAdapter(Landroid/os/UserHandle;Landroid/content/Context;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)Lcom/android/server/appfunctions/MetadataSyncAdapter;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sPerUserMetadataSyncAdapter:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/android/server/appfunctions/MetadataSyncAdapter;

    .line 17
    if-nez v2, :cond_0

    .line 19
    const-class v3, Landroid/app/appsearch/AppSearchManager;

    .line 21
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/app/appsearch/AppSearchManager;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    move-result-object p1

    .line 31
    if-eqz v3, :cond_0

    .line 33
    new-instance v2, Lcom/android/server/appfunctions/MetadataSyncAdapter;

    .line 35
    invoke-direct {v2, p1, v3, p2}, Lcom/android/server/appfunctions/MetadataSyncAdapter;-><init>(Landroid/content/pm/PackageManager;Landroid/app/appsearch/AppSearchManager;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)V

    .line 38
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 41
    move-result p0

    .line 42
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    monitor-exit v0

    .line 46
    return-object v2

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    monitor-exit v0

    .line 50
    return-object v2

    .line 51
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method
