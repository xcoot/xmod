.class public final Lcom/android/server/pm/FreeStorageHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FREE_STORAGE_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEnableFreeCacheV2:Z

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x2

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/pm/FreeStorageHelper;->FREE_STORAGE_UNUSED_STATIC_SHARED_LIB_MIN_CACHE_PERIOD:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "fw.free_cache_v2"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/pm/FreeStorageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/pm/FreeStorageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/pm/FreeStorageHelper;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    iput-boolean v2, p0, Lcom/android/server/pm/FreeStorageHelper;->mEnableFreeCacheV2:Z

    .line 22
    .line 23
    return-void
.end method
