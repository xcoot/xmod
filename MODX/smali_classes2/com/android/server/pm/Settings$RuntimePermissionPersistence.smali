.class public final Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sRandom:Ljava/util/Random;


# instance fields
.field public final mAsyncHandler:Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

.field public mExtendedFingerprint:Ljava/lang/String;

.field public final mFingerprints:Landroid/util/SparseArray;

.field public final mInvokeWriteUserStateAsyncCallback:Ljava/util/function/Consumer;

.field public final mIsLegacyPermissionStateStale:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

.field public mLastWriteDoneTimeMillis:J

.field public final mLock:Ljava/lang/Object;

.field public final mPendingStatesToWrite:Landroid/util/SparseArray;

.field public final mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

.field public final mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

.field public final mPersistenceHandler:Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

.field public final mPersistenceLock:Ljava/lang/Object;

.field public final mVersions:Landroid/util/SparseIntArray;

.field public final mWriteScheduled:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->sRandom:Ljava/util/Random;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/permission/persistence/RuntimePermissionsPersistence;Lcom/android/server/pm/Settings$3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceHandler:Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/Object;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    const-wide/16 v0, 0x0

    .line 35
    .line 36
    iput-wide v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastWriteDoneTimeMillis:J

    .line 37
    .line 38
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    .line 44
    .line 45
    new-instance v0, Landroid/util/SparseLongArray;

    .line 46
    .line 47
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 51
    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mIsLegacyPermissionStateStale:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    .line 66
    .line 67
    new-instance v0, Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 73
    .line 74
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    .line 80
    .line 81
    new-instance v0, Landroid/util/SparseArray;

    .line 82
    .line 83
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    .line 87
    .line 88
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    .line 89
    .line 90
    iput-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mInvokeWriteUserStateAsyncCallback:Ljava/util/function/Consumer;

    .line 91
    .line 92
    return-void
.end method

.method public static getPackagePermissions(ILcom/android/server/utils/WatchedArrayMap;)Ljava/util/Map;
    .locals 7

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_2

    .line 14
    .line 15
    iget-object v3, p1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, p1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 30
    .line 31
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-static {v5, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getPermissionsFromPermissionsState(Lcom/android/server/pm/permission/LegacyPermissionState;I)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    move-object v6, v5

    .line 46
    check-cast v6, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_0

    .line 53
    .line 54
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->isInstallPermissionsFixed()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_0

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {v0, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    return-object v0
.end method

.method public static getPermissionsFromPermissionsState(Lcom/android/server/pm/permission/LegacyPermissionState;I)Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 25
    .line 26
    new-instance v1, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 29
    .line 30
    iget-boolean v3, v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    .line 31
    .line 32
    iget v0, v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    .line 33
    .line 34
    invoke-direct {v1, v2, v3, v0}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;-><init>(Ljava/lang/String;ZI)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-object p1
.end method

.method public static getShareUsersPermissions(ILcom/android/server/utils/WatchedArrayMap;)Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    iget-object v3, p1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, p1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 24
    .line 25
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    .line 30
    .line 31
    iget-object v4, v4, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 32
    .line 33
    invoke-static {v4, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getPermissionsFromPermissionsState(Lcom/android/server/pm/permission/LegacyPermissionState;I)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-object v0
.end method

.method public static readPermissionsState(Ljava/util/List;Lcom/android/server/pm/permission/LegacyPermissionState;I)V
    .locals 7

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->isGranted()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->getFlags()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    new-instance v5, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    invoke-direct {v5, v3, v6, v4, v2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v5, p2}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public final parseLegacyPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;I)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eq v1, v2, :cond_4

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    if-ne v1, v3, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-le v4, v0, :cond_4

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_2

    .line 27
    :cond_1
    :goto_1
    if-eq v1, v3, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    if-ne v1, v3, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const v4, 0x317b13

    .line 42
    .line 43
    .line 44
    if-eq v3, v4, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const-string v3, "item"

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    const-string/jumbo v1, "name"

    .line 56
    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-interface {p1, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v4, "granted"

    .line 64
    .line 65
    invoke-interface {p1, v3, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const-string v5, "flags"

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    invoke-interface {p1, v3, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    new-instance v5, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 77
    .line 78
    invoke-direct {v5, v1, v2, v4, v3}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v5, p3}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    monitor-exit p0

    .line 86
    return-void

    .line 87
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p1
.end method

.method public final parseLegacyRuntimePermissions(Lcom/android/modules/utils/TypedXmlPullParser;ILcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v2, v3, :cond_c

    .line 14
    .line 15
    const/4 v4, 0x3

    .line 16
    if-ne v2, v4, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-le v5, v1, :cond_c

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_1
    :goto_1
    if-eq v2, v4, :cond_0

    .line 29
    .line 30
    const/4 v4, 0x4

    .line 31
    if-ne v2, v4, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const v5, 0x1b1cc

    .line 43
    .line 44
    .line 45
    const/4 v6, 0x2

    .line 46
    const/4 v7, -0x1

    .line 47
    if-eq v4, v5, :cond_5

    .line 48
    .line 49
    const v5, 0x98dd20f

    .line 50
    .line 51
    .line 52
    if-eq v4, v5, :cond_4

    .line 53
    .line 54
    const v5, 0x1cf15833

    .line 55
    .line 56
    .line 57
    if-eq v4, v5, :cond_3

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    const-string/jumbo v4, "shared-user"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_6

    .line 68
    .line 69
    move v2, v6

    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const-string/jumbo v4, "runtime-permissions"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_6

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    const-string/jumbo v4, "pkg"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_6

    .line 90
    .line 91
    move v2, v3

    .line 92
    goto :goto_3

    .line 93
    :cond_6
    :goto_2
    move v2, v7

    .line 94
    :goto_3
    const/4 v4, 0x0

    .line 95
    if-eqz v2, :cond_b

    .line 96
    .line 97
    if-eq v2, v3, :cond_9

    .line 98
    .line 99
    if-eq v2, v6, :cond_7

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_7
    const-string/jumbo v2, "name"

    .line 103
    .line 104
    .line 105
    invoke-interface {p1, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    iget-object v3, p4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 110
    .line 111
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 116
    .line 117
    if-nez v3, :cond_8

    .line 118
    .line 119
    const-string v3, "PackageManager"

    .line 120
    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v5, "Unknown shared user:"

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_8
    iget-object v2, v3, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 147
    .line 148
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseLegacyPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;I)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :cond_9
    const-string/jumbo v2, "name"

    .line 154
    .line 155
    .line 156
    invoke-interface {p1, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    iget-object v3, p3, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 161
    .line 162
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 167
    .line 168
    if-nez v3, :cond_a

    .line 169
    .line 170
    const-string v3, "PackageManager"

    .line 171
    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v5, "Unknown package:"

    .line 178
    .line 179
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_a
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseLegacyPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;I)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_b
    const-string/jumbo v2, "version"

    .line 207
    .line 208
    .line 209
    invoke-interface {p1, v4, v2, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    .line 214
    .line 215
    invoke-virtual {v3, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 216
    .line 217
    .line 218
    const-string v2, "fingerprint"

    .line 219
    .line 220
    invoke-interface {p1, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 225
    .line 226
    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_c
    monitor-exit v0

    .line 232
    return-void

    .line 233
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    throw p0
.end method

.method public final readStateForUserSync(ILcom/android/server/pm/Settings$VersionInfo;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Ljava/io/File;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v1, v2}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->readForUser(Landroid/os/UserHandle;)Lcom/android/permission/persistence/RuntimePermissionsState;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const-string p2, "Failed parsing permissions file: "

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_1
    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    :try_start_2
    new-instance v1, Landroid/util/AtomicFile;

    .line 33
    .line 34
    invoke-direct {v1, p5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 38
    .line 39
    .line 40
    move-result-object v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    :try_start_3
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p0, v2, p1, p3, p4}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseLegacyRuntimePermissions(Lcom/android/modules/utils/TypedXmlPullParser;ILcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    .line 47
    .line 48
    :try_start_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 49
    .line 50
    .line 51
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    goto :goto_1

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    :try_start_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 74
    :goto_0
    :try_start_6
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :catch_1
    const-string p2, "PackageManager"

    .line 79
    .line 80
    const-string p3, "No permissions state"

    .line 81
    .line 82
    invoke-static {p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 86
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :goto_2
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 91
    throw p0

    .line 92
    :cond_1
    iget-object p5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 93
    .line 94
    monitor-enter p5

    .line 95
    :try_start_8
    invoke-virtual {v1}, Lcom/android/permission/persistence/RuntimePermissionsState;->getVersion()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    const/4 v2, -0x1

    .line 100
    if-ne v0, v2, :cond_2

    .line 101
    .line 102
    move v0, v2

    .line 103
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    .line 104
    .line 105
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/android/permission/persistence/RuntimePermissionsState;->getFingerprint()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget p0, p2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 118
    .line 119
    const/4 p2, 0x1

    .line 120
    const/16 v0, 0x1e

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    if-ge p0, v0, :cond_3

    .line 124
    .line 125
    move p0, p2

    .line 126
    goto :goto_3

    .line 127
    :cond_3
    move p0, v2

    .line 128
    :goto_3
    invoke-virtual {v1}, Lcom/android/permission/persistence/RuntimePermissionsState;->getPackagePermissions()Ljava/util/Map;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v3, p3, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 133
    .line 134
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    move v4, v2

    .line 139
    :goto_4
    if-ge v4, v3, :cond_6

    .line 140
    .line 141
    iget-object v5, p3, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 142
    .line 143
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Ljava/lang/String;

    .line 148
    .line 149
    iget-object v6, p3, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 150
    .line 151
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 156
    .line 157
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    check-cast v7, Ljava/util/List;

    .line 162
    .line 163
    if-eqz v7, :cond_4

    .line 164
    .line 165
    iget-object v5, v6, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 166
    .line 167
    invoke-static {v7, v5, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readPermissionsState(Ljava/util/List;Lcom/android/server/pm/permission/LegacyPermissionState;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, p2, p2}, Lcom/android/server/pm/PackageSetting;->setBoolean(IZ)V

    .line 171
    .line 172
    .line 173
    goto :goto_5

    .line 174
    :catchall_2
    move-exception p0

    .line 175
    goto :goto_8

    .line 176
    :cond_4
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    if-nez v7, :cond_5

    .line 181
    .line 182
    if-nez p0, :cond_5

    .line 183
    .line 184
    const-string v7, "PackageSettings"

    .line 185
    .line 186
    const-string v8, "Missing permission state for package %s on user %d"

    .line 187
    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    filled-new-array {v5, v9}, [Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-static {v7, v8, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    iget-object v5, v6, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 200
    .line 201
    invoke-virtual {v5, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionState;->setMissing(IZ)V

    .line 202
    .line 203
    .line 204
    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_6
    invoke-virtual {v1}, Lcom/android/permission/persistence/RuntimePermissionsState;->getSharedUserPermissions()Ljava/util/Map;

    .line 208
    .line 209
    .line 210
    move-result-object p3

    .line 211
    iget-object v0, p4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 212
    .line 213
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    :goto_6
    if-ge v2, v0, :cond_9

    .line 218
    .line 219
    iget-object v1, p4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Ljava/lang/String;

    .line 226
    .line 227
    iget-object v3, p4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 228
    .line 229
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 234
    .line 235
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    check-cast v4, Ljava/util/List;

    .line 240
    .line 241
    if-eqz v4, :cond_7

    .line 242
    .line 243
    iget-object v1, v3, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 244
    .line 245
    invoke-static {v4, v1, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readPermissionsState(Ljava/util/List;Lcom/android/server/pm/permission/LegacyPermissionState;I)V

    .line 246
    .line 247
    .line 248
    goto :goto_7

    .line 249
    :cond_7
    if-nez p0, :cond_8

    .line 250
    .line 251
    const-string v4, "PackageSettings"

    .line 252
    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    const-string v6, "Missing permission state for shared user: "

    .line 259
    .line 260
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    iget-object v1, v3, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 274
    .line 275
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionState;->setMissing(IZ)V

    .line 276
    .line 277
    .line 278
    :cond_8
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_9
    monitor-exit p5

    .line 282
    return-void

    .line 283
    :goto_8
    monitor-exit p5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 284
    throw p0

    .line 285
    :catchall_3
    move-exception p0

    .line 286
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 287
    throw p0
.end method

.method public final writePendingStates()V
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/permission/persistence/RuntimePermissionsState;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v2

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    .line 41
    .line 42
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v3, v1}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->writeForUser(Lcom/android/permission/persistence/RuntimePermissionsState;Landroid/os/UserHandle;)V

    .line 47
    .line 48
    .line 49
    monitor-exit v2

    .line 50
    goto :goto_0

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    throw p0

    .line 54
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    throw p0
.end method

.method public final writeStateForUser(ILcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;Z)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v10, p1

    .line 3
    .line 4
    move-object/from16 v11, p5

    .line 5
    .line 6
    const-string/jumbo v1, "writePerm"

    .line 7
    .line 8
    .line 9
    const-wide/32 v12, 0x40000

    .line 10
    .line 11
    .line 12
    invoke-static {v12, v13, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "PackageSettings"

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "++ writeStateForUserSyncLPr("

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ")"

    .line 28
    .line 29
    invoke-static {v2, v3, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v2, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    .line 36
    .line 37
    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 38
    .line 39
    .line 40
    iget-object v2, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    .line 41
    .line 42
    invoke-virtual {v2, v10}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 43
    .line 44
    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    new-instance v14, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    move-object v1, v14

    .line 49
    move-object v2, p0

    .line 50
    move-object/from16 v3, p6

    .line 51
    .line 52
    move/from16 v4, p7

    .line 53
    .line 54
    move-object/from16 v5, p2

    .line 55
    .line 56
    move/from16 v6, p1

    .line 57
    .line 58
    move-object/from16 v7, p3

    .line 59
    .line 60
    move-object/from16 v8, p4

    .line 61
    .line 62
    move-object/from16 v9, p5

    .line 63
    .line 64
    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;Lcom/android/server/pm/PackageManagerTracedLock;ZLcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;ILcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Landroid/os/Handler;)V

    .line 65
    .line 66
    .line 67
    if-eqz v11, :cond_0

    .line 68
    .line 69
    invoke-virtual {v11, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v14}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->run()V

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v1

    .line 80
    iput-wide v1, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastWriteDoneTimeMillis:J

    .line 81
    .line 82
    const-string v0, "PackageSettings"

    .line 83
    .line 84
    const-string v1, "-- writeStateForUserSyncLPr("

    .line 85
    .line 86
    const-string v2, ")"

    .line 87
    .line 88
    invoke-static {v10, v1, v2, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    throw v0
.end method

.method public final writeStateForUserAsync(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mIsLegacyPermissionStateStale:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    sget-object v4, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->sRandom:Ljava/util/Random;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const-wide v6, 0x4082c00000000000L    # 600.0

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    mul-double/2addr v4, v6

    .line 26
    const-wide v6, -0x3f8d400000000000L    # -300.0

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    add-double/2addr v4, v6

    .line 32
    double-to-long v4, v4

    .line 33
    const-wide/16 v6, 0x3e8

    .line 34
    .line 35
    add-long/2addr v4, v6

    .line 36
    iget-object v6, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    .line 37
    .line 38
    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Landroid/util/SparseLongArray;->get(I)J

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    sub-long v8, v2, v6

    .line 56
    .line 57
    const-wide/16 v10, 0x7d0

    .line 58
    .line 59
    cmp-long v1, v8, v10

    .line 60
    .line 61
    if-ltz v1, :cond_0

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 70
    .line 71
    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    add-long/2addr v6, v10

    .line 77
    sub-long/2addr v6, v2

    .line 78
    const-wide/16 v1, 0x0

    .line 79
    .line 80
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    .line 89
    .line 90
    invoke-virtual {v3, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    .line 95
    .line 96
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 101
    .line 102
    invoke-virtual {v6, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 103
    .line 104
    .line 105
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    .line 106
    .line 107
    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    .line 112
    .line 113
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    .line 117
    .line 118
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 119
    .line 120
    .line 121
    :goto_0
    monitor-exit v0

    .line 122
    return-void

    .line 123
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    throw p0
.end method
