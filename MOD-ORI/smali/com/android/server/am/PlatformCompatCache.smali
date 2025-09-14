.class public final Lcom/android/server/am/PlatformCompatCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CACHED_COMPAT_CHANGE_IDS_MAPPING:[J

.field public static sPlatformCompatCache:Lcom/android/server/am/PlatformCompatCache;


# instance fields
.field public final mCacheEnabled:Z

.field public final mCaches:Landroid/util/LongSparseArray;

.field public final mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/am/PlatformCompatCache;->CACHED_COMPAT_CHANGE_IDS_MAPPING:[J

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 8
        0x81f62a4
        0x81e8a55
        0xaf7340d
    .end array-data
.end method

.method public constructor <init>([J)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/LongSparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    .line 10
    .line 11
    const-string/jumbo v0, "platform_compat"

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    instance-of v2, v1, Lcom/android/server/compat/PlatformCompat;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/server/compat/PlatformCompat;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/am/PlatformCompatCache;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 31
    .line 32
    array-length v0, p1

    .line 33
    :goto_0
    if-ge v4, v0, :cond_0

    .line 34
    .line 35
    aget-wide v1, p1, v4

    .line 36
    .line 37
    iget-object v5, p0, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    .line 38
    .line 39
    new-instance v6, Lcom/android/server/am/PlatformCompatCache$CacheItem;

    .line 40
    .line 41
    iget-object v7, p0, Lcom/android/server/am/PlatformCompatCache;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 42
    .line 43
    invoke-direct {v6, v7, v1, v2}, Lcom/android/server/am/PlatformCompatCache$CacheItem;-><init>(Lcom/android/server/compat/PlatformCompat;J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v1, v2, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iput-object v3, p0, Lcom/android/server/am/PlatformCompatCache;->mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/android/server/am/PlatformCompatCache;->mCacheEnabled:Z

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-static {v1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/android/server/am/PlatformCompatCache;->mIPlatformCompatProxy:Lcom/android/internal/compat/IPlatformCompat;

    .line 63
    .line 64
    iput-object v3, p0, Lcom/android/server/am/PlatformCompatCache;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 65
    .line 66
    iput-boolean v4, p0, Lcom/android/server/am/PlatformCompatCache;->mCacheEnabled:Z

    .line 67
    .line 68
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/PlatformCompatCache;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/am/PlatformCompatCache;->sPlatformCompatCache:Lcom/android/server/am/PlatformCompatCache;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/am/PlatformCompatCache;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    fill-array-data v1, :array_0

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/android/server/am/PlatformCompatCache;-><init>([J)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/android/server/am/PlatformCompatCache;->sPlatformCompatCache:Lcom/android/server/am/PlatformCompatCache;

    .line 17
    .line 18
    :cond_0
    sget-object v0, Lcom/android/server/am/PlatformCompatCache;->sPlatformCompatCache:Lcom/android/server/am/PlatformCompatCache;

    .line 19
    .line 20
    return-object v0

    .line 21
    :array_0
    .array-data 8
        0x81f62a4
        0x81e8a55
        0xaf7340d
    .end array-data
.end method
