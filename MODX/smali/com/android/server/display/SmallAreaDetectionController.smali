.class final Lcom/android/server/display/SmallAreaDetectionController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAllowPkgMap:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/provider/DeviceConfigInterface;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/display/SmallAreaDetectionController;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    .line 18
    iput-object p1, p0, Lcom/android/server/display/SmallAreaDetectionController;->mContext:Landroid/content/Context;

    .line 20
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 22
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 28
    iput-object p1, p0, Lcom/android/server/display/SmallAreaDetectionController;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 30
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/android/server/display/SmallAreaDetectionController$OnPropertiesChangedListener;

    .line 36
    invoke-direct {v1, p0}, Lcom/android/server/display/SmallAreaDetectionController$OnPropertiesChangedListener;-><init>(Lcom/android/server/display/SmallAreaDetectionController;)V

    .line 39
    const-string/jumbo v2, "display_manager"

    .line 42
    invoke-interface {p2, v2, v0, v1}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 45
    new-instance p2, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;

    .line 47
    invoke-direct {p2, p0}, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;-><init>(Lcom/android/server/display/SmallAreaDetectionController;)V

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    .line 53
    return-void
.end method

.method private static native nativeSetSmallAreaDetectionThreshold(IF)V
.end method

.method private static native nativeUpdateSmallAreaDetection([I[F)V
.end method

.method public static setSmallAreaDetectionThreshold(FI)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/android/server/display/SmallAreaDetectionController;->nativeSetSmallAreaDetectionThreshold(IF)V

    .line 4
    return-void
.end method


# virtual methods
.method public final putToAllowlist(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, ":"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    aget-object v0, p1, v0

    .line 14
    const/4 v1, 0x1

    .line 15
    aget-object p1, p1, v1

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 24
    iget-object p0, p0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    .line 26
    check-cast p0, Landroid/util/ArrayMap;

    .line 28
    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    :cond_0
    return-void
.end method

.method public updateAllowlist(Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/display/SmallAreaDetectionController;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    .line 11
    check-cast v2, Landroid/util/ArrayMap;

    .line 13
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz p1, :cond_0

    .line 19
    const-string v3, ","

    .line 21
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    array-length v3, p1

    .line 26
    move v4, v2

    .line 27
    :goto_0
    if-ge v4, v3, :cond_1

    .line 29
    aget-object v5, p1, v4

    .line 31
    invoke-virtual {p0, v5}, Lcom/android/server/display/SmallAreaDetectionController;->putToAllowlist(Ljava/lang/String;)V

    .line 34
    add-int/lit8 v4, v4, 0x1

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_4

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/SmallAreaDetectionController;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object p1

    .line 46
    const v3, 0x1070163

    .line 49
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    array-length v3, p1

    .line 54
    move v4, v2

    .line 55
    :goto_1
    if-ge v4, v3, :cond_1

    .line 57
    aget-object v5, p1, v4

    .line 59
    invoke-virtual {p0, v5}, Lcom/android/server/display/SmallAreaDetectionController;->putToAllowlist(Ljava/lang/String;)V

    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    .line 67
    check-cast p1, Landroid/util/ArrayMap;

    .line 69
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    .line 79
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 82
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    new-instance p1, Landroid/util/SparseArray;

    .line 85
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 88
    move-result v1

    .line 89
    invoke-direct {p1, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 92
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 95
    move-result-object v1

    .line 96
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 99
    move-result-object v1

    .line 100
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_4

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Ljava/lang/Float;

    .line 118
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 121
    iget-object v5, p0, Lcom/android/server/display/SmallAreaDetectionController;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 123
    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 126
    move-result-object v3

    .line 127
    if-eqz v3, :cond_3

    .line 129
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 132
    move-result v3

    .line 133
    invoke-virtual {p1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 140
    move-result v0

    .line 141
    new-array v0, v0, [I

    .line 143
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 146
    move-result v1

    .line 147
    new-array v1, v1, [F

    .line 149
    :goto_3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 152
    move-result v3

    .line 153
    if-ge v2, v3, :cond_5

    .line 155
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 158
    move-result v3

    .line 159
    aput v3, v0, v2

    .line 161
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Ljava/lang/Float;

    .line 167
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 170
    move-result v3

    .line 171
    aput v3, v1, v2

    .line 173
    add-int/lit8 v2, v2, 0x1

    .line 175
    goto :goto_3

    .line 176
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/SmallAreaDetectionController;->updateSmallAreaDetection([I[F)V

    .line 179
    return-void

    .line 180
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    throw p0
.end method

.method public updateSmallAreaDetection([I[F)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/display/SmallAreaDetectionController;->nativeUpdateSmallAreaDetection([I[F)V

    .line 4
    return-void
.end method
