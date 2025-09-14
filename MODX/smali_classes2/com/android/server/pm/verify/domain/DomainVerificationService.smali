.class public final Lcom/android/server/pm/verify/domain/DomainVerificationService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;


# instance fields
.field public final mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

.field public mCanSendBroadcasts:Z

.field public final mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

.field public mConnection:Lcom/android/server/pm/DomainVerificationConnection;

.field public final mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

.field public final mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

.field public final mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

.field public final mLock:Ljava/lang/Object;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

.field public final mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

.field public final mShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

.field public final mStub:Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;

.field public final mSystemConfig:Lcom/android/server/SystemConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mStub:Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSystemConfig:Lcom/android/server/SystemConfig;

    .line 33
    .line 34
    iput-object p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 35
    .line 36
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 37
    .line 38
    invoke-direct {v0, p3, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;-><init>(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/SystemConfig;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 42
    .line 43
    new-instance p2, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    .line 44
    .line 45
    invoke-direct {p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationCollector;)V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    .line 49
    .line 50
    new-instance p2, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 51
    .line 52
    invoke-direct {p2, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 56
    .line 57
    new-instance p1, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    .line 58
    .line 59
    invoke-direct {p1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationCollector;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    .line 63
    .line 64
    new-instance p1, Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    .line 65
    .line 66
    invoke-direct {p1, p0}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;-><init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    .line 70
    .line 71
    new-instance p1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    .line 72
    .line 73
    invoke-direct {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    .line 77
    .line 78
    return-void
.end method

.method public static addIfShouldBroadcastLocked(Ljava/util/Collection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-boolean p2, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mHasAutoVerifyDomains:Z

    .line 4
    .line 5
    if-nez p2, :cond_3

    .line 6
    .line 7
    :cond_0
    iget-boolean p2, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mHasAutoVerifyDomains:Z

    .line 8
    .line 9
    if-nez p2, :cond_1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    iget-object p2, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v2}, Landroid/content/pm/verify/domain/DomainVerificationState;->isDefault(I)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 42
    .line 43
    check-cast p0, Landroid/util/ArraySet;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :goto_1
    return-void
.end method

.method public static applyPreVerifiedState(Landroid/util/ArrayMap;Landroid/util/ArraySet;Landroid/content/pm/verify/domain/DomainSet;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    const/16 v1, 0x8

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-void
.end method

.method public static debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    const-string p3, "approved"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p3, "denied"

    .line 7
    .line 8
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, " was "

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, " for "

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, " for user "

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p0, ": "

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "DomainVerificationServiceApproval"

    .line 53
    .line 54
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static fillInfoMapForSamePackage(Landroid/util/ArrayMap;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p0, v1, v2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public static indexOfIntentFilterEntry(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/ResolveInfo;)I
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 17
    .line 18
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getComponentName()Landroid/content/ComponentName;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    return v1

    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p0, -0x1

    .line 41
    return p0
.end method


# virtual methods
.method public final addPackage(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/verify/domain/DomainSet;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getDomainSetId()Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object v9

    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v10

    .line 11
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    iget-object v1, v1, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 23
    .line 24
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 25
    const/4 v11, 0x1

    .line 26
    const/4 v13, 0x0

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    move v14, v13

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    .line 32
    .line 33
    iget-object v3, v1, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v3

    .line 36
    :try_start_1
    iget-object v1, v1, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 43
    .line 44
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v2, v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mBackupSignatureHash:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-static {v3}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    move v14, v11

    .line 68
    const/4 v1, 0x0

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    move v14, v11

    .line 71
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 72
    .line 73
    .line 74
    move-result-object v15

    .line 75
    iget-object v2, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 76
    .line 77
    invoke-virtual {v2, v15, v11, v11}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    xor-int/lit8 v16, v2, 0x1

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    move/from16 v17, v11

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move/from16 v17, v13

    .line 93
    .line 94
    :goto_1
    if-eqz v17, :cond_4

    .line 95
    .line 96
    new-instance v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 97
    .line 98
    iget-object v2, v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v5, v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 101
    .line 102
    iget-object v6, v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    .line 103
    .line 104
    new-instance v18, Landroid/util/ArrayMap;

    .line 105
    .line 106
    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    .line 107
    .line 108
    .line 109
    const/16 v19, 0x0

    .line 110
    .line 111
    move-object v1, v7

    .line 112
    move-object v3, v9

    .line 113
    move/from16 v4, v16

    .line 114
    .line 115
    move-object v12, v7

    .line 116
    move-object/from16 v7, v19

    .line 117
    .line 118
    move-object v11, v8

    .line 119
    move-object/from16 v8, v18

    .line 120
    .line 121
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v12, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 125
    .line 126
    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 130
    .line 131
    const/4 v2, 0x1

    .line 132
    invoke-virtual {v1, v15, v13, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v2, v12, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    .line 137
    .line 138
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    move v4, v13

    .line 143
    :goto_2
    if-ge v4, v3, :cond_3

    .line 144
    .line 145
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 150
    .line 151
    iget-object v5, v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 152
    .line 153
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 154
    .line 155
    .line 156
    add-int/lit8 v4, v4, 0x1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_3
    :goto_3
    move-object v7, v12

    .line 160
    goto :goto_4

    .line 161
    :cond_4
    move-object v11, v8

    .line 162
    new-instance v12, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 163
    .line 164
    new-instance v5, Landroid/util/ArrayMap;

    .line 165
    .line 166
    invoke-direct {v5, v13}, Landroid/util/ArrayMap;-><init>(I)V

    .line 167
    .line 168
    .line 169
    new-instance v6, Landroid/util/SparseArray;

    .line 170
    .line 171
    invoke-direct {v6, v13}, Landroid/util/SparseArray;-><init>(I)V

    .line 172
    .line 173
    .line 174
    new-instance v8, Landroid/util/ArrayMap;

    .line 175
    .line 176
    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 177
    .line 178
    .line 179
    const/4 v7, 0x0

    .line 180
    move-object v1, v12

    .line 181
    move-object v2, v10

    .line 182
    move-object v3, v9

    .line 183
    move/from16 v4, v16

    .line 184
    .line 185
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :goto_4
    iget-object v1, v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 190
    .line 191
    move-object/from16 v2, p1

    .line 192
    .line 193
    invoke-virtual {v0, v2, v1, v11}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyImmutableState(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_b

    .line 198
    .line 199
    if-nez v17, :cond_b

    .line 200
    .line 201
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    .line 202
    .line 203
    iget-object v2, v1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    .line 204
    .line 205
    monitor-enter v2

    .line 206
    :try_start_2
    iget-object v1, v1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    .line 207
    .line 208
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    check-cast v1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    .line 213
    .line 214
    if-eqz v1, :cond_5

    .line 215
    .line 216
    iget-object v1, v1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    .line 217
    .line 218
    monitor-exit v2

    .line 219
    goto :goto_5

    .line 220
    :catchall_0
    move-exception v0

    .line 221
    goto :goto_b

    .line 222
    :cond_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    const/4 v1, 0x0

    .line 224
    :goto_5
    if-nez v1, :cond_6

    .line 225
    .line 226
    move v2, v13

    .line 227
    goto :goto_6

    .line 228
    :cond_6
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    :goto_6
    move v3, v13

    .line 233
    const/4 v12, 0x0

    .line 234
    :goto_7
    const/4 v4, 0x2

    .line 235
    if-ge v3, v2, :cond_9

    .line 236
    .line 237
    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-ne v6, v4, :cond_8

    .line 246
    .line 247
    if-nez v12, :cond_7

    .line 248
    .line 249
    iget-object v4, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 250
    .line 251
    const/4 v6, 0x1

    .line 252
    invoke-virtual {v4, v15, v13, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    .line 253
    .line 254
    .line 255
    move-result-object v12

    .line 256
    goto :goto_8

    .line 257
    :cond_7
    const/4 v6, 0x1

    .line 258
    :goto_8
    invoke-virtual {v7, v5}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    iget-object v4, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 263
    .line 264
    invoke-virtual {v4, v12}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 265
    .line 266
    .line 267
    goto :goto_9

    .line 268
    :cond_8
    const/4 v6, 0x1

    .line 269
    :goto_9
    add-int/lit8 v3, v3, 0x1

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_9
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    .line 273
    .line 274
    invoke-virtual {v1, v10}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->remove(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    if-eqz v1, :cond_a

    .line 279
    .line 280
    invoke-virtual {v1}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatus()I

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-ne v1, v4, :cond_a

    .line 285
    .line 286
    iget-object v1, v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 287
    .line 288
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    :goto_a
    if-ge v13, v2, :cond_a

    .line 293
    .line 294
    invoke-virtual {v11, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    check-cast v3, Ljava/lang/String;

    .line 299
    .line 300
    const/4 v4, 0x4

    .line 301
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    add-int/lit8 v13, v13, 0x1

    .line 309
    .line 310
    goto :goto_a

    .line 311
    :cond_a
    iget-object v1, v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 312
    .line 313
    move-object/from16 v2, p2

    .line 314
    .line 315
    invoke-static {v1, v11, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyPreVerifiedState(Landroid/util/ArrayMap;Landroid/util/ArraySet;Landroid/content/pm/verify/domain/DomainSet;)V

    .line 316
    .line 317
    .line 318
    goto :goto_c

    .line 319
    :goto_b
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 320
    throw v0

    .line 321
    :cond_b
    :goto_c
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 322
    .line 323
    monitor-enter v1

    .line 324
    :try_start_4
    iget-object v2, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 325
    .line 326
    invoke-virtual {v2, v10, v9, v7}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->put(Ljava/lang/String;Ljava/util/UUID;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)V

    .line 327
    .line 328
    .line 329
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 330
    if-eqz v14, :cond_d

    .line 331
    .line 332
    if-eqz v16, :cond_d

    .line 333
    .line 334
    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    iget-boolean v2, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCanSendBroadcasts:Z

    .line 339
    .line 340
    if-nez v2, :cond_c

    .line 341
    .line 342
    goto :goto_d

    .line 343
    :cond_c
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 344
    .line 345
    invoke-interface {v0, v1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->sendBroadcastForPackages(Ljava/util/Set;)V

    .line 346
    .line 347
    .line 348
    :cond_d
    :goto_d
    return-void

    .line 349
    :catchall_1
    move-exception v0

    .line 350
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 351
    throw v0

    .line 352
    :catchall_2
    move-exception v0

    .line 353
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 354
    throw v0

    .line 355
    :catchall_3
    move-exception v0

    .line 356
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 357
    throw v0
.end method

.method public final applyImmutableState(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSystemConfig:Lcom/android/server/SystemConfig;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/SystemConfig;->mLinkedApps:Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/4 p1, 0x0

    .line 27
    move v0, p1

    .line 28
    :goto_0
    if-ge v0, p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p2, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return p1

    .line 47
    :cond_1
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    const/4 p1, 0x1

    .line 52
    sub-int/2addr p0, p1

    .line 53
    :goto_1
    if-ltz p0, :cond_3

    .line 54
    .line 55
    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    check-cast p3, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-ne p3, v1, :cond_2

    .line 66
    .line 67
    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_2
    add-int/lit8 p0, p0, -0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    return p1
.end method

.method public final approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I
    .locals 10

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3
    :goto_0
    invoke-static {p2, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isDomainVerificationIntent(Landroid/content/Intent;J)Z

    move-result p3

    if-nez p3, :cond_2

    if-eqz v1, :cond_1

    .line 4
    const-string/jumbo p0, "not valid intent"

    invoke-static {v0, p2, p5, v2, p0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    :cond_1
    return v2

    .line 5
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move v7, p5

    move v8, v1

    move-object v9, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZIZLjava/lang/Object;)I

    move-result p0

    if-eqz v1, :cond_3

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Final approval level for "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for host "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const-string p1, "DomainVerificationServiceApproval"

    .line 9
    invoke-static {p3, p0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_3
    return p0
.end method

.method public final approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZIZLjava/lang/Object;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p6

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 13
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v14

    const/4 v13, 0x3

    const/4 v12, 0x2

    if-eqz v14, :cond_2

    if-eqz p3, :cond_2

    .line 15
    iget-object v8, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v11, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda1;

    invoke-direct {v11, v2, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    const/4 v10, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v9, v14

    move-object/from16 v18, v11

    move/from16 v11, v16

    move v15, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    .line 17
    const-string v8, "domain not declared"

    invoke-static {v7, v4, v3, v5, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    :cond_1
    const/4 v13, -0x2

    goto/16 :goto_a

    :cond_2
    move v15, v12

    .line 18
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    if-nez v8, :cond_4

    if-eqz p5, :cond_3

    .line 19
    const-string v8, "PackageUserState unavailable"

    invoke-static {v7, v4, v3, v5, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    :cond_3
    :goto_1
    move v13, v5

    goto/16 :goto_a

    .line 20
    :cond_4
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v9

    if-nez v9, :cond_5

    if-eqz p5, :cond_3

    .line 21
    const-string/jumbo v8, "package not installed for user"

    invoke-static {v7, v4, v3, v5, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_5
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v9

    if-eq v9, v6, :cond_7

    const/4 v10, 0x3

    if-eq v9, v15, :cond_6

    if-eq v9, v10, :cond_6

    const/4 v11, 0x4

    if-eq v9, v11, :cond_6

    .line 23
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v9

    goto :goto_2

    :cond_6
    move v9, v5

    goto :goto_2

    :cond_7
    const/4 v10, 0x3

    move v9, v6

    :goto_2
    if-nez v9, :cond_8

    if-eqz p5, :cond_3

    .line 24
    const-string/jumbo v8, "package not enabled for user"

    invoke-static {v7, v4, v3, v5, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_8
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v8

    if-eqz v8, :cond_9

    if-eqz p5, :cond_3

    .line 26
    const-string/jumbo v8, "package suspended for user"

    invoke-static {v7, v4, v3, v5, v8}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    goto :goto_1

    :cond_9
    if-eqz v14, :cond_c

    .line 27
    iget-object v8, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    sget-object v9, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->sCachedMatcher:Ljava/lang/ThreadLocal;

    .line 28
    new-instance v9, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v9}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 29
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 30
    invoke-interface {v14}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v11

    iput v11, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const-wide/32 v11, 0xa9dc3bd

    .line 31
    invoke-virtual {v8, v11, v12, v9}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 32
    iget-object v8, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    invoke-virtual {v8, v3, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getUserState(ILjava/lang/String;)I

    move-result v8

    if-eq v8, v6, :cond_b

    if-eq v8, v15, :cond_a

    if-eq v8, v10, :cond_3

    const/4 v9, 0x4

    if-eq v8, v9, :cond_b

    goto :goto_3

    :cond_a
    move v13, v15

    goto/16 :goto_a

    :cond_b
    move v13, v6

    goto/16 :goto_a

    .line 33
    :cond_c
    :goto_3
    iget-object v8, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 34
    :try_start_0
    iget-object v9, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 35
    iget-object v9, v9, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 36
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 37
    check-cast v9, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    if-nez v9, :cond_e

    if-eqz p5, :cond_d

    .line 38
    const-string/jumbo v9, "pkgState unavailable"

    invoke-static {v7, v4, v3, v5, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    .line 39
    :cond_d
    :goto_4
    monitor-exit v8

    goto/16 :goto_1

    .line 40
    :cond_e
    iget-object v11, v9, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    if-eqz v11, :cond_10

    .line 41
    iget-boolean v12, v11, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    if-nez v12, :cond_10

    if-eqz p5, :cond_f

    .line 42
    const-string v9, "link handling not allowed"

    invoke-static {v7, v4, v3, v5, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    .line 43
    :cond_f
    monitor-exit v8

    goto/16 :goto_1

    :cond_10
    if-eqz v14, :cond_11

    .line 44
    invoke-interface {v1, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 45
    invoke-virtual {v12, v14, v6, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object v12

    .line 46
    invoke-virtual {v12, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 47
    monitor-exit v8

    const/4 v13, 0x5

    goto/16 :goto_a

    .line 48
    :cond_11
    iget-object v9, v9, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 49
    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_13

    .line 50
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v12

    if-eqz v12, :cond_13

    if-eqz p5, :cond_12

    .line 51
    const-string v9, "host verified exactly"

    invoke-static {v7, v4, v3, v6, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    .line 52
    :cond_12
    monitor-exit v8

    :goto_5
    const/4 v13, 0x4

    goto/16 :goto_a

    .line 53
    :cond_13
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v12

    move v13, v5

    :goto_6
    if-ge v13, v12, :cond_17

    .line 54
    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v14

    if-nez v14, :cond_14

    goto :goto_7

    .line 55
    :cond_14
    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 56
    const-string v10, "*."

    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    if-eqz p5, :cond_15

    .line 57
    const-string v9, "host verified by wildcard"

    invoke-static {v7, v4, v3, v6, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    .line 58
    :cond_15
    monitor-exit v8

    goto :goto_5

    :cond_16
    :goto_7
    add-int/2addr v13, v6

    const/4 v10, 0x3

    goto :goto_6

    :cond_17
    if-nez v11, :cond_19

    if-eqz p5, :cond_18

    .line 59
    const-string/jumbo v9, "userState unavailable"

    invoke-static {v7, v4, v3, v5, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    .line 60
    :cond_18
    monitor-exit v8

    goto/16 :goto_1

    .line 61
    :cond_19
    iget-object v9, v11, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 62
    invoke-virtual {v9, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    if-eqz p5, :cond_1a

    .line 63
    const-string v9, "host enabled by user exactly"

    invoke-static {v7, v4, v3, v6, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    .line 64
    :cond_1a
    monitor-exit v8

    :goto_8
    const/4 v13, 0x3

    goto :goto_a

    .line 65
    :cond_1b
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v10

    move v11, v5

    :goto_9
    if-ge v11, v10, :cond_1e

    .line 66
    invoke-virtual {v9, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 67
    const-string v13, "*."

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1d

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    if-eqz p5, :cond_1c

    .line 68
    const-string v9, "host enabled by user through wildcard"

    invoke-static {v7, v4, v3, v6, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    .line 69
    :cond_1c
    monitor-exit v8

    goto :goto_8

    :cond_1d
    add-int/2addr v11, v6

    goto :goto_9

    :cond_1e
    if-eqz p5, :cond_1f

    .line 70
    const-string/jumbo v9, "not approved"

    invoke-static {v7, v4, v3, v5, v9}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->debugApproval(Ljava/lang/String;Ljava/lang/Object;IZLjava/lang/String;)V

    .line 71
    :cond_1f
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :goto_a
    if-eqz p3, :cond_24

    if-nez v13, :cond_24

    .line 72
    invoke-interface {v1, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 73
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v4

    if-nez v4, :cond_20

    const/4 v0, -0x4

    return v0

    .line 74
    :cond_20
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 75
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v3

    if-eq v3, v6, :cond_21

    if-eq v3, v15, :cond_22

    const/4 v7, 0x3

    if-eq v3, v7, :cond_22

    const/4 v7, 0x4

    if-eq v3, v7, :cond_22

    .line 76
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v5

    goto :goto_b

    :cond_21
    move v5, v6

    :cond_22
    :goto_b
    if-nez v5, :cond_23

    const/4 v0, -0x3

    return v0

    .line 77
    :cond_23
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    new-instance v3, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move/from16 p2, v4

    move/from16 p3, v5

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    const/4 v0, -0x1

    return v0

    :cond_24
    return v13

    .line 79
    :goto_c
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final clearPackageForUser(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_3

    .line 22
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :try_start_1
    iget-object v3, v1, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    :goto_1
    iget-object v1, v1, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/pm/DomainVerificationConnection;->scheduleWriteSettings()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    :try_start_4
    throw p0

    .line 66
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    throw p0
.end method

.method public final clearUser(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

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
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 16
    .line 17
    iget-object v3, v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 24
    .line 25
    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->removeUser(I)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->removeUser(I)V

    .line 36
    .line 37
    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/pm/DomainVerificationConnection;->scheduleWriteSettings()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0
.end method

.method public final getAndValidateAttachedLocked(Ljava/util/UUID;Ljava/util/Set;ZILjava/lang/Integer;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;
    .locals 4

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mDomainSetIdMap:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    new-instance p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    .line 18
    .line 19
    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;-><init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;I)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    iget-object v2, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz p5, :cond_1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 28
    .line 29
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p5

    .line 33
    iget-object v3, v3, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v3, p4, p5, v2, v0}, Lcom/android/server/pm/Computer;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    if-eqz p4, :cond_1

    .line 44
    .line 45
    new-instance p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    .line 46
    .line 47
    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;-><init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;I)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_1
    invoke-interface {p6, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 52
    .line 53
    .line 54
    move-result-object p4

    .line 55
    if-eqz p4, :cond_5

    .line 56
    .line 57
    iget-object p5, p4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 58
    .line 59
    if-eqz p5, :cond_5

    .line 60
    .line 61
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    move-result p5

    .line 65
    if-nez p5, :cond_4

    .line 66
    .line 67
    iget-object p4, p4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 68
    .line 69
    const/4 p5, 0x0

    .line 70
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 71
    .line 72
    if-eqz p3, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0, p4, v0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0, p4, p5, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :goto_0
    invoke-interface {p2, p0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_3

    .line 88
    .line 89
    new-instance p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    .line 90
    .line 91
    const/4 p1, 0x2

    .line 92
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;-><init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;I)V

    .line 93
    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_3
    new-instance p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    .line 97
    .line 98
    invoke-direct {p0, p1, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;-><init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;I)V

    .line 99
    .line 100
    .line 101
    return-object p0

    .line 102
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    const-string p1, "Provided domain set cannot be empty"

    .line 105
    .line 106
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :cond_5
    invoke-static {v2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v1

    .line 114
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    const-string p1, "domainSetId cannot be null"

    .line 117
    .line 118
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0
.end method

.method public final getCollector()Lcom/android/server/pm/verify/domain/DomainVerificationCollector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedQuerent(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v2, 0x0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    move-object v0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 38
    .line 39
    :goto_0
    if-eqz v0, :cond_5

    .line 40
    .line 41
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 50
    .line 51
    if-nez v3, :cond_1

    .line 52
    .line 53
    monitor-exit v1

    .line 54
    return-object v2

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_3

    .line 57
    :cond_1
    new-instance v4, Landroid/util/ArrayMap;

    .line 58
    .line 59
    iget-object v5, v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 65
    .line 66
    const/4 v5, 0x1

    .line 67
    invoke-virtual {p0, v0, v5, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    monitor-exit v1

    .line 78
    return-object v2

    .line 79
    :cond_2
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v2, 0x0

    .line 84
    move v5, v2

    .line 85
    :goto_1
    if-ge v5, v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v4, v6, v7}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    add-int/lit8 v5, v5, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    :goto_2
    if-ge v2, p0, :cond_4

    .line 108
    .line 109
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-static {v0}, Landroid/content/pm/verify/domain/DomainVerificationState;->convertToInfoState(I)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v4, v2, v0}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    add-int/lit8 v2, v2, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    new-instance p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;

    .line 134
    .line 135
    iget-object v0, v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mId:Ljava/util/UUID;

    .line 136
    .line 137
    invoke-direct {p0, v0, p1, v4}, Landroid/content/pm/verify/domain/DomainVerificationInfo;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    .line 139
    .line 140
    monitor-exit v1

    .line 141
    return-object p0

    .line 142
    :cond_5
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v2

    .line 146
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    throw p0
.end method

.method public final getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eq v2, p2, :cond_0

    .line 22
    .line 23
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const-string v5, "Caller is not allowed to edit other users"

    .line 30
    .line 31
    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    .line 32
    .line 33
    invoke-virtual {v3, v6, v4, v1, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const-string v4, " does not exist"

    .line 45
    .line 46
    const-string v5, "User "

    .line 47
    .line 48
    if-eqz v3, :cond_c

    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 53
    .line 54
    invoke-virtual {v2, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_b

    .line 59
    .line 60
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v2, 0x1

    .line 69
    invoke-interface {v0, v1, p2, p1, v2}, Lcom/android/server/pm/Computer;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    xor-int/2addr v0, v2

    .line 74
    const/4 v1, 0x0

    .line 75
    if-eqz v0, :cond_a

    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 86
    .line 87
    monitor-enter v3

    .line 88
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-nez v0, :cond_1

    .line 93
    .line 94
    move-object v0, v1

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 97
    .line 98
    :goto_0
    if-eqz v0, :cond_9

    .line 99
    .line 100
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 101
    .line 102
    iget-object v4, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 109
    .line 110
    if-nez v4, :cond_2

    .line 111
    .line 112
    monitor-exit v3

    .line 113
    return-object v1

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    goto/16 :goto_6

    .line 116
    .line 117
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 118
    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    new-instance v10, Landroid/util/ArrayMap;

    .line 129
    .line 130
    invoke-direct {v10, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 131
    .line 132
    .line 133
    iget-object v5, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 134
    .line 135
    iget-object v6, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    .line 136
    .line 137
    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    check-cast v6, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 142
    .line 143
    if-nez v6, :cond_3

    .line 144
    .line 145
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    goto :goto_1

    .line 150
    :cond_3
    iget-object v7, v6, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 151
    .line 152
    :goto_1
    move v8, v1

    .line 153
    :goto_2
    if-ge v8, v0, :cond_6

    .line 154
    .line 155
    invoke-virtual {p0, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    check-cast v9, Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    check-cast v11, Ljava/lang/Integer;

    .line 166
    .line 167
    if-eqz v11, :cond_4

    .line 168
    .line 169
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    invoke-static {v11}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    if-eqz v11, :cond_4

    .line 178
    .line 179
    const/4 v11, 0x2

    .line 180
    goto :goto_3

    .line 181
    :cond_4
    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    if-eqz v11, :cond_5

    .line 186
    .line 187
    move v11, v2

    .line 188
    goto :goto_3

    .line 189
    :cond_5
    move v11, v1

    .line 190
    :goto_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v11

    .line 194
    invoke-virtual {v10, v9, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    add-int/lit8 v8, v8, 0x1

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_6
    if-eqz v6, :cond_8

    .line 201
    .line 202
    iget-boolean p0, v6, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 203
    .line 204
    if-eqz p0, :cond_7

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_7
    move v9, v1

    .line 208
    goto :goto_5

    .line 209
    :cond_8
    :goto_4
    move v9, v2

    .line 210
    :goto_5
    new-instance p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;

    .line 211
    .line 212
    iget-object v6, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mId:Ljava/util/UUID;

    .line 213
    .line 214
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    move-object v5, p0

    .line 219
    move-object v7, p1

    .line 220
    invoke-direct/range {v5 .. v10}, Landroid/content/pm/verify/domain/DomainVerificationUserState;-><init>(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/Map;)V

    .line 221
    .line 222
    .line 223
    monitor-exit v3

    .line 224
    return-object p0

    .line 225
    :cond_9
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v1

    .line 229
    :goto_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    throw p0

    .line 231
    :cond_a
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v1

    .line 235
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    .line 236
    .line 237
    invoke-static {p2, v5, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    throw p0

    .line 245
    :cond_c
    new-instance p0, Ljava/lang/SecurityException;

    .line 246
    .line 247
    invoke-static {v2, v5, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw p0
.end method

.method public final getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;
    .locals 8

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eq v1, p2, :cond_0

    .line 32
    .line 33
    iget-object v4, v2, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const-string v5, "android.permission.INTERACT_ACROSS_USERS"

    .line 36
    .line 37
    const-string v6, "Caller is not allowed to query other users"

    .line 38
    .line 39
    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v4, v2, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const-string v5, "Caller "

    .line 45
    .line 46
    const-string v6, " does not hold android.permission.QUERY_ALL_PACKAGES"

    .line 47
    .line 48
    invoke-static {v0, v5, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const-string v6, "android.permission.QUERY_ALL_PACKAGES"

    .line 53
    .line 54
    invoke-virtual {v4, v6, v3, v0, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v4, v2, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    const-string v5, "android.permission.UPDATE_DOMAIN_VERIFICATION_USER_SELECTION"

    .line 60
    .line 61
    const-string v6, "Caller is not allowed to query user selections"

    .line 62
    .line 63
    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, v2, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    const-string v3, " does not exist"

    .line 75
    .line 76
    const-string v4, "User "

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    iget-object v0, v2, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 83
    .line 84
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomainInternal(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)Landroid/util/SparseArray;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_1

    .line 108
    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    move v0, v1

    .line 124
    :goto_0
    if-ge v0, p2, :cond_4

    .line 125
    .line 126
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    const/4 v3, 0x3

    .line 131
    if-gt v2, v3, :cond_2

    .line 132
    .line 133
    const/4 v2, 0x1

    .line 134
    goto :goto_1

    .line 135
    :cond_2
    move v2, v1

    .line 136
    :goto_1
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    move v5, v1

    .line 147
    :goto_2
    if-ge v5, v4, :cond_3

    .line 148
    .line 149
    new-instance v6, Landroid/content/pm/verify/domain/DomainOwner;

    .line 150
    .line 151
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    check-cast v7, Ljava/lang/String;

    .line 156
    .line 157
    invoke-direct {v6, v7, v2}, Landroid/content/pm/verify/domain/DomainOwner;-><init>(Ljava/lang/String;Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    add-int/lit8 v5, v5, 0x1

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_4
    return-object p1

    .line 170
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 171
    .line 172
    invoke-static {p2, v4, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    throw p0

    .line 180
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 181
    .line 182
    invoke-static {v1, v4, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p0
.end method

.method public final getOwnersForDomainInternal(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)Landroid/util/SparseArray;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v8, p2

    .line 3
    .line 4
    new-instance v9, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v10, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v10

    .line 12
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 17
    .line 18
    .line 19
    move-result v11

    .line 20
    const/4 v12, 0x0

    .line 21
    move v13, v12

    .line 22
    :goto_0
    if-ge v13, v11, :cond_3

    .line 23
    .line 24
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {v1, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 33
    .line 34
    iget-object v14, v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v8, v14}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_0
    const/4 v6, 0x0

    .line 44
    move-object v1, p0

    .line 45
    move-object/from16 v3, p3

    .line 46
    .line 47
    move/from16 v4, p4

    .line 48
    .line 49
    move/from16 v5, p1

    .line 50
    .line 51
    move-object/from16 v7, p3

    .line 52
    .line 53
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZIZLjava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez p4, :cond_1

    .line 58
    .line 59
    if-gtz v1, :cond_1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/util/List;

    .line 67
    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    new-instance v2, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto :goto_4

    .line 81
    :cond_2
    :goto_1
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    return-object v9

    .line 95
    :cond_4
    :goto_3
    if-ge v12, v0, :cond_5

    .line 96
    .line 97
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Ljava/util/List;

    .line 102
    .line 103
    new-instance v2, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;

    .line 104
    .line 105
    move/from16 v3, p1

    .line 106
    .line 107
    invoke-direct {v2, v8, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Computer;I)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 111
    .line 112
    .line 113
    add-int/lit8 v12, v12, 0x1

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    return-object v9

    .line 117
    :goto_4
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    throw v0
.end method

.method public final getUriRelativeFilterGroups(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUriRelativeFilterGroupMap:Landroid/util/ArrayMap;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ge p1, v2, :cond_1

    .line 29
    .line 30
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v2}, Landroid/content/UriRelativeFilterGroup;->groupsToParcels(Ljava/util/List;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    monitor-exit v1

    .line 70
    return-object v0

    .line 71
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final migrateState(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/verify/domain/DomainSet;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "Invalid state nullability old state = "

    .line 6
    .line 7
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v11

    .line 11
    iget-object v12, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v12

    .line 14
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getDomainSetId()Ljava/util/UUID;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getDomainSetId()Ljava/util/UUID;

    .line 19
    .line 20
    .line 21
    move-result-object v13

    .line 22
    iget-object v4, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 23
    .line 24
    iget-object v5, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mDomainSetIdMap:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    iget-object v5, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-ltz v5, :cond_0

    .line 39
    .line 40
    iget-object v4, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_0
    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 46
    .line 47
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    new-instance v7, Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v8, Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 63
    .line 64
    .line 65
    if-eqz v3, :cond_9

    .line 66
    .line 67
    if-eqz v4, :cond_9

    .line 68
    .line 69
    if-nez v5, :cond_1

    .line 70
    .line 71
    goto/16 :goto_6

    .line 72
    .line 73
    :cond_1
    iget-object v2, v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 74
    .line 75
    iget-object v10, v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUriRelativeFilterGroupMap:Landroid/util/ArrayMap;

    .line 76
    .line 77
    iget-object v4, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 78
    .line 79
    const/4 v6, 0x1

    .line 80
    invoke-virtual {v4, v5, v6, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    const/4 v15, 0x0

    .line 89
    :goto_0
    if-ge v15, v9, :cond_3

    .line 90
    .line 91
    invoke-virtual {v4, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v16

    .line 95
    move-object/from16 v6, v16

    .line 96
    .line 97
    check-cast v6, Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v16

    .line 103
    move-object/from16 v14, v16

    .line 104
    .line 105
    check-cast v14, Ljava/lang/Integer;

    .line 106
    .line 107
    if-eqz v14, :cond_2

    .line 108
    .line 109
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v16

    .line 113
    invoke-static/range {v16 .. v16}, Landroid/content/pm/verify/domain/DomainVerificationState;->shouldMigrate(I)Z

    .line 114
    .line 115
    .line 116
    move-result v16

    .line 117
    if-eqz v16, :cond_2

    .line 118
    .line 119
    invoke-virtual {v7, v6, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    goto/16 :goto_7

    .line 125
    .line 126
    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    .line 127
    .line 128
    const/4 v6, 0x1

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    iget-object v2, v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-lez v3, :cond_4

    .line 137
    .line 138
    iget-object v6, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 139
    .line 140
    const/4 v14, 0x1

    .line 141
    const/4 v15, 0x0

    .line 142
    invoke-virtual {v6, v5, v15, v14}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    move v6, v15

    .line 147
    :goto_2
    if-ge v6, v3, :cond_4

    .line 148
    .line 149
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 150
    .line 151
    .line 152
    move-result v14

    .line 153
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v16

    .line 157
    move-object/from16 v15, v16

    .line 158
    .line 159
    check-cast v15, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 160
    .line 161
    move-object/from16 v16, v2

    .line 162
    .line 163
    iget-object v2, v15, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 164
    .line 165
    move/from16 v18, v3

    .line 166
    .line 167
    new-instance v3, Landroid/util/ArraySet;

    .line 168
    .line 169
    invoke-direct {v3, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 173
    .line 174
    .line 175
    new-instance v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 176
    .line 177
    iget-boolean v15, v15, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 178
    .line 179
    invoke-direct {v2, v14, v3, v15}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(ILandroid/util/ArraySet;Z)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    add-int/lit8 v6, v6, 0x1

    .line 186
    .line 187
    move-object/from16 v2, v16

    .line 188
    .line 189
    move/from16 v3, v18

    .line 190
    .line 191
    const/4 v14, 0x1

    .line 192
    const/4 v15, 0x0

    .line 193
    goto :goto_2

    .line 194
    :cond_4
    if-lez v9, :cond_5

    .line 195
    .line 196
    const/4 v6, 0x1

    .line 197
    goto :goto_3

    .line 198
    :cond_5
    const/4 v6, 0x0

    .line 199
    :goto_3
    invoke-virtual {v0, v1, v7, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyImmutableState(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-eqz v6, :cond_6

    .line 204
    .line 205
    if-eqz v1, :cond_6

    .line 206
    .line 207
    move-object/from16 v1, p3

    .line 208
    .line 209
    const/16 v17, 0x1

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_6
    move-object/from16 v1, p3

    .line 213
    .line 214
    const/16 v17, 0x0

    .line 215
    .line 216
    :goto_4
    invoke-static {v7, v4, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyPreVerifiedState(Landroid/util/ArrayMap;Landroid/util/ArraySet;Landroid/content/pm/verify/domain/DomainSet;)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 220
    .line 221
    new-instance v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 222
    .line 223
    const/4 v9, 0x0

    .line 224
    move-object v3, v2

    .line 225
    move-object v4, v11

    .line 226
    move-object v5, v13

    .line 227
    invoke-direct/range {v3 .. v10}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v11, v13, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->put(Ljava/lang/String;Ljava/util/UUID;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)V

    .line 231
    .line 232
    .line 233
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    if-eqz v17, :cond_8

    .line 235
    .line 236
    invoke-static {v11}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    iget-boolean v2, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCanSendBroadcasts:Z

    .line 241
    .line 242
    if-nez v2, :cond_7

    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_7
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 246
    .line 247
    invoke-interface {v0, v1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->sendBroadcastForPackages(Ljava/util/Set;)V

    .line 248
    .line 249
    .line 250
    :cond_8
    :goto_5
    return-void

    .line 251
    :cond_9
    :goto_6
    :try_start_1
    const-string v6, "DomainVerificationService"

    .line 252
    .line 253
    new-instance v9, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v2, ", old pkgSetting = "

    .line 262
    .line 263
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    move-object/from16 v2, p1

    .line 267
    .line 268
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v2, ", new pkgSetting = "

    .line 272
    .line 273
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v1, ", old pkg = "

    .line 280
    .line 281
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v1, ", new pkg = "

    .line 288
    .line 289
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    new-instance v2, Ljava/lang/Exception;

    .line 300
    .line 301
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 302
    .line 303
    .line 304
    invoke-static {v6, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    .line 306
    .line 307
    new-instance v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 308
    .line 309
    new-instance v10, Landroid/util/ArrayMap;

    .line 310
    .line 311
    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 312
    .line 313
    .line 314
    const/4 v6, 0x1

    .line 315
    const/4 v9, 0x0

    .line 316
    move-object v3, v1

    .line 317
    move-object v4, v11

    .line 318
    move-object v5, v13

    .line 319
    invoke-direct/range {v3 .. v10}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 320
    .line 321
    .line 322
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 323
    .line 324
    invoke-virtual {v0, v11, v13, v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->put(Ljava/lang/String;Ljava/util/UUID;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;)V

    .line 325
    .line 326
    .line 327
    monitor-exit v12

    .line 328
    return-void

    .line 329
    :goto_7
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    throw v0
.end method

.method public final onBootPhase(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 5
    .line 6
    instance-of v0, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    xor-int/2addr v0, v1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/16 v0, 0x226

    .line 14
    .line 15
    if-eq p1, v0, :cond_2

    .line 16
    .line 17
    const/16 v0, 0x3e8

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->verifyPackages(Ljava/util/List;Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCanSendBroadcasts:Z

    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mStub:Lcom/android/server/pm/verify/domain/DomainVerificationManagerStub;

    .line 2
    .line 3
    const-string v1, "domain_verification"

    .line 4
    .line 5
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->verifyPackages(Ljava/util/List;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final printOwnersForDomain(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/Computer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    new-instance v4, Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v6, -0x1

    .line 15
    const/4 v7, 0x1

    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    if-ne v8, v6, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    invoke-virtual {v0, v9, v2, v3, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomainInternal(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)Landroid/util/SparseArray;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v4, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_0
    iget-object v8, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 42
    .line 43
    iget-object v8, v8, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 44
    .line 45
    invoke-virtual {v8}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    array-length v9, v8

    .line 50
    const/4 v10, 0x0

    .line 51
    :goto_1
    if-ge v10, v9, :cond_2

    .line 52
    .line 53
    aget v11, v8, v10

    .line 54
    .line 55
    invoke-virtual {v0, v11, v2, v3, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getOwnersForDomainInternal(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)Landroid/util/SparseArray;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    invoke-virtual {v4, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v10, v10, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_2
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v2, ":"

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const-string/jumbo v3, "none"

    .line 98
    .line 99
    .line 100
    if-nez v0, :cond_3

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 106
    .line 107
    .line 108
    goto/16 :goto_9

    .line 109
    .line 110
    :cond_3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    const/4 v8, 0x0

    .line 115
    :goto_3
    if-ge v8, v0, :cond_b

    .line 116
    .line 117
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    check-cast v10, Landroid/util/SparseArray;

    .line 126
    .line 127
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    if-nez v11, :cond_4

    .line 132
    .line 133
    goto/16 :goto_8

    .line 134
    .line 135
    :cond_4
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    const/4 v12, 0x0

    .line 140
    const/4 v13, 0x0

    .line 141
    :goto_4
    if-ge v12, v11, :cond_9

    .line 142
    .line 143
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->keyAt(I)I

    .line 144
    .line 145
    .line 146
    move-result v14

    .line 147
    if-ge v14, v6, :cond_5

    .line 148
    .line 149
    goto/16 :goto_7

    .line 150
    .line 151
    :cond_5
    if-nez v13, :cond_6

    .line 152
    .line 153
    new-instance v13, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v15, "User "

    .line 156
    .line 157
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v13

    .line 170
    invoke-virtual {v1, v13}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 174
    .line 175
    .line 176
    move v13, v7

    .line 177
    :cond_6
    packed-switch v14, :pswitch_data_0

    .line 178
    .line 179
    .line 180
    const-string v15, "UNKNOWN"

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :pswitch_0
    const-string v15, "INSTANT_APP"

    .line 184
    .line 185
    goto :goto_5

    .line 186
    :pswitch_1
    const-string v15, "VERIFIED"

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :pswitch_2
    const-string v15, "USER_SELECTION"

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :pswitch_3
    const-string v15, "LEGACY_ALWAYS"

    .line 193
    .line 194
    goto :goto_5

    .line 195
    :pswitch_4
    const-string v15, "LEGACY_ASK"

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :pswitch_5
    const-string v15, "NONE"

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :pswitch_6
    const-string v15, "UNVERIFIED"

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :pswitch_7
    const-string v15, "UNDECLARED"

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :pswitch_8
    const-string v15, "DISABLED"

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :pswitch_9
    const-string v15, "NOT_INSTALLED"

    .line 211
    .line 212
    :goto_5
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v16

    .line 216
    move-object/from16 v5, v16

    .line 217
    .line 218
    check-cast v5, Ljava/util/List;

    .line 219
    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v15, "["

    .line 229
    .line 230
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v14, "]:"

    .line 237
    .line 238
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 249
    .line 250
    .line 251
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    if-nez v6, :cond_7

    .line 256
    .line 257
    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 261
    .line 262
    .line 263
    goto :goto_7

    .line 264
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    const/4 v14, 0x0

    .line 269
    :goto_6
    if-ge v14, v6, :cond_8

    .line 270
    .line 271
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v15

    .line 275
    check-cast v15, Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v1, v15}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    add-int/lit8 v14, v14, 0x1

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 284
    .line 285
    .line 286
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 287
    .line 288
    const/4 v6, -0x1

    .line 289
    goto/16 :goto_4

    .line 290
    .line 291
    :cond_9
    if-eqz v13, :cond_a

    .line 292
    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 294
    .line 295
    .line 296
    :cond_a
    :goto_8
    add-int/lit8 v8, v8, 0x1

    .line 297
    .line 298
    const/4 v6, -0x1

    .line 299
    goto/16 :goto_3

    .line 300
    .line 301
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 302
    .line 303
    .line 304
    :goto_9
    return-void

    .line 305
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final printOwnersForDomains(Landroid/util/IndentingPrintWriter;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedQuerent(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    check-cast p2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x0

    .line 35
    :goto_0
    if-ge v3, v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0, p1, v0, p3, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForDomain(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/Computer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    monitor-exit v1

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final printOwnersForPackage(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/Computer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4

    .line 19
    invoke-interface {p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    :goto_0
    if-eqz v0, :cond_3

    .line 21
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 23
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_1
    if-ge v2, v1, :cond_2

    .line 25
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForDomain(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/Computer;Ljava/lang/Integer;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 27
    :cond_3
    invoke-static {p4}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)V

    throw v1
.end method

.method public final printOwnersForPackage(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedQuerent(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 4
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 5
    iget-object v0, v0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 6
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p2, :cond_0

    .line 8
    :try_start_0
    iget-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 9
    iget-object p2, p2, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 10
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 11
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 12
    iget-object v3, v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 13
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 14
    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 15
    iget-object v3, v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, p1, v0, p3, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForPackage(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/Computer;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_0
    :try_start_2
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->printOwnersForPackage(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/Computer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 18
    :cond_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final printState(Landroid/util/IndentingPrintWriter;Lcom/android/server/pm/Computer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedQuerent(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mDebug:Lcom/android/server/pm/verify/domain/DomainVerificationDebug;

    .line 21
    .line 22
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 23
    .line 24
    move-object v2, p1

    .line 25
    move-object v3, p4

    .line 26
    move-object v4, p3

    .line 27
    move-object v5, p2

    .line 28
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationDebug;->printState(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;Lcom/android/server/pm/Computer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;)V

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final queryValidVerificationPackageNames()Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedVerifier(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_0
    if-ge v3, v2, :cond_1

    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 37
    .line 38
    iget-object v4, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 45
    .line 46
    iget-boolean v5, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mHasAutoVerifyDomains:Z

    .line 47
    .line 48
    if-eqz v5, :cond_0

    .line 49
    .line 50
    iget-object v4, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    monitor-exit v1

    .line 62
    return-object v0

    .line 63
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public final readLegacySettings(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    const-string/jumbo v1, "user-states"

    .line 22
    .line 23
    .line 24
    iget-object v2, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Lcom/android/modules/utils/TypedXmlPullParser;

    .line 27
    .line 28
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const-string/jumbo v1, "packageName"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v2

    .line 48
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->children()Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    const-string/jumbo v3, "user-state"

    .line 62
    .line 63
    .line 64
    iget-object v4, v0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v4, Lcom/android/modules/utils/TypedXmlPullParser;

    .line 67
    .line 68
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_1

    .line 77
    .line 78
    const-string/jumbo v3, "userId"

    .line 79
    .line 80
    .line 81
    const/4 v4, -0x1

    .line 82
    invoke-virtual {v0, v4, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(ILjava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const-string/jumbo v5, "state"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(ILjava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    iget-object v5, v1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    .line 94
    .line 95
    if-nez v5, :cond_2

    .line 96
    .line 97
    new-instance v5, Landroid/util/SparseIntArray;

    .line 98
    .line 99
    const/4 v6, 0x1

    .line 100
    invoke-direct {v5, v6}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 101
    .line 102
    .line 103
    iput-object v5, v1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    .line 104
    .line 105
    :cond_2
    iget-object v5, v1, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    .line 106
    .line 107
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    monitor-exit v2

    .line 114
    goto :goto_0

    .line 115
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0

    .line 117
    :cond_4
    return-void
.end method

.method public final readSettings(Lcom/android/server/pm/ComputerLocked;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 7
    .line 8
    invoke-virtual {v1, p2, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->readSettings(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Lcom/android/server/pm/ComputerLocked;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final removeUserStatesForDomain(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v1, :cond_2

    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 19
    .line 20
    iget-object v4, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    move v6, v2

    .line 35
    :goto_1
    if-ge v6, v5, :cond_1

    .line 36
    .line 37
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    check-cast v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 46
    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    iget-boolean v7, v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 50
    .line 51
    if-nez v7, :cond_0

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_0
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    check-cast v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 59
    .line 60
    iget-object v7, v7, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 61
    .line 62
    invoke-virtual {v7, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_3

    .line 70
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final resetDomainState(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eq v3, v1, :cond_0

    .line 20
    .line 21
    const/4 v4, 0x5

    .line 22
    if-eq v3, v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/16 v3, 0x400

    .line 29
    .line 30
    if-lt v2, v3, :cond_1

    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 43
    .line 44
    invoke-virtual {v2, v0, v1, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->applyImmutableState(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;Landroid/util/ArraySet;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Lcom/android/server/pm/Computer;)I
    .locals 20

    .line 1
    move/from16 v7, p2

    .line 2
    .line 3
    move-object/from16 v8, p4

    .line 4
    .line 5
    new-instance v9, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v10

    .line 14
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    move-object/from16 v11, p0

    .line 19
    .line 20
    iget-object v12, v11, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 21
    .line 22
    if-eqz v0, :cond_c

    .line 23
    .line 24
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v14, v0

    .line 29
    check-cast v14, Ljava/lang/String;

    .line 30
    .line 31
    move-object/from16 v15, p1

    .line 32
    .line 33
    iget-object v0, v15, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, v12, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    const/4 v5, 0x1

    .line 53
    move-object v4, v0

    .line 54
    move v2, v5

    .line 55
    const/4 v3, 0x0

    .line 56
    :goto_1
    if-ge v3, v6, :cond_5

    .line 57
    .line 58
    iget-object v0, v12, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 65
    .line 66
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-interface {v8, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 69
    .line 70
    .line 71
    move-result-object v16

    .line 72
    if-nez v16, :cond_1

    .line 73
    .line 74
    move/from16 v16, v3

    .line 75
    .line 76
    move v1, v5

    .line 77
    move/from16 v17, v6

    .line 78
    .line 79
    move v5, v2

    .line 80
    move-object v2, v4

    .line 81
    goto :goto_3

    .line 82
    :cond_1
    const/16 v17, 0x0

    .line 83
    .line 84
    const/16 v18, 0x0

    .line 85
    .line 86
    move-object/from16 v0, p0

    .line 87
    .line 88
    move-object v13, v1

    .line 89
    move-object/from16 v1, v16

    .line 90
    .line 91
    move/from16 v19, v2

    .line 92
    .line 93
    move-object v2, v14

    .line 94
    move/from16 v16, v3

    .line 95
    .line 96
    move/from16 v3, v18

    .line 97
    .line 98
    move-object/from16 v18, v4

    .line 99
    .line 100
    move/from16 v4, p2

    .line 101
    .line 102
    move/from16 v5, v17

    .line 103
    .line 104
    move/from16 v17, v6

    .line 105
    .line 106
    move-object v6, v14

    .line 107
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;ZIZLjava/lang/Object;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    const/4 v1, 0x1

    .line 112
    if-ge v0, v1, :cond_2

    .line 113
    .line 114
    move-object/from16 v2, v18

    .line 115
    .line 116
    move/from16 v5, v19

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_2
    move/from16 v5, v19

    .line 120
    .line 121
    if-le v0, v5, :cond_3

    .line 122
    .line 123
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 124
    .line 125
    .line 126
    move-object/from16 v2, v18

    .line 127
    .line 128
    invoke-static {v2, v13}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    move-object v4, v2

    .line 133
    move v2, v0

    .line 134
    goto :goto_4

    .line 135
    :cond_3
    move-object/from16 v2, v18

    .line 136
    .line 137
    if-ne v0, v5, :cond_4

    .line 138
    .line 139
    invoke-static {v2, v13}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    move-object v4, v0

    .line 144
    :goto_2
    move v2, v5

    .line 145
    goto :goto_4

    .line 146
    :cond_4
    :goto_3
    move-object v4, v2

    .line 147
    goto :goto_2

    .line 148
    :goto_4
    add-int/lit8 v3, v16, 0x1

    .line 149
    .line 150
    move v5, v1

    .line 151
    move/from16 v6, v17

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_5
    move v5, v2

    .line 155
    move-object v2, v4

    .line 156
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_6

    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    goto :goto_7

    .line 172
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    const-wide/high16 v3, -0x8000000000000000L

    .line 182
    .line 183
    const/4 v13, 0x0

    .line 184
    :goto_5
    if-ge v13, v1, :cond_a

    .line 185
    .line 186
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    check-cast v6, Ljava/lang/String;

    .line 191
    .line 192
    invoke-interface {v8, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    if-nez v12, :cond_7

    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_7
    invoke-interface {v12, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 200
    .line 201
    .line 202
    move-result-object v12

    .line 203
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    .line 204
    .line 205
    .line 206
    move-result-wide v16

    .line 207
    cmp-long v12, v16, v3

    .line 208
    .line 209
    if-lez v12, :cond_8

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-wide/from16 v3, v16

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_8
    if-nez v12, :cond_9

    .line 221
    .line 222
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    :cond_9
    :goto_6
    add-int/lit8 v13, v13, 0x1

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    :goto_7
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v1, Ljava/lang/Integer;

    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    const/4 v2, 0x3

    .line 245
    if-le v1, v2, :cond_b

    .line 246
    .line 247
    return v2

    .line 248
    :cond_b
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v0, Ljava/util/List;

    .line 251
    .line 252
    invoke-virtual {v9, v14, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_c
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    const/4 v1, 0x0

    .line 262
    :goto_8
    if-ge v1, v0, :cond_10

    .line 263
    .line 264
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    check-cast v2, Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    check-cast v3, Ljava/util/List;

    .line 275
    .line 276
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    const/4 v5, 0x0

    .line 281
    :goto_9
    if-ge v5, v4, :cond_f

    .line 282
    .line 283
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    check-cast v6, Ljava/lang/String;

    .line 288
    .line 289
    iget-object v8, v12, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 290
    .line 291
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    check-cast v6, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 296
    .line 297
    if-nez v6, :cond_d

    .line 298
    .line 299
    goto :goto_a

    .line 300
    :cond_d
    iget-object v6, v6, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    .line 301
    .line 302
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    check-cast v6, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 307
    .line 308
    if-nez v6, :cond_e

    .line 309
    .line 310
    goto :goto_a

    .line 311
    :cond_e
    iget-object v6, v6, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 312
    .line 313
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    :goto_a
    add-int/lit8 v5, v5, 0x1

    .line 317
    .line 318
    goto :goto_9

    .line 319
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 320
    .line 321
    goto :goto_8

    .line 322
    :cond_10
    const/4 v1, 0x0

    .line 323
    return v1
.end method

.method public final setConnection(Lcom/android/server/pm/DomainVerificationConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    .line 6
    .line 7
    return-void
.end method

.method public final setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0, v1, v2, p3, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedUserSelector(IIILjava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2, p3}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-boolean p2, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 48
    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/pm/DomainVerificationConnection;->scheduleWriteSettings()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0

    .line 64
    :cond_1
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v1
.end method

.method public final setDomainVerificationLinkHandlingAllowedInternal(ILjava/lang/String;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 16
    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez p2, :cond_3

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v2

    .line 25
    :try_start_0
    iget-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 26
    .line 27
    iget-object p2, p2, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    move v3, v1

    .line 34
    :goto_0
    if-ge v3, p2, :cond_2

    .line 35
    .line 36
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 37
    .line 38
    iget-object v4, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 45
    .line 46
    if-ne p1, v0, :cond_0

    .line 47
    .line 48
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 49
    .line 50
    iget-object v5, v5, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    array-length v6, v5

    .line 57
    move v7, v1

    .line 58
    :goto_1
    if-ge v7, v6, :cond_1

    .line 59
    .line 60
    aget v8, v5, v7

    .line 61
    .line 62
    invoke-virtual {v4, v8}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    iput-boolean p3, v8, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 67
    .line 68
    add-int/lit8 v7, v7, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_2

    .line 73
    :cond_0
    invoke-virtual {v4, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    iput-boolean p3, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 78
    .line 79
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    monitor-exit v2

    .line 83
    goto :goto_4

    .line 84
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0

    .line 86
    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 87
    .line 88
    monitor-enter v2

    .line 89
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 90
    .line 91
    iget-object v3, v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 92
    .line 93
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 98
    .line 99
    if-eqz v3, :cond_6

    .line 100
    .line 101
    if-ne p1, v0, :cond_4

    .line 102
    .line 103
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    array-length p2, p1

    .line 112
    :goto_3
    if-ge v1, p2, :cond_5

    .line 113
    .line 114
    aget v0, p1, v1

    .line 115
    .line 116
    invoke-virtual {v3, v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-boolean p3, v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 121
    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :catchall_1
    move-exception p0

    .line 126
    goto :goto_5

    .line 127
    :cond_4
    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iput-boolean p3, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mLinkHandlingAllowed:Z

    .line 132
    .line 133
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    :goto_4
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/android/server/pm/DomainVerificationConnection;->scheduleWriteSettings()V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_6
    :try_start_2
    invoke-static {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const/4 p0, 0x0

    .line 144
    throw p0

    .line 145
    :goto_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    throw p0
.end method

.method public final setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedVerifier(ILcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V

    .line 2
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 3
    iget-object v0, v0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    .line 5
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p1

    .line 7
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getAndValidateAttachedLocked(Ljava/util/UUID;Ljava/util/Set;ZILjava/lang/Integer;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    move-result-object p1

    .line 8
    iget p2, p1, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mErrorCode:I

    if-eqz p2, :cond_0

    .line 9
    monitor-exit v0

    return p2

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 10
    :cond_0
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mPkgState:Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 11
    iget-object p2, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 12
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p4, :cond_1

    .line 15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/content/pm/verify/domain/DomainVerificationState;->isModifiable(I)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    invoke-static {p4}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 18
    :cond_3
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_4
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_1
    if-ge p4, p2, :cond_6

    .line 21
    invoke-virtual {v8, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->removeUserStatesForDomain(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 22
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    invoke-virtual {p0}, Lcom/android/server/pm/DomainVerificationConnection;->scheduleWriteSettings()V

    return p3

    .line 24
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setDomainVerificationStatusInternal(Ljava/lang/String;ILandroid/util/ArraySet;)V
    .locals 11

    .line 25
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "State must be one of NO_RESPONSE, SUCCESS, APPROVED, or DENIED"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_6

    .line 29
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 30
    iget-object p1, p1, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 31
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p1

    .line 32
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 33
    :try_start_0
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 34
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 35
    iget-object v4, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 36
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_5

    .line 37
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 38
    iget-object v6, v6, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 39
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 40
    check-cast v6, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 41
    iget-object v7, v6, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 42
    invoke-interface {p1, v7}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 43
    iget-object v7, v7, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-nez v7, :cond_2

    goto :goto_4

    .line 44
    :cond_2
    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 45
    iget-object v8, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 46
    invoke-virtual {v8, v7, v0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object v7

    if-nez p3, :cond_3

    .line 47
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 48
    :cond_3
    invoke-virtual {v3, p3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 49
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 50
    :goto_2
    iget-object v6, v6, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 51
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v7

    move v8, v1

    :goto_3
    if-ge v8, v7, :cond_4

    .line 52
    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 53
    :cond_5
    monitor-exit v2

    goto/16 :goto_a

    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 54
    :cond_6
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 55
    iget-object v2, v2, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 56
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 57
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 58
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 59
    iget-object v4, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 60
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 61
    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    const/4 v5, 0x0

    if-eqz v4, :cond_e

    .line 62
    invoke-interface {v2, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 63
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    if-eqz v2, :cond_d

    if-nez p3, :cond_7

    .line 64
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 65
    invoke-virtual {p1, v2, v0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object p3

    goto :goto_6

    :catchall_1
    move-exception p0

    goto/16 :goto_b

    .line 66
    :cond_7
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 67
    invoke-virtual {p1, v2, v0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object p1

    .line 68
    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 69
    :goto_6
    invoke-static {p2}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 70
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 71
    iget-object p1, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 72
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_a

    .line 73
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 74
    invoke-virtual {p1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_8

    .line 75
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/content/pm/verify/domain/DomainVerificationState;->isVerified(I)Z

    move-result v7

    if-nez v7, :cond_9

    .line 76
    :cond_8
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 77
    :cond_a
    iget-object p1, v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 78
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_b

    .line 79
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    if-eqz v5, :cond_c

    .line 80
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result p1

    :goto_9
    if-ge v1, p1, :cond_c

    .line 81
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 82
    invoke-virtual {p0, v4, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->removeUserStatesForDomain(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 83
    :cond_c
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    :goto_a
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    invoke-virtual {p0}, Lcom/android/server/pm/DomainVerificationConnection;->scheduleWriteSettings()V

    return-void

    .line 85
    :cond_d
    :try_start_2
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)V

    throw v5

    .line 86
    :cond_e
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)V

    throw v5

    .line 87
    :goto_b
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;ZI)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v5

    .line 10
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v5, v1, p4, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertApprovedUserSelector(IIILjava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v8, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter v8

    .line 41
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const/4 v4, 0x0

    .line 46
    move-object v1, p0

    .line 47
    move-object v2, p1

    .line 48
    move-object v3, p2

    .line 49
    move-object v7, v0

    .line 50
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getAndValidateAttachedLocked(Ljava/util/UUID;Ljava/util/Set;ZILjava/lang/Integer;Lcom/android/server/pm/Computer;)Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget v1, p1, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mErrorCode:I

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    monitor-exit v8

    .line 59
    return v1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/DomainVerificationService$GetAttachedResult;->mPkgState:Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 63
    .line 64
    invoke-virtual {p1, p4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p3, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0, p1, p4, p2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Lcom/android/server/pm/Computer;)I

    .line 71
    .line 72
    .line 73
    move-result p4

    .line 74
    if-eqz p4, :cond_2

    .line 75
    .line 76
    monitor-exit v8

    .line 77
    return p4

    .line 78
    :cond_2
    if-eqz p3, :cond_3

    .line 79
    .line 80
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 89
    .line 90
    .line 91
    :goto_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/android/server/pm/DomainVerificationConnection;->scheduleWriteSettings()V

    .line 95
    .line 96
    .line 97
    const/4 p0, 0x0

    .line 98
    return p0

    .line 99
    :goto_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw p0
.end method

.method public final setDomainVerificationUserSelectionInternal(ILjava/lang/String;ZLandroid/util/ArraySet;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v2, :cond_7

    .line 41
    .line 42
    invoke-interface {v0, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-nez v4, :cond_0

    .line 47
    .line 48
    move-object v4, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v4, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 51
    .line 52
    :goto_0
    if-eqz v4, :cond_6

    .line 53
    .line 54
    const/4 p2, 0x1

    .line 55
    const/4 v3, 0x0

    .line 56
    if-nez p4, :cond_1

    .line 57
    .line 58
    iget-object p4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 59
    .line 60
    invoke-virtual {p4, v4, v3, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    .line 61
    .line 62
    .line 63
    move-result-object p4

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_5

    .line 67
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 68
    .line 69
    invoke-virtual {v5, v4, v3, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p4, p2}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    const/4 p2, -0x1

    .line 77
    if-ne p1, p2, :cond_3

    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    array-length p2, p1

    .line 88
    :goto_2
    if-ge v3, p2, :cond_5

    .line 89
    .line 90
    aget v4, p1, v3

    .line 91
    .line 92
    invoke-virtual {v2, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {p0, v5, v4, p4, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Lcom/android/server/pm/Computer;)I

    .line 97
    .line 98
    .line 99
    if-eqz p3, :cond_2

    .line 100
    .line 101
    iget-object v4, v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 102
    .line 103
    invoke-virtual {v4, p4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_2
    iget-object v4, v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 108
    .line 109
    invoke-virtual {v4, p4}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 110
    .line 111
    .line 112
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    invoke-virtual {v2, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p0, p2, p1, p4, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->revokeOtherUserSelectionsLocked(Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;ILjava/util/Set;Lcom/android/server/pm/Computer;)I

    .line 120
    .line 121
    .line 122
    if-eqz p3, :cond_4

    .line 123
    .line 124
    iget-object p1, p2, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 125
    .line 126
    invoke-virtual {p1, p4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_4
    iget-object p1, p2, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->mEnabledHosts:Landroid/util/ArraySet;

    .line 131
    .line 132
    invoke-virtual {p1, p4}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/android/server/pm/DomainVerificationConnection;->scheduleWriteSettings()V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_6
    :try_start_1
    invoke-static {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v3

    .line 146
    :cond_7
    invoke-static {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v3

    .line 150
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    throw p0
.end method

.method public final setLegacyUserState(IILjava/lang/String;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const-string v5, "Caller is not allowed to edit user state"

    .line 28
    .line 29
    const-string v6, "android.permission.SET_PREFERRED_APPLICATIONS"

    .line 30
    .line 31
    invoke-virtual {v3, v6, v4, v1, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eq v2, p1, :cond_0

    .line 37
    .line 38
    iget-object v5, v0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    .line 41
    .line 42
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    invoke-virtual {v5, v6, v7, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    move v0, v4

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v5, v0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    .line 55
    .line 56
    iget-object v5, v5, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 57
    .line 58
    invoke-virtual {v5, v2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const-string v6, " does not exist"

    .line 63
    .line 64
    const-string v7, "User "

    .line 65
    .line 66
    if-eqz v5, :cond_4

    .line 67
    .line 68
    iget-object v2, v0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0, v1, p1, p3, v3}, Lcom/android/server/pm/Computer;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    xor-int/2addr v0, v3

    .line 91
    :goto_0
    if-nez v0, :cond_1

    .line 92
    .line 93
    return v4

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    .line 95
    .line 96
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    .line 97
    .line 98
    monitor-enter v1

    .line 99
    :try_start_0
    invoke-virtual {v0, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    .line 100
    .line 101
    .line 102
    move-result-object p3

    .line 103
    iget-object v0, p3, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    .line 104
    .line 105
    if-nez v0, :cond_2

    .line 106
    .line 107
    new-instance v0, Landroid/util/SparseIntArray;

    .line 108
    .line 109
    invoke-direct {v0, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p3, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    .line 113
    .line 114
    :cond_2
    iget-object p3, p3, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    .line 115
    .line 116
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 117
    .line 118
    .line 119
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/android/server/pm/DomainVerificationConnection;->scheduleWriteSettings()V

    .line 123
    .line 124
    .line 125
    return v3

    .line 126
    :catchall_0
    move-exception p0

    .line 127
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    throw p0

    .line 129
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 130
    .line 131
    invoke-static {p1, v7, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 140
    .line 141
    invoke-static {v2, v7, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0
.end method

.method public final setProxy(Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 2
    .line 3
    return-void
.end method

.method public final setUriRelativeFilterGroups(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "android.permission.DOMAIN_VERIFICATION_AGENT"

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v4, "Caller "

    .line 11
    .line 12
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v4, " does not hold android.permission.DOMAIN_VERIFICATION_AGENT"

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v1

    .line 49
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 58
    .line 59
    if-eqz p0, :cond_10

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUriRelativeFilterGroupMap:Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_f

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Ljava/lang/String;

    .line 82
    .line 83
    sget-object v3, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->sCachedMatcher:Ljava/lang/ThreadLocal;

    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    const/16 v4, 0xfe

    .line 90
    .line 91
    if-gt v3, v4, :cond_1

    .line 92
    .line 93
    const-string v3, "*"

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_2

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const/4 v3, 0x0

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    const/16 v5, 0x2a

    .line 108
    .line 109
    const/16 v6, 0x2e

    .line 110
    .line 111
    if-ne v4, v5, :cond_4

    .line 112
    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eq v4, v6, :cond_3

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    const/4 v4, 0x2

    .line 121
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    move-object v4, v2

    .line 127
    :goto_1
    const/4 v5, -0x1

    .line 128
    move v7, v0

    .line 129
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    const/16 v9, 0x3f

    .line 134
    .line 135
    if-ge v3, v8, :cond_b

    .line 136
    .line 137
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    if-ne v8, v6, :cond_6

    .line 142
    .line 143
    sub-int v5, v3, v5

    .line 144
    .line 145
    sub-int/2addr v5, v0

    .line 146
    if-eqz v5, :cond_1

    .line 147
    .line 148
    if-le v5, v9, :cond_5

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_5
    add-int/2addr v7, v0

    .line 152
    move v5, v3

    .line 153
    goto :goto_3

    .line 154
    :cond_6
    const/16 v9, 0x61

    .line 155
    .line 156
    if-lt v8, v9, :cond_7

    .line 157
    .line 158
    const/16 v9, 0x7a

    .line 159
    .line 160
    if-le v8, v9, :cond_a

    .line 161
    .line 162
    :cond_7
    const/16 v9, 0x41

    .line 163
    .line 164
    if-lt v8, v9, :cond_8

    .line 165
    .line 166
    const/16 v9, 0x5a

    .line 167
    .line 168
    if-le v8, v9, :cond_a

    .line 169
    .line 170
    :cond_8
    const/16 v9, 0x30

    .line 171
    .line 172
    if-lt v8, v9, :cond_9

    .line 173
    .line 174
    const/16 v9, 0x39

    .line 175
    .line 176
    if-le v8, v9, :cond_a

    .line 177
    .line 178
    :cond_9
    const/16 v9, 0x2d

    .line 179
    .line 180
    if-ne v8, v9, :cond_1

    .line 181
    .line 182
    :cond_a
    :goto_3
    add-int/2addr v3, v0

    .line 183
    goto :goto_2

    .line 184
    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    sub-int/2addr v3, v5

    .line 189
    sub-int/2addr v3, v0

    .line 190
    if-eqz v3, :cond_1

    .line 191
    .line 192
    if-le v3, v9, :cond_c

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_c
    if-le v7, v0, :cond_1

    .line 196
    .line 197
    const-class v3, Landroid/content/UriRelativeFilterGroupParcel;

    .line 198
    .line 199
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-static {v3}, Landroid/content/UriRelativeFilterGroup;->parcelsToGroups(Ljava/util/List;)Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    if-eqz v3, :cond_e

    .line 208
    .line 209
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_d

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_d
    invoke-virtual {p0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :catchall_0
    move-exception p0

    .line 222
    goto :goto_5

    .line 223
    :cond_e
    :goto_4
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_f
    monitor-exit v1

    .line 229
    return-void

    .line 230
    :cond_10
    invoke-static {p1}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->throwPackageUnavailable(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const/4 p0, 0x0

    .line 234
    throw p0

    .line 235
    :goto_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    throw p0
.end method

.method public final verifyPackages(Ljava/util/List;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->assertInternal(I)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v2

    .line 29
    :try_start_0
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    :goto_0
    if-ge v1, p1, :cond_0

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 40
    .line 41
    iget-object v3, v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 48
    .line 49
    invoke-static {v0, v3, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->addIfShouldBroadcastLocked(Ljava/util/Collection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Z)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    monitor-exit v2

    .line 58
    goto :goto_4

    .line 59
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v2

    .line 64
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    :goto_2
    if-ge v1, v3, :cond_3

    .line 69
    .line 70
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Ljava/lang/String;

    .line 75
    .line 76
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 77
    .line 78
    iget-object v5, v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 85
    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    invoke-static {v0, v4, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->addIfShouldBroadcastLocked(Ljava/util/Collection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    goto :goto_6

    .line 94
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    :goto_4
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_5

    .line 103
    .line 104
    iget-boolean p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mCanSendBroadcasts:Z

    .line 105
    .line 106
    if-nez p1, :cond_4

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 110
    .line 111
    invoke-interface {p0, v0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->sendBroadcastForPackages(Ljava/util/Set;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    :goto_5
    return-void

    .line 115
    :goto_6
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    throw p0
.end method

.method public final writeSettings(Lcom/android/server/pm/Computer;Lcom/android/modules/utils/TypedXmlSerializer;ZI)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    :try_start_0
    new-instance p3, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    invoke-direct {p3, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/Computer;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    move-object v6, p3

    .line 12
    goto :goto_1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto/16 :goto_d

    .line 15
    .line 16
    :cond_0
    const/4 p3, 0x0

    .line 17
    goto :goto_0

    .line 18
    :goto_1
    iget-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 21
    .line 22
    iget-object p3, p1, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    iget-object v3, p1, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    .line 26
    .line 27
    iget-object v4, p1, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    .line 28
    .line 29
    move-object v1, p2

    .line 30
    move v5, p4

    .line 31
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;ILcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda1;)V

    .line 32
    .line 33
    .line 34
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 35
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance p1, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;

    .line 42
    .line 43
    invoke-direct {p1, p2}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;-><init>(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 44
    .line 45
    .line 46
    :try_start_3
    const-string p3, "domain-verifications-legacy"

    .line 47
    .line 48
    invoke-virtual {p1, p3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 49
    .line 50
    .line 51
    :try_start_4
    iget-object p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 54
    :try_start_5
    iget-object p4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    .line 57
    .line 58
    .line 59
    move-result p4

    .line 60
    const/4 v0, 0x0

    .line 61
    move v1, v0

    .line 62
    :goto_2
    if-ge v1, p4, :cond_3

    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    .line 71
    .line 72
    iget-object v2, v2, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->mUserStates:Landroid/util/SparseIntArray;

    .line 73
    .line 74
    if-nez v2, :cond_1

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Ljava/lang/String;

    .line 84
    .line 85
    const-string/jumbo v4, "user-states"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v4}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string/jumbo v4, "packageName"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v4, v3}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 95
    .line 96
    .line 97
    :try_start_6
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    move v4, v0

    .line 102
    :goto_3
    if-ge v4, v3, :cond_2

    .line 103
    .line 104
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    const-string/jumbo v7, "user-state"

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v7}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->startSection(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string/jumbo v7, "userId"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v5, v7}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(ILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string/jumbo v5, "state"

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v6, v5}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->attribute(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 131
    .line 132
    .line 133
    add-int/lit8 v4, v4, 0x1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :catchall_1
    move-exception p0

    .line 137
    goto :goto_5

    .line 138
    :cond_2
    :try_start_7
    invoke-virtual {p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 139
    .line 140
    .line 141
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :catchall_2
    move-exception p0

    .line 145
    goto :goto_8

    .line 146
    :goto_5
    :try_start_8
    invoke-virtual {p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 147
    .line 148
    .line 149
    goto :goto_6

    .line 150
    :catchall_3
    move-exception p4

    .line 151
    :try_start_9
    invoke-virtual {p0, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    :goto_6
    throw p0

    .line 155
    :cond_3
    monitor-exit p3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 156
    :try_start_a
    invoke-virtual {p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 157
    .line 158
    .line 159
    iget-object p0, p1, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 160
    .line 161
    if-eqz p0, :cond_4

    .line 162
    .line 163
    :goto_7
    iget-object p0, p1, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-nez p0, :cond_4

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    .line 172
    .line 173
    .line 174
    goto :goto_7

    .line 175
    :cond_4
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :catchall_4
    move-exception p0

    .line 180
    goto :goto_a

    .line 181
    :goto_8
    :try_start_b
    monitor-exit p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 182
    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 183
    :catchall_5
    move-exception p0

    .line 184
    :try_start_d
    invoke-virtual {p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 185
    .line 186
    .line 187
    goto :goto_9

    .line 188
    :catchall_6
    move-exception p3

    .line 189
    :try_start_e
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    :goto_9
    throw p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 193
    :goto_a
    :try_start_f
    iget-object p3, p1, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 194
    .line 195
    if-eqz p3, :cond_5

    .line 196
    .line 197
    :goto_b
    iget-object p3, p1, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 198
    .line 199
    invoke-virtual {p3}, Ljava/util/Stack;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result p3

    .line 203
    if-nez p3, :cond_5

    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->close()V

    .line 206
    .line 207
    .line 208
    goto :goto_b

    .line 209
    :cond_5
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 210
    .line 211
    .line 212
    goto :goto_c

    .line 213
    :catchall_7
    move-exception p1

    .line 214
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 215
    .line 216
    .line 217
    :goto_c
    throw p0

    .line 218
    :catchall_8
    move-exception p0

    .line 219
    :try_start_10
    monitor-exit p3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 220
    :try_start_11
    throw p0

    .line 221
    :goto_d
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 222
    throw p0
.end method
