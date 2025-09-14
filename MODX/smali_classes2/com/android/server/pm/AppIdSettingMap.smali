.class public final Lcom/android/server/pm/AppIdSettingMap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mFirstAvailableAppId:I

.field public final mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

.field public final mNonSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

.field public final mSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    .line 2
    iput v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    .line 3
    new-instance v0, Lcom/android/server/utils/WatchedArrayList;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayList;-><init>(I)V

    .line 5
    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    .line 6
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 7
    const-string v2, "AppIdSettingMap.mNonSystemSettings"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v0, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 8
    iput-object v1, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 9
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    .line 10
    new-instance v1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 11
    const-string v2, "AppIdSettingMap.mSystemSettings"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v0, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V

    .line 12
    iput-object v1, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/AppIdSettingMap;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    .line 14
    iput v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    .line 15
    iget-object v0, p1, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedArrayList;

    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    .line 16
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 17
    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 19
    iget-object p1, p1, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/utils/WatchedSparseArray;

    iput-object p1, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    .line 20
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 21
    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettingsSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public final acquireAndRegisterNewAppId(Lcom/android/server/pm/SettingBase;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mFirstAvailableAppId:I

    .line 10
    .line 11
    add-int/lit16 p0, p0, -0x2710

    .line 12
    .line 13
    :goto_0
    if-ge p0, v1, :cond_1

    .line 14
    .line 15
    iget-object v2, v0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, p0, p1}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :goto_1
    add-int/lit16 p0, p0, 0x2710

    .line 27
    .line 28
    return p0

    .line 29
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 p0, 0x270f

    .line 33
    .line 34
    if-le v1, p0, :cond_4

    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    :goto_2
    if-ge p0, v1, :cond_3

    .line 38
    .line 39
    iget-object v2, v0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, p0, p1}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    const/4 p0, -0x1

    .line 55
    return p0

    .line 56
    :cond_4
    iget-object p0, v0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayList;->registerChild(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 65
    .line 66
    .line 67
    add-int/lit16 v1, v1, 0x2710

    .line 68
    .line 69
    return v1
.end method

.method public final registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x2710

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, " name="

    .line 6
    .line 7
    const/4 v4, 0x5

    .line 8
    if-lt p1, v1, :cond_2

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    .line 11
    .line 12
    iget-object v5, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    add-int/lit16 v1, p1, -0x2710

    .line 19
    .line 20
    :goto_0
    if-lt v1, v5, :cond_0

    .line 21
    .line 22
    iget-object v6, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v7}, Lcom/android/server/utils/WatchedArrayList;->registerChild(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 32
    .line 33
    .line 34
    add-int/2addr v5, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v5, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p2, "Adding duplicate app id: "

    .line 47
    .line 48
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 65
    .line 66
    invoke-static {v4, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return v2

    .line 70
    :cond_1
    invoke-virtual {p0, v1, p2}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string p2, "Adding duplicate shared id: "

    .line 87
    .line 88
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 105
    .line 106
    invoke-static {v4, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return v2

    .line 110
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :goto_1
    return v0
.end method

.method public final replaceSetting(ILcom/android/server/pm/SettingBase;)V
    .locals 2

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    if-lt p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mNonSystemSettings:Lcom/android/server/utils/WatchedArrayList;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/lit16 v0, p1, -0x2710

    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0, p2}, Lcom/android/server/utils/WatchedArrayList;->set(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "Error in package manager settings: calling replaceAppIdLpw to replace SettingBase at appId="

    .line 22
    .line 23
    const-string p2, " but nothing is replaced."

    .line 24
    .line 25
    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 30
    .line 31
    const/4 p1, 0x5

    .line 32
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/AppIdSettingMap;->mSystemSettings:Lcom/android/server/utils/WatchedSparseArray;

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method
