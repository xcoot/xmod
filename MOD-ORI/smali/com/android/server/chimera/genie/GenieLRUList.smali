.class public final Lcom/android/server/chimera/genie/GenieLRUList;
.super Ljava/util/LinkedHashMap;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static instance:Lcom/android/server/chimera/genie/GenieLRUList;

.field public static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/chimera/genie/GenieLRUList;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    sget v0, Lcom/android/server/chimera/genie/GenieConfigurations;->MODEL_COUNT:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-direct {p0, v0, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static getInstance()Lcom/android/server/chimera/genie/GenieLRUList;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/chimera/genie/GenieLRUList;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/chimera/genie/GenieLRUList;->instance:Lcom/android/server/chimera/genie/GenieLRUList;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/chimera/genie/GenieLRUList;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/android/server/chimera/genie/GenieLRUList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/server/chimera/genie/GenieLRUList;->instance:Lcom/android/server/chimera/genie/GenieLRUList;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    sget-object v0, Lcom/android/server/chimera/genie/GenieLRUList;->instance:Lcom/android/server/chimera/genie/GenieLRUList;

    .line 20
    .line 21
    return-object v0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method
