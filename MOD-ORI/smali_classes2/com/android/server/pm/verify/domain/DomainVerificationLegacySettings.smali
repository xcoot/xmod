.class public final Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mStates:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public final getUserState(ILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    monitor-exit v0

    .line 26
    return p2

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final remove(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->attached:Z

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->attached:Z

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    monitor-exit v0

    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method
