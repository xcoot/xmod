.class public final Lcom/android/server/devicepolicy/DevicePolicyEngine;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CELLULAR_2G_USER_RESTRICTION_ID:Ljava/lang/String;


# instance fields
.field public final mAdminPolicySize:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

.field public final mEnforcingAdmins:Landroid/util/SparseArray;

.field public final mGlobalPolicies:Ljava/util/Map;

.field public final mLocalPolicies:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public mPolicySizeLimit:I

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "no_cellular_2g"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->CELLULAR_2G_USER_RESTRICTION_ID:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/devicepolicy/DeviceAdminServiceController;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 13
    .line 14
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    const-class p2, Landroid/os/UserManager;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/os/UserManager;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    .line 28
    .line 29
    new-instance p1, Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 35
    .line 36
    new-instance p1, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 42
    .line 43
    new-instance p1, Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 49
    .line 50
    new-instance p1, Landroid/util/SparseArray;

    .line 51
    .line 52
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 56
    .line 57
    return-void
.end method

.method public static getUserRestrictionPolicyKeysForAdminLocked(Ljava/util/Map;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/Set;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/app/admin/PolicyKey;

    .line 25
    .line 26
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/server/devicepolicy/PolicyState;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 33
    .line 34
    iget v3, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 35
    .line 36
    and-int/lit8 v3, v3, 0x10

    .line 37
    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/server/devicepolicy/PolicyState;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/app/admin/PolicyValue;

    .line 55
    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    check-cast v2, Landroid/app/admin/UserRestrictionPolicyKey;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    return-object v0
.end method

.method public static shouldApplyPackageSetUnionPolicyHack(Lcom/android/server/devicepolicy/PolicyDefinition;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v0, "userControlDisabledPackages"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string/jumbo v0, "packagesSuspended"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    :goto_1
    return p0
.end method

.method public static sizeOf(Landroid/app/admin/PolicyValue;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    array-length p0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string v1, "Error calculating size of policy: "

    .line 20
    .line 21
    const-string v2, "DevicePolicyEngine"

    .line 22
    .line 23
    invoke-static {p0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return v0
.end method


# virtual methods
.method public final applyGlobalPolicyOnUsersWithLocalPoliciesLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    move v2, v0

    .line 11
    move v3, v1

    .line 12
    :goto_0
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-ge v2, v4, :cond_6

    .line 19
    .line 20
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-nez v5, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v6}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v5, v6}, Lcom/android/server/devicepolicy/PolicyState;->resolvePolicy(Ljava/util/LinkedHashMap;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_2

    .line 50
    .line 51
    iget-object v6, v5, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 52
    .line 53
    invoke-virtual {p0, p1, v6, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v5, p2, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->shouldApplyPackageSetUnionPolicyHack(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_4

    .line 64
    .line 65
    iget-object v4, v5, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 66
    .line 67
    invoke-static {p3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_5

    .line 72
    .line 73
    iget-object v4, v5, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 74
    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    if-eqz p3, :cond_3

    .line 78
    .line 79
    invoke-virtual {v4}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Ljava/util/Set;

    .line 84
    .line 85
    invoke-virtual {p3}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    check-cast v5, Ljava/util/Collection;

    .line 90
    .line 91
    invoke-interface {v4, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_3

    .line 96
    .line 97
    move v4, v1

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    move v4, v0

    .line 100
    :goto_1
    and-int/2addr v3, v4

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    iget-object v4, v5, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 103
    .line 104
    invoke-static {p3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    goto :goto_1

    .line 109
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_6
    return v3
.end method

.method public final clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 5
    .line 6
    check-cast v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final decreasePolicySizeForAdmin(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 12
    .line 13
    iget v1, p2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 22
    .line 23
    iget v1, p2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/util/HashMap;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/app/admin/PolicyValue;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sizeOf(Landroid/app/admin/PolicyValue;)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    sub-int/2addr v2, p1

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Ljava/util/HashMap;

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-gtz p1, :cond_1

    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    :cond_1
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Ljava/util/HashMap;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_2

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 132
    .line 133
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 134
    .line 135
    .line 136
    :cond_2
    :goto_0
    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Local Policies: "

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ge v2, v3, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const-string v4, "User %d:\n"

    .line 29
    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {p1, v4, v5}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 42
    .line 43
    .line 44
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Ljava/util/Map;

    .line 51
    .line 52
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_0

    .line 65
    .line 66
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Landroid/app/admin/PolicyKey;

    .line 71
    .line 72
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Ljava/util/Map;

    .line 79
    .line 80
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Lcom/android/server/devicepolicy/PolicyState;

    .line 85
    .line 86
    invoke-virtual {v5, p1}, Lcom/android/server/devicepolicy/PolicyState;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto/16 :goto_5

    .line 95
    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 97
    .line 98
    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 106
    .line 107
    .line 108
    const-string v2, "Global Policies: "

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 117
    .line 118
    check-cast v2, Ljava/util/HashMap;

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_2

    .line 133
    .line 134
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 139
    .line 140
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 141
    .line 142
    check-cast v4, Ljava/util/HashMap;

    .line 143
    .line 144
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Lcom/android/server/devicepolicy/PolicyState;

    .line 149
    .line 150
    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/PolicyState;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 158
    .line 159
    .line 160
    invoke-static {}, Landroid/app/admin/flags/Flags;->devicePolicySizeTrackingInternalBugFixEnabled()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_5

    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 167
    .line 168
    .line 169
    const-string v2, "Default admin policy size limit: -1"

    .line 170
    .line 171
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v3, "Current admin policy size limit: "

    .line 180
    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    .line 185
    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string v2, "Admin Policies size: "

    .line 197
    .line 198
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    move v2, v1

    .line 202
    :goto_3
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 203
    .line 204
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-ge v2, v3, :cond_4

    .line 209
    .line 210
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 211
    .line 212
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    const-string v4, "User %d:\n"

    .line 217
    .line 218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {p1, v4, v5}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 230
    .line 231
    .line 232
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 233
    .line 234
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    check-cast v4, Ljava/util/HashMap;

    .line 239
    .line 240
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v5, :cond_3

    .line 253
    .line 254
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    check-cast v5, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 259
    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    const-string v7, "Admin : "

    .line 266
    .line 267
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v7, " : "

    .line 274
    .line 275
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 279
    .line 280
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    check-cast v7, Ljava/util/HashMap;

    .line 285
    .line 286
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    new-array v6, v1, [Ljava/lang/Object;

    .line 298
    .line 299
    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 307
    .line 308
    .line 309
    add-int/lit8 v2, v2, 0x1

    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 313
    .line 314
    .line 315
    :cond_5
    monitor-exit v0

    .line 316
    return-void

    .line 317
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    throw p0
.end method

.method public final enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    .line 12
    .line 13
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 18
    .line 19
    invoke-interface {v0, p2, p0, p3, p1}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final getEnforcingAdminsOnUser(I)Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/util/HashSet;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/util/Collection;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    monitor-exit v0

    .line 33
    return-object v1

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final getGlobalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;)Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    monitor-exit v0

    .line 28
    return-object p0

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final getGlobalPolicySetByAdmin(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object v2

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroid/app/admin/PolicyValue;

    .line 31
    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :goto_0
    monitor-exit v0

    .line 40
    return-object v2

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 10
    .line 11
    check-cast v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 20
    .line 21
    iget-object v1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 22
    .line 23
    new-instance v2, Lcom/android/server/devicepolicy/PolicyState;

    .line 24
    .line 25
    invoke-direct {v2, p1}, Lcom/android/server/devicepolicy/PolicyState;-><init>(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 26
    .line 27
    .line 28
    check-cast v0, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 34
    .line 35
    :try_start_0
    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 36
    .line 37
    check-cast p0, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lcom/android/server/devicepolicy/PolicyState;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    return-object p0

    .line 46
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, " is a local only policy."

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public final getLocalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    monitor-exit v0

    .line 31
    return-object p0

    .line 32
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final getLocalPolicyKeysSetByAllAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/Set;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_3

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Landroid/app/admin/PolicyKey;

    .line 54
    .line 55
    iget-object v2, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 56
    .line 57
    invoke-virtual {p2, v2}, Landroid/app/admin/PolicyKey;->hasSameIdentifierAs(Landroid/app/admin/PolicyKey;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    monitor-exit v0

    .line 70
    return-object v1

    .line 71
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    monitor-exit v0

    .line 76
    return-object p0

    .line 77
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
.end method

.method public final getLocalPolicySetByAdmin(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v2

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroid/app/admin/PolicyValue;

    .line 34
    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :goto_0
    monitor-exit v0

    .line 43
    return-object v2

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 16
    .line 17
    new-instance v1, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/util/Map;

    .line 32
    .line 33
    iget-object v1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/util/Map;

    .line 48
    .line 49
    iget-object v1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 50
    .line 51
    new-instance v2, Lcom/android/server/devicepolicy/PolicyState;

    .line 52
    .line 53
    invoke-direct {v2, p1}, Lcom/android/server/devicepolicy/PolicyState;-><init>(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 60
    .line 61
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/util/Map;

    .line 66
    .line 67
    :try_start_0
    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 68
    .line 69
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Lcom/android/server/devicepolicy/PolicyState;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    return-object p0

    .line 76
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, " is a global only policy."

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0
.end method

.method public final getResolvedPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getResolvedPolicyValue(Lcom/android/server/devicepolicy/PolicyDefinition;I)Landroid/app/admin/PolicyValue;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :goto_0
    return-object p0
.end method

.method public final getResolvedPolicyValue(Lcom/android/server/devicepolicy/PolicyDefinition;I)Landroid/app/admin/PolicyValue;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    :goto_0
    monitor-exit v0

    .line 37
    return-object p0

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final handleAdminPolicySizeLimit(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v1, p2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    iget v2, p2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v0, v1

    .line 48
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/app/admin/PolicyValue;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sizeOf(Landroid/app/admin/PolicyValue;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move p1, v1

    .line 74
    :goto_1
    invoke-static {p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sizeOf(Landroid/app/admin/PolicyValue;)I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    .line 79
    .line 80
    const/4 v4, -0x1

    .line 81
    if-eq v3, v4, :cond_3

    .line 82
    .line 83
    add-int/2addr v0, p3

    .line 84
    sub-int/2addr v0, p1

    .line 85
    if-ge v0, v3, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string p3, "Admin "

    .line 91
    .line 92
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string/jumbo p3, "reached max allowed storage limit."

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const-string p3, "DevicePolicyEngine"

    .line 109
    .line 110
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    const/4 p1, 0x3

    .line 114
    invoke-virtual {p0, p2, p4, p1, p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    .line 115
    .line 116
    .line 117
    return v1

    .line 118
    :cond_3
    :goto_2
    sub-int/2addr p3, p1

    .line 119
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 120
    .line 121
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->contains(I)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_4

    .line 126
    .line 127
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 128
    .line 129
    new-instance p4, Ljava/util/HashMap;

    .line 130
    .line 131
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v2, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 138
    .line 139
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Ljava/util/HashMap;

    .line 144
    .line 145
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_5

    .line 150
    .line 151
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 152
    .line 153
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Ljava/util/HashMap;

    .line 158
    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object p4

    .line 163
    invoke-virtual {p1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    :cond_5
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 167
    .line 168
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Ljava/util/HashMap;

    .line 173
    .line 174
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    .line 175
    .line 176
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    check-cast p0, Ljava/util/HashMap;

    .line 181
    .line 182
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    check-cast p0, Ljava/lang/Integer;

    .line 187
    .line 188
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    add-int/2addr p0, p3

    .line 193
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    const/4 p0, 0x1

    .line 201
    return p0
.end method

.method public final handleUserRemoved(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

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
    goto :goto_1

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_3

    .line 16
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroid/app/admin/PolicyKey;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/android/server/devicepolicy/PolicyState;

    .line 62
    .line 63
    new-instance v3, Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_1

    .line 85
    .line 86
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 91
    .line 92
    iget-object v5, v2, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 93
    .line 94
    invoke-virtual {p0, v5, v4, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 99
    .line 100
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 101
    .line 102
    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 123
    .line 124
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    return-void

    .line 129
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    throw p0
.end method

.method public final hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return v1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 16
    .line 17
    iget-object v3, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 18
    .line 19
    check-cast v0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 29
    .line 30
    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 31
    .line 32
    check-cast p0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/android/server/devicepolicy/PolicyState;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    xor-int/2addr p0, v2

    .line 49
    return p0
.end method

.method public final hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/Map;

    .line 25
    .line 26
    iget-object v2, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 27
    .line 28
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    return v1

    .line 35
    :cond_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Ljava/util/Map;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 44
    .line 45
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lcom/android/server/devicepolicy/PolicyState;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    xor-int/lit8 p0, p0, 0x1

    .line 60
    .line 61
    return p0
.end method

.method public final maybeForceEnforcementRefreshLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    instance-of v0, v0, Landroid/app/admin/UserRestrictionPolicyKey;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    const-string p1, "DevicePolicyEngine"

    .line 25
    .line 26
    const-string v0, "Exception throw during maybeForceEnforcementRefreshLocked"

    .line 27
    .line 28
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    :cond_2
    :goto_0
    return-void
.end method

.method public final maybeSendIntentToAdminReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 16
    .line 17
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 18
    .line 19
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Receiver "

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, " is not protected by BIND_DEVICE_ADMIN permission!"

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "DevicePolicyEngine"

    .line 51
    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method public final reapplyAllPoliciesOnBootLocked()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/app/admin/PolicyKey;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 26
    .line 27
    check-cast v2, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/server/devicepolicy/PolicyState;

    .line 34
    .line 35
    iget-object v2, v1, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 36
    .line 37
    iget v3, v2, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 38
    .line 39
    and-int/lit8 v3, v3, 0x20

    .line 40
    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, v1, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 45
    .line 46
    const/4 v3, -0x1

    .line 47
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x0

    .line 52
    :goto_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-ge v0, v1, :cond_4

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/util/Map;

    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_3

    .line 87
    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 93
    .line 94
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 95
    .line 96
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Ljava/util/Map;

    .line 101
    .line 102
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Lcom/android/server/devicepolicy/PolicyState;

    .line 107
    .line 108
    iget-object v4, v3, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 109
    .line 110
    iget v5, v4, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 111
    .line 112
    and-int/lit8 v5, v5, 0x20

    .line 113
    .line 114
    if-eqz v5, :cond_2

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_2
    iget-object v3, v3, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 118
    .line 119
    invoke-virtual {p0, v4, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    return-void
.end method

.method public final removeGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {}, Landroid/app/admin/flags/Flags;->devicePolicySizeTrackingInternalBugFixEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->decreasePolicySizeForAdmin(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v2, v1, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-virtual {v2, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v2, v1, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    iget-object v3, v1, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/ResolutionMechanism;->resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v3, v1, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 57
    .line 58
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    xor-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    iput-object v2, v1, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 65
    .line 66
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->maybeForceEnforcementRefreshLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 67
    .line 68
    .line 69
    const/4 v2, -0x1

    .line 70
    if-eqz v3, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    iget-object v4, v3, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 77
    .line 78
    invoke-virtual {p0, p1, v4, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v3, p2, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendDevicePolicyChangedToSystem(I)V

    .line 85
    .line 86
    .line 87
    :cond_3
    const/4 v3, 0x0

    .line 88
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->applyGlobalPolicyOnUsersWithLocalPoliciesLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z

    .line 89
    .line 90
    .line 91
    const/4 v3, 0x2

    .line 92
    invoke-virtual {p0, p2, p1, v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 108
    .line 109
    check-cast v1, Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyRemoveLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 118
    .line 119
    .line 120
    monitor-exit v0

    .line 121
    return-void

    .line 122
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    throw p0
.end method

.method public final removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V
    .locals 8

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->maybeForceEnforcementRefreshLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {}, Landroid/app/admin/flags/Flags;->devicePolicySizeTrackingInternalBugFixEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v3, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->decreasePolicySizeForAdmin(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    move-object v1, p0

    .line 46
    move-object v2, p1

    .line 47
    move-object v4, p2

    .line 48
    move v6, p3

    .line 49
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setNonCoexistableLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 50
    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/4 v2, 0x0

    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object v4, v3, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    invoke-virtual {v4, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    if-nez v4, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {v3, v1}, Lcom/android/server/devicepolicy/PolicyState;->resolvePolicy(Ljava/util/LinkedHashMap;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget-object v1, v3, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 90
    .line 91
    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-nez v1, :cond_5

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    iget-object v1, v3, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_6

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_6
    iget-object v2, v3, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 108
    .line 109
    iget-object v1, v1, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Lcom/android/server/devicepolicy/ResolutionMechanism;->resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v2, v3, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 116
    .line 117
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    xor-int/lit8 v2, v2, 0x1

    .line 122
    .line 123
    iput-object v1, v3, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 124
    .line 125
    :goto_0
    if-eqz v2, :cond_8

    .line 126
    .line 127
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget-object v2, v1, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 132
    .line 133
    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v1, p2, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_7

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {p0, v1, p2, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 150
    .line 151
    .line 152
    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendDevicePolicyChangedToSystem(I)V

    .line 153
    .line 154
    .line 155
    :cond_8
    const/4 v1, 0x2

    .line 156
    invoke-virtual {p0, p2, p1, v1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_a

    .line 168
    .line 169
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 170
    .line 171
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->contains(I)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_9

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_9
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 179
    .line 180
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Ljava/util/Map;

    .line 185
    .line 186
    iget-object v2, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 187
    .line 188
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    :cond_a
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyRemoveLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 195
    .line 196
    .line 197
    iget v1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 198
    .line 199
    and-int/lit8 v1, v1, 0x4

    .line 200
    .line 201
    if-eqz v1, :cond_b

    .line 202
    .line 203
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;

    .line 204
    .line 205
    const/4 v5, 0x0

    .line 206
    move-object v2, v1

    .line 207
    move-object v3, p0

    .line 208
    move v4, p3

    .line 209
    move-object v6, p1

    .line 210
    move-object v7, p2

    .line 211
    invoke-direct/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILandroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 212
    .line 213
    .line 214
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 215
    .line 216
    .line 217
    :cond_b
    monitor-exit v0

    .line 218
    return-void

    .line 219
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    throw p0
.end method

.method public final removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 7
    .line 8
    check-cast v2, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/app/admin/PolicyKey;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 34
    .line 35
    check-cast v3, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/android/server/devicepolicy/PolicyState;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    iget-object v2, v2, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 54
    .line 55
    invoke-virtual {p0, v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_3

    .line 61
    :cond_1
    const/4 v1, 0x0

    .line 62
    :goto_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ge v1, v2, :cond_4

    .line 69
    .line 70
    new-instance v2, Ljava/util/HashSet;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Ljava/util/Map;

    .line 83
    .line 84
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_3

    .line 100
    .line 101
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 106
    .line 107
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 108
    .line 109
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Ljava/util/Map;

    .line 118
    .line 119
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Lcom/android/server/devicepolicy/PolicyState;

    .line 124
    .line 125
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_2

    .line 134
    .line 135
    iget-object v3, v3, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 136
    .line 137
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 138
    .line 139
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    monitor-exit v0

    .line 151
    return-void

    .line 152
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    throw p0
.end method

.method public final sendDevicePolicyChangedToSystem(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x40000000    # 2.0f

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/app/BroadcastOptions;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/app/BroadcastOptions;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-direct {v2, p0, v0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v5, v1

    .line 24
    check-cast v5, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 25
    .line 26
    invoke-virtual {v5, p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p1, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 42
    .line 43
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    xor-int/lit8 v8, v1, 0x1

    .line 48
    .line 49
    new-instance v4, Landroid/content/Intent;

    .line 50
    .line 51
    const-string v1, "android.app.admin.action.DEVICE_POLICY_CHANGED"

    .line 52
    .line 53
    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v5, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;

    .line 62
    .line 63
    const/4 v9, 0x1

    .line 64
    move-object v2, v1

    .line 65
    move-object v3, p0

    .line 66
    move-object v6, p3

    .line 67
    move v7, p4

    .line 68
    invoke-direct/range {v2 .. v9}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;III)V

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method public final sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V
    .locals 9

    .line 1
    new-instance v2, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "android.app.admin.action.DEVICE_POLICY_SET_RESULT"

    .line 4
    .line 5
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    new-instance v8, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    move-object v0, v8

    .line 17
    move-object v1, p0

    .line 18
    move-object v3, p1

    .line 19
    move-object v4, p2

    .line 20
    move v5, p4

    .line 21
    move v6, p3

    .line 22
    invoke-direct/range {v0 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;III)V

    .line 23
    .line 24
    .line 25
    invoke-static {v8}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final setGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)V
    .locals 8

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    invoke-static {}, Landroid/app/admin/flags/Flags;->devicePolicySizeTrackingInternalBugFixEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v6, -0x1

    .line 21
    move-object v1, p0

    .line 22
    move-object v2, v7

    .line 23
    move-object v3, p2

    .line 24
    move-object v4, p3

    .line 25
    move-object v5, p1

    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->handleAdminPolicySizeLimit(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_0
    iget-object v1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Lcom/android/server/devicepolicy/DevicePolicyEngine;->CELLULAR_2G_USER_RESTRICTION_ID:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    const/4 v2, -0x1

    .line 51
    const/4 v3, 0x0

    .line 52
    const/4 v4, 0x1

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    :cond_1
    move v1, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    const-class v5, Landroid/telephony/TelephonyManager;

    .line 60
    .line 61
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 66
    .line 67
    const-string v5, "CAPABILITY_USES_ALLOWED_NETWORK_TYPES_BITMASK"

    .line 68
    .line 69
    invoke-virtual {v1, v5}, Landroid/telephony/TelephonyManager;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move v1, v3

    .line 75
    :goto_0
    if-nez v1, :cond_1

    .line 76
    .line 77
    const/4 v1, 0x4

    .line 78
    :try_start_2
    invoke-virtual {p0, p2, p1, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    .line 79
    .line 80
    .line 81
    move v1, v4

    .line 82
    :goto_1
    if-eqz v1, :cond_3

    .line 83
    .line 84
    const-string p0, "DevicePolicyEngine"

    .line 85
    .line 86
    const-string p1, "Device does not support capabilities required to disable 2g. Not setting global policy state."

    .line 87
    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    monitor-exit v0

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    invoke-virtual {v7, p2, p3}, Lcom/android/server/devicepolicy/PolicyState;->addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->applyGlobalPolicyOnUsersWithLocalPoliciesLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->maybeForceEnforcementRefreshLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 102
    .line 103
    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget-object v6, v1, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 111
    .line 112
    invoke-virtual {p0, p1, v6, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v1, p2, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendDevicePolicyChangedToSystem(I)V

    .line 119
    .line 120
    .line 121
    :cond_4
    iget-object v1, v7, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 122
    .line 123
    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_6

    .line 128
    .line 129
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->shouldApplyPackageSetUnionPolicyHack(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_6

    .line 134
    .line 135
    iget-object v1, v7, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 136
    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    invoke-virtual {v1}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Ljava/util/Set;

    .line 144
    .line 145
    invoke-virtual {p3}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p3

    .line 149
    check-cast p3, Ljava/util/Collection;

    .line 150
    .line 151
    invoke-interface {v1, p3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 152
    .line 153
    .line 154
    move-result p3

    .line 155
    if-eqz p3, :cond_5

    .line 156
    .line 157
    move v1, v4

    .line 158
    goto :goto_2

    .line 159
    :cond_5
    move v1, v3

    .line 160
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 161
    .line 162
    if-eqz v5, :cond_7

    .line 163
    .line 164
    move v3, v4

    .line 165
    :cond_7
    xor-int/lit8 p3, v3, 0x1

    .line 166
    .line 167
    invoke-virtual {p0, p2, p1, p3, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyAddLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 174
    .line 175
    .line 176
    monitor-exit v0

    .line 177
    :goto_3
    return-void

    .line 178
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    throw p0
.end method

.method public final setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V
    .locals 8

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p0, p1, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    invoke-static {}, Landroid/app/admin/flags/Flags;->devicePolicySizeTrackingInternalBugFixEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    move-object v1, p0

    .line 21
    move-object v2, v7

    .line 22
    move-object v3, p2

    .line 23
    move-object v4, p3

    .line 24
    move-object v5, p1

    .line 25
    move v6, p4

    .line 26
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->handleAdminPolicySizeLimit(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    move-object v1, p0

    .line 44
    move-object v2, p1

    .line 45
    move-object v3, v7

    .line 46
    move-object v4, p2

    .line 47
    move-object v5, p3

    .line 48
    move v6, p4

    .line 49
    move v7, p5

    .line 50
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setNonCoexistableLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 51
    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v2, v7, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    invoke-virtual {v2, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7, v1}, Lcom/android/server/devicepolicy/PolicyState;->resolvePolicy(Ljava/util/LinkedHashMap;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v7, p2, p3}, Lcom/android/server/devicepolicy/PolicyState;->addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    :goto_0
    if-nez p5, :cond_7

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->maybeForceEnforcementRefreshLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    .line 86
    .line 87
    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    invoke-virtual {p0, p1, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    .line 91
    .line 92
    .line 93
    move-result-object p5

    .line 94
    iget-object v1, p5, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 95
    .line 96
    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p5, p2, p1, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    .line 103
    .line 104
    .line 105
    move-result p5

    .line 106
    if-eqz p5, :cond_3

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    .line 109
    .line 110
    .line 111
    move-result-object p5

    .line 112
    invoke-virtual {p0, p5, p2, p1, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    .line 113
    .line 114
    .line 115
    :cond_3
    invoke-virtual {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendDevicePolicyChangedToSystem(I)V

    .line 116
    .line 117
    .line 118
    :cond_4
    iget-object p5, v7, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 119
    .line 120
    invoke-static {p5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p5

    .line 124
    const/4 v1, 0x1

    .line 125
    if-nez p5, :cond_6

    .line 126
    .line 127
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->shouldApplyPackageSetUnionPolicyHack(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_6

    .line 132
    .line 133
    iget-object p5, v7, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 134
    .line 135
    if-eqz p5, :cond_5

    .line 136
    .line 137
    if-eqz p3, :cond_5

    .line 138
    .line 139
    invoke-virtual {p5}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p5

    .line 143
    check-cast p5, Ljava/util/Set;

    .line 144
    .line 145
    invoke-virtual {p3}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Ljava/util/Collection;

    .line 150
    .line 151
    invoke-interface {p5, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 152
    .line 153
    .line 154
    move-result p5

    .line 155
    if-eqz p5, :cond_5

    .line 156
    .line 157
    move p5, v1

    .line 158
    goto :goto_1

    .line 159
    :cond_5
    const/4 p5, 0x0

    .line 160
    :cond_6
    :goto_1
    xor-int/2addr p5, v1

    .line 161
    invoke-virtual {p0, p2, p1, p5, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    .line 162
    .line 163
    .line 164
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyAddLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 168
    .line 169
    .line 170
    iget p5, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 171
    .line 172
    and-int/lit8 p5, p5, 0x4

    .line 173
    .line 174
    if-eqz p5, :cond_8

    .line 175
    .line 176
    new-instance p5, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;

    .line 177
    .line 178
    move-object v1, p5

    .line 179
    move-object v2, p0

    .line 180
    move v3, p4

    .line 181
    move-object v4, p3

    .line 182
    move-object v5, p1

    .line 183
    move-object v6, p2

    .line 184
    invoke-direct/range {v1 .. v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILandroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 185
    .line 186
    .line 187
    invoke-static {p5}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 188
    .line 189
    .line 190
    :cond_8
    monitor-exit v0

    .line 191
    return-void

    .line 192
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    throw p0
.end method

.method public final setNonCoexistableLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V
    .locals 6

    .line 1
    if-nez p4, :cond_2

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v0, p2, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p2, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p2, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/ResolutionMechanism;->resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p2, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    iput-object v0, p2, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p2, p3, p4}, Lcom/android/server/devicepolicy/PolicyState;->addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z

    .line 44
    .line 45
    .line 46
    :goto_0
    if-nez p6, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_5

    .line 60
    .line 61
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-virtual {p2, p5}, Landroid/util/SparseArray;->contains(I)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_4

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 71
    .line 72
    invoke-virtual {p2, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Ljava/util/Map;

    .line 77
    .line 78
    iget-object p6, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 79
    .line 80
    invoke-interface {p2, p6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :cond_5
    :goto_1
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyAddLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    .line 87
    .line 88
    .line 89
    iget p2, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 90
    .line 91
    and-int/lit8 p2, p2, 0x4

    .line 92
    .line 93
    if-eqz p2, :cond_6

    .line 94
    .line 95
    new-instance p2, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;

    .line 96
    .line 97
    move-object v0, p2

    .line 98
    move-object v1, p0

    .line 99
    move v2, p5

    .line 100
    move-object v3, p4

    .line 101
    move-object v4, p1

    .line 102
    move-object v5, p3

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILandroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 107
    .line 108
    .line 109
    :cond_6
    return-void
.end method

.method public final updateDeviceAdminServiceOnPolicyAddLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/util/Set;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 27
    .line 28
    iget v2, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 37
    .line 38
    new-instance v3, Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/util/Set;

    .line 53
    .line 54
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    const-string/jumbo v1, "enterprise"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->startServiceForAdmin(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final updateDeviceAdminServiceOnPolicyRemoveLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/app/admin/PolicyKey;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    .line 26
    .line 27
    check-cast v2, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/server/devicepolicy/PolicyState;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ge v0, v1, :cond_4

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/util/Map;

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/app/admin/PolicyKey;

    .line 86
    .line 87
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    .line 88
    .line 89
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Ljava/util/Map;

    .line 98
    .line 99
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Lcom/android/server/devicepolicy/PolicyState;

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_2

    .line 114
    .line 115
    :goto_1
    return-void

    .line 116
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    iget v0, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_5

    .line 128
    .line 129
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 130
    .line 131
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Ljava/util/Set;

    .line 136
    .line 137
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Ljava/util/Set;

    .line 147
    .line 148
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_5

    .line 153
    .line 154
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    .line 155
    .line 156
    iget v2, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 159
    .line 160
    .line 161
    :cond_5
    const-string/jumbo v1, "enterprise"

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_6

    .line 169
    .line 170
    return-void

    .line 171
    :cond_6
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 172
    .line 173
    iget-object p1, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->stopServiceForAdmin(ILjava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method public final updateDeviceAdminsServicesForUser(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->stopServicesForUser(I)V

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 28
    .line 29
    const-string/jumbo v1, "enterprise"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p2, p2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, p1, p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->startServiceForAdmin(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    return-void
.end method

.method public final write()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "DevicePolicyEngine"

    .line 5
    .line 6
    const-string v2, "Writing device policies to file."

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeToFileLocked()V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method
