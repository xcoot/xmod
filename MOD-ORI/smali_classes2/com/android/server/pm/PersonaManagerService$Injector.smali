.class public final Lcom/android/server/pm/PersonaManagerService$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataDir:Ljava/io/File;

.field public final mObject:Ljava/lang/Object;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerTracedLock;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mDataDir:Ljava/io/File;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getPersonaPolicyManagerService()Lcom/android/server/knox/PersonaPolicyManagerService;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-class v0, Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/android/server/knox/PersonaPolicyManagerService;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0

    .line 25
    goto :goto_2

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0

    .line 28
    :cond_1
    :goto_2
    sget-object p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    .line 29
    .line 30
    return-object p0
.end method
