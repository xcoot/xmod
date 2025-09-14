.class public final Lcom/android/server/appop/AppOpMigrationHelperImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAppIdAppOpModes:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public mPackageAppOpModes:Landroid/util/SparseArray;

.field public mVersionAtBoot:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mAppIdAppOpModes:Landroid/util/SparseArray;

    .line 7
    iput-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mPackageAppOpModes:Landroid/util/SparseArray;

    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mLock:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public static getAppOpModesForOpName(Landroid/util/SparseIntArray;)Ljava/util/Map;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    .line 4
    move-result v0

    .line 5
    new-instance v1, Landroid/util/ArrayMap;

    .line 7
    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 13
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 20
    move-result v4

    .line 21
    invoke-static {v3}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final getLegacyAppOpVersion()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mAppIdAppOpModes:Landroid/util/SparseArray;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mPackageAppOpModes:Landroid/util/SparseArray;

    .line 10
    if-nez v1, :cond_1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->readLegacyAppOpState()V

    .line 18
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget p0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mVersionAtBoot:I

    .line 21
    return p0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method

.method public final readLegacyAppOpState()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/util/AtomicFile;

    .line 7
    new-instance v2, Ljava/io/File;

    .line 9
    const-string v3, "appops.xml"

    .line 11
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 22
    new-instance v2, Landroid/util/SparseArray;

    .line 24
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 27
    invoke-static {v1, v0, v2}, Lcom/android/server/appop/LegacyAppOpStateParser;->readState(Landroid/util/AtomicFile;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    .line 30
    move-result v1

    .line 31
    const/4 v3, -0x2

    .line 32
    const/4 v4, -0x1

    .line 33
    const/4 v5, 0x0

    .line 34
    if-eq v1, v3, :cond_1

    .line 36
    if-eq v1, v4, :cond_0

    .line 38
    iput v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mVersionAtBoot:I

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iput v5, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mVersionAtBoot:I

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iput v4, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mVersionAtBoot:I

    .line 46
    :goto_0
    new-instance v1, Landroid/util/SparseArray;

    .line 48
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 51
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 54
    move-result v3

    .line 55
    move v4, v5

    .line 56
    :goto_1
    if-ge v4, v3, :cond_3

    .line 58
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 61
    move-result v6

    .line 62
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 65
    move-result v7

    .line 66
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v8

    .line 70
    check-cast v8, Ljava/util/Map;

    .line 72
    if-nez v8, :cond_2

    .line 74
    new-instance v8, Landroid/util/ArrayMap;

    .line 76
    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 79
    invoke-virtual {v1, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    :cond_2
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 85
    move-result-object v7

    .line 86
    check-cast v7, Landroid/util/SparseIntArray;

    .line 88
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    .line 91
    move-result v6

    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v6

    .line 96
    invoke-static {v7}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->getAppOpModesForOpName(Landroid/util/SparseIntArray;)Ljava/util/Map;

    .line 99
    move-result-object v7

    .line 100
    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    add-int/lit8 v4, v4, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    iput-object v1, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mAppIdAppOpModes:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    .line 110
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 113
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 116
    move-result v1

    .line 117
    move v3, v5

    .line 118
    :goto_2
    if-ge v3, v1, :cond_6

    .line 120
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 123
    move-result v4

    .line 124
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 127
    move-result-object v6

    .line 128
    check-cast v6, Ljava/util/Map;

    .line 130
    if-nez v6, :cond_4

    .line 132
    new-instance v6, Landroid/util/ArrayMap;

    .line 134
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 137
    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    :cond_4
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 143
    move-result-object v4

    .line 144
    check-cast v4, Landroid/util/ArrayMap;

    .line 146
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 149
    move-result v7

    .line 150
    move v8, v5

    .line 151
    :goto_3
    if-ge v8, v7, :cond_5

    .line 153
    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 156
    move-result-object v9

    .line 157
    check-cast v9, Ljava/lang/String;

    .line 159
    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 162
    move-result-object v10

    .line 163
    check-cast v10, Landroid/util/SparseIntArray;

    .line 165
    invoke-static {v10}, Lcom/android/server/appop/AppOpMigrationHelperImpl;->getAppOpModesForOpName(Landroid/util/SparseIntArray;)Ljava/util/Map;

    .line 168
    move-result-object v10

    .line 169
    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    add-int/lit8 v8, v8, 0x1

    .line 174
    goto :goto_3

    .line 175
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 177
    goto :goto_2

    .line 178
    :cond_6
    iput-object v0, p0, Lcom/android/server/appop/AppOpMigrationHelperImpl;->mPackageAppOpModes:Landroid/util/SparseArray;

    .line 180
    return-void
.end method
