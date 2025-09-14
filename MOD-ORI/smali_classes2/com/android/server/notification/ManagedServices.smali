.class public abstract Lcom/android/server/notification/ManagedServices;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final DEBUG:Z

.field public final TAG:Ljava/lang/String;

.field public mApprovalLevel:I

.field public final mApproved:Landroid/util/ArrayMap;

.field public final mConfig:Lcom/android/server/notification/ManagedServices$Config;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultComponents:Landroid/util/ArraySet;

.field public final mDefaultPackages:Landroid/util/ArraySet;

.field public final mDefaultsLock:Ljava/lang/Object;

.field public final mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

.field public final mEnabledServicesPackageNames:Landroid/util/ArraySet;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsUserChanged:Landroid/util/ArrayMap;

.field public final mMutex:Ljava/lang/Object;

.field public final mPm:Landroid/content/pm/IPackageManager;

.field public final mServices:Ljava/util/ArrayList;

.field public final mServicesBound:Ljava/util/ArrayList;

.field public final mServicesRebinding:Landroid/util/ArraySet;

.field public final mSnoozing:Landroid/util/SparseSetArray;

.field public final mUm:Landroid/os/UserManager;

.field public mUseXml:Z

.field public final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field public final mUserSetServices:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 20
    .line 21
    new-instance v0, Landroid/os/Handler;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    .line 45
    .line 46
    new-instance v0, Landroid/util/ArraySet;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServicesRebinding:Landroid/util/ArraySet;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/Object;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultsLock:Ljava/lang/Object;

    .line 59
    .line 60
    new-instance v0, Landroid/util/ArraySet;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 66
    .line 67
    new-instance v0, Landroid/util/ArraySet;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    .line 73
    .line 74
    new-instance v0, Landroid/util/ArraySet;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    .line 80
    .line 81
    new-instance v0, Landroid/util/ArraySet;

    .line 82
    .line 83
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    .line 87
    .line 88
    new-instance v0, Landroid/util/SparseSetArray;

    .line 89
    .line 90
    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    .line 94
    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    .line 96
    .line 97
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 101
    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    .line 108
    .line 109
    new-instance v0, Landroid/util/ArrayMap;

    .line 110
    .line 111
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    .line 115
    .line 116
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    iput-object p2, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object p3, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 121
    .line 122
    iput-object p4, p0, Lcom/android/server/notification/ManagedServices;->mPm:Landroid/content/pm/IPackageManager;

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    iput-object p2, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 129
    .line 130
    const/4 p2, 0x1

    .line 131
    iput p2, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    .line 132
    .line 133
    const-string/jumbo p2, "user"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Landroid/os/UserManager;

    .line 141
    .line 142
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    .line 143
    .line 144
    return-void
.end method

.method public static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    return-object p0
.end method

.method public static populateComponentsToUnbind(ZLjava/util/Set;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 18
    .line 19
    iget v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 20
    .line 21
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/util/Set;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 32
    .line 33
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    :cond_1
    iget v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 40
    .line 41
    new-instance v2, Landroid/util/ArraySet;

    .line 42
    .line 43
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/util/Set;

    .line 51
    .line 52
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 53
    .line 54
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iget v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 58
    .line 59
    invoke-virtual {p3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    return-void
.end method


# virtual methods
.method public addApprovedList(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p2, ""

    .line 8
    .line 9
    :cond_0
    if-nez p3, :cond_1

    .line 10
    .line 11
    move-object p3, p2

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/util/ArrayMap;

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    new-instance v1, Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_3

    .line 46
    :cond_2
    :goto_0
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/util/ArraySet;

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    new-instance v2, Landroid/util/ArraySet;

    .line 59
    .line 60
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object p4

    .line 67
    invoke-virtual {v1, p4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_3
    const-string p4, ":"

    .line 71
    .line 72
    invoke-virtual {p2, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    array-length p4, p2

    .line 77
    const/4 v1, 0x0

    .line 78
    move v3, v1

    .line 79
    :goto_1
    if-ge v3, p4, :cond_5

    .line 80
    .line 81
    aget-object v4, p2, v3

    .line 82
    .line 83
    invoke-virtual {p0, v4}, Lcom/android/server/notification/ManagedServices;->getApprovedValue(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    iget-object p2, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    .line 96
    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    invoke-virtual {p2, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Landroid/util/ArraySet;

    .line 106
    .line 107
    if-nez p2, :cond_6

    .line 108
    .line 109
    new-instance p2, Landroid/util/ArraySet;

    .line 110
    .line 111
    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object p4, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    .line 115
    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p4, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    :cond_6
    const-string p1, ":"

    .line 124
    .line 125
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    array-length p3, p1

    .line 130
    :goto_2
    if-ge v1, p3, :cond_8

    .line 131
    .line 132
    aget-object p4, p1, v1

    .line 133
    .line 134
    invoke-virtual {p0, p4}, Lcom/android/server/notification/ManagedServices;->getApprovedValue(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p4

    .line 138
    if-eqz p4, :cond_7

    .line 139
    .line 140
    invoke-virtual {p2, p4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_8
    monitor-exit v0

    .line 147
    return-void

    .line 148
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    throw p0
.end method

.method public final addDefaultComponentOrPackage(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultsLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget v1, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

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
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget v1, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :cond_1
    monitor-exit v0

    .line 51
    goto :goto_1

    .line 52
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0

    .line 54
    :cond_2
    :goto_1
    return-void
.end method

.method public abstract allowRebindForParentUser()Z
.end method

.method public abstract asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public final checkNotNull(Landroid/os/IInterface;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, " must not be null"

    .line 16
    .line 17
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public final checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Disallowed call from unknown "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, ": "

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p0, " "

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0
.end method

.method public clearApprovedList()V
    .locals 0

    .line 1
    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    const-wide v4, 0x10900000001L

    .line 2
    invoke-virtual {v1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 4
    :try_start_0
    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    const-wide v7, 0x20b00000002L

    if-ge v6, v4, :cond_3

    .line 5
    iget-object v9, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 6
    iget-object v10, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    if-eqz v10, :cond_2

    .line 7
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_2

    .line 8
    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 9
    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/ArraySet;

    .line 10
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-lez v15, :cond_1

    move/from16 v16, v6

    .line 11
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 12
    invoke-virtual {v14}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Ljava/lang/String;

    const-wide v7, 0x20900000001L

    .line 13
    invoke-virtual {v1, v7, v8, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v7, 0x20b00000002L

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    const-wide v7, 0x10500000002L

    .line 14
    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10800000003L

    .line 15
    invoke-virtual {v1, v7, v8, v13}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 16
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_3

    :cond_1
    move/from16 v16, v6

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v16

    const-wide v7, 0x20b00000002L

    goto :goto_1

    :cond_2
    move/from16 v16, v6

    add-int/lit8 v6, v16, 0x1

    goto/16 :goto_0

    .line 17
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 19
    :try_start_1
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 20
    invoke-virtual {v2, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    const-wide v6, 0x20b00000003L

    .line 21
    invoke-virtual {v5, v1, v6, v7}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    .line 22
    :cond_5
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 23
    iget-object v6, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_5

    .line 24
    :cond_6
    invoke-virtual {v5, v1, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/ManagedServices;)V

    goto :goto_5

    .line 25
    :cond_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    monitor-enter v2

    const/4 v5, 0x0

    .line 27
    :goto_6
    :try_start_2
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    move-result v3

    if-ge v5, v3, :cond_9

    const-wide v3, 0x20b00000006L

    .line 28
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 29
    iget-object v6, v0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    .line 30
    invoke-virtual {v6, v5}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v6

    const-wide v7, 0x10500000001L

    .line 31
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 32
    iget-object v6, v0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseSetArray;->valuesAt(I)Landroid/util/ArraySet;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    const-wide v8, 0x20b00000002L

    .line 33
    invoke-virtual {v7, v1, v8, v9}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_8
    const-wide v8, 0x20b00000002L

    .line 34
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 35
    :cond_9
    monitor-exit v2

    return-void

    :goto_8
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 36
    :goto_9
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 37
    :goto_a
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 13

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    Allowed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 40
    const-string/jumbo v2, "s:"

    .line 41
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 42
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 44
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 45
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 46
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    .line 47
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_2

    .line 48
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 49
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    .line 50
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 51
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "      "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-static {v12, v10}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (user: "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " isPrimary: "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-nez v4, :cond_0

    .line 52
    const-string v9, ""

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    .line 53
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " isUserChanged: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 54
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 55
    :cond_3
    const-string v1, "    Has user set:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 58
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " value="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    .line 60
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 62
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    All "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") enabled for current profiles:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 68
    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    .line 69
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto/16 :goto_b

    .line 70
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Live "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "):"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 74
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_5

    .line 75
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    iget-boolean v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v5, :cond_9

    const-string v5, " SYSTEM"

    goto :goto_6

    :cond_9
    const-string v5, ""

    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    if-eq v3, p0, :cond_a

    .line 78
    const-string v3, " GUEST"

    goto :goto_7

    :cond_a
    const-string v3, ""

    :goto_7
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 80
    :cond_b
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    iget-object p2, p0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    monitor-enter p2

    .line 82
    :try_start_2
    new-instance v0, Landroid/util/SparseSetArray;

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    invoke-direct {v0, v1}, Landroid/util/SparseSetArray;-><init>(Landroid/util/SparseSetArray;)V

    .line 83
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "    Snoozed "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 86
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    :goto_8
    invoke-virtual {v0}, Landroid/util/SparseSetArray;->size()I

    move-result p2

    if-ge v2, p2, :cond_f

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "      User: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v2}, Landroid/util/SparseSetArray;->valuesAt(I)Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 92
    invoke-virtual {v0, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3, v1}, Lcom/android/server/notification/ManagedServices;->getServiceInfo(ILandroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "        "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-eqz v3, :cond_c

    .line 94
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_c

    const-string v6, "android.service.notification.default_autobind_listenerservice"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 95
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_c
    if-eqz v1, :cond_d

    .line 96
    const-string v1, ""

    goto :goto_a

    .line 97
    :cond_d
    const-string v1, " (META_DATA_DEFAULT_AUTOBIND=false)"

    .line 98
    :goto_a
    invoke-static {v4, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_9

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_f
    return-void

    :catchall_2
    move-exception p0

    .line 99
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    .line 100
    :goto_b
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 101
    :goto_c
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public abstract ensureFilters(Landroid/content/pm/ServiceInfo;I)V
.end method

.method public getAllowedComponents(Landroid/util/IntArray;)Landroid/util/SparseArray;
    .locals 17

    move-object/from16 v0, p0

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/util/IntArray;->size()I

    move-result v1

    .line 12
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_7

    move-object/from16 v5, p1

    .line 13
    invoke-virtual {v5, v4}, Landroid/util/IntArray;->get(I)I

    move-result v6

    .line 14
    iget-object v7, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 15
    :try_start_0
    iget-object v8, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    if-eqz v8, :cond_6

    .line 16
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_6

    .line 17
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    if-nez v11, :cond_0

    .line 18
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 19
    invoke-virtual {v2, v6, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_7

    .line 20
    :cond_0
    :goto_2
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    if-eqz v12, :cond_1

    .line 21
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-nez v13, :cond_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_5

    .line 22
    :cond_2
    new-instance v13, Landroid/util/ArraySet;

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v14

    invoke-direct {v13, v14}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v14, 0x0

    .line 23
    :goto_3
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v15

    if-ge v14, v15, :cond_5

    .line 24
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 25
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 26
    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 27
    invoke-virtual {v13, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v0, v3, v6, v15}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(IILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v15

    .line 29
    invoke-virtual {v13, v15}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 30
    :goto_5
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 31
    :goto_6
    invoke-virtual {v11, v13}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    .line 32
    monitor-exit v7

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :goto_7
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    return-object v2
.end method

.method public final getAllowedComponents(I)Ljava/util/List;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    const/4 p1, 0x0

    move v2, p1

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 6
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    move v4, p1

    .line 7
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 8
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit v1

    return-object v0

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAllowedPackages(I)Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v2, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/util/ArrayMap;

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    move v2, p1

    .line 28
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ge v2, v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/util/ArraySet;

    .line 39
    .line 40
    move v4, p1

    .line 41
    :goto_1
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-ge v4, v5, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v5}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_0

    .line 62
    .line 63
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_3

    .line 69
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    monitor-exit v1

    .line 76
    return-object v0

    .line 77
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
.end method

.method public final getApprovedValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_1

    .line 5
    .line 6
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_1
    invoke-static {p1}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public getBindFlags()I
    .locals 0

    .line 1
    const p0, 0x5000001

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public abstract getConfig()Lcom/android/server/notification/ManagedServices$Config;
.end method

.method public final getRemovableConnectedServices()Ljava/util/Set;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 23
    .line 24
    iget-boolean v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    .line 25
    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    .line 29
    .line 30
    if-eq v3, p0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-object v0
.end method

.method public abstract getRequiredPermission()Ljava/lang/String;
.end method

.method public final getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v2, :cond_2

    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 28
    .line 29
    iget-object v5, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 30
    .line 31
    invoke-interface {v5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-ne v5, p1, :cond_1

    .line 36
    .line 37
    monitor-exit v1

    .line 38
    return-object v4

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    monitor-exit v1

    .line 45
    return-object v0

    .line 46
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final getServiceInfo(ILandroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mPm:Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    const-wide/32 v0, 0xc0080

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p2, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public final getServices()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

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

.method public isBound(Landroid/content/ComponentName;I)Z
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    monitor-exit p2

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final isPackageAllowed(ILjava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v2, Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/util/ArrayMap;

    .line 24
    .line 25
    move p1, v0

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ge p1, v2, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const/4 v5, 0x1

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    monitor-exit v1

    .line 72
    return v5

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    monitor-exit v1

    .line 82
    return v5

    .line 83
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    monitor-exit v1

    .line 87
    return v0

    .line 88
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0
.end method

.method public final isPackageOrComponentAllowed(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v1, Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/util/ArrayMap;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    move v1, p1

    .line 23
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ge v1, v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/util/ArraySet;

    .line 34
    .line 35
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    monitor-exit v0

    .line 50
    return p1

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final isSameUser(Landroid/os/IInterface;I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkNotNull(Landroid/os/IInterface;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getServiceFromTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    monitor-exit v0

    .line 18
    return p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    monitor-exit v0

    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public isValidEntry(ILjava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p2}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(IILjava/lang/String;)Landroid/util/ArraySet;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-lez p0, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_0
    return v1
.end method

.method public abstract loadDefaultsFromConfig()V
.end method

.method public final migrateToXml()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 46
    .line 47
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 48
    .line 49
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 54
    .line 55
    const/4 v5, 0x1

    .line 56
    invoke-virtual {p0, v4, v3, v3, v5}, Lcom/android/server/notification/ManagedServices;->addApprovedList(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_0

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    .line 76
    .line 77
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 78
    .line 79
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 84
    .line 85
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0, v1, v2, v2, v3}, Lcom/android/server/notification/ManagedServices;->addApprovedList(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;[I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string/jumbo v4, "onPackagesChanged removingPackage="

    .line 10
    .line 11
    .line 12
    iget-boolean v5, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 13
    .line 14
    if-eqz v5, :cond_1

    .line 15
    .line 16
    iget-object v5, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v5

    .line 19
    :try_start_0
    iget-object v6, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v7, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v4, " pkgList="

    .line 30
    .line 31
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v4, " mEnabledServicesPackageNames="

    .line 46
    .line 47
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    .line 51
    .line 52
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    monitor-exit v5

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw v0

    .line 67
    :cond_1
    :goto_1
    if-eqz v2, :cond_12

    .line 68
    .line 69
    array-length v4, v2

    .line 70
    if-lez v4, :cond_12

    .line 71
    .line 72
    const/4 v5, 0x1

    .line 73
    if-eqz v1, :cond_7

    .line 74
    .line 75
    if-eqz v3, :cond_7

    .line 76
    .line 77
    array-length v1, v2

    .line 78
    array-length v6, v3

    .line 79
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/4 v6, 0x0

    .line 84
    :goto_2
    if-ge v6, v1, :cond_7

    .line 85
    .line 86
    aget-object v7, v2, v6

    .line 87
    .line 88
    aget v8, v3, v6

    .line 89
    .line 90
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    iget-object v9, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 95
    .line 96
    monitor-enter v9

    .line 97
    :try_start_1
    iget-object v10, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 98
    .line 99
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    check-cast v10, Landroid/util/ArrayMap;

    .line 108
    .line 109
    if-eqz v10, :cond_4

    .line 110
    .line 111
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    const/4 v12, 0x0

    .line 116
    :goto_3
    if-ge v12, v11, :cond_4

    .line 117
    .line 118
    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    check-cast v13, Landroid/util/ArraySet;

    .line 123
    .line 124
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    .line 125
    .line 126
    .line 127
    move-result v14

    .line 128
    sub-int/2addr v14, v5

    .line 129
    :goto_4
    if-ltz v14, :cond_3

    .line 130
    .line 131
    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v15

    .line 135
    check-cast v15, Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v15}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_2

    .line 146
    .line 147
    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    iget-boolean v4, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 151
    .line 152
    if-eqz v4, :cond_2

    .line 153
    .line 154
    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 155
    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    move/from16 p1, v1

    .line 162
    .line 163
    const-string v1, "Removing "

    .line 164
    .line 165
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v1, " from approved list; uninstalled"

    .line 172
    .line 173
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    goto :goto_5

    .line 184
    :catchall_1
    move-exception v0

    .line 185
    goto :goto_7

    .line 186
    :cond_2
    move/from16 p1, v1

    .line 187
    .line 188
    :goto_5
    add-int/lit8 v14, v14, -0x1

    .line 189
    .line 190
    move/from16 v1, p1

    .line 191
    .line 192
    const/4 v5, 0x1

    .line 193
    goto :goto_4

    .line 194
    :cond_3
    move/from16 p1, v1

    .line 195
    .line 196
    add-int/lit8 v12, v12, 0x1

    .line 197
    .line 198
    const/4 v5, 0x1

    .line 199
    goto :goto_3

    .line 200
    :cond_4
    move/from16 p1, v1

    .line 201
    .line 202
    iget-object v1, v0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    .line 203
    .line 204
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    check-cast v1, Landroid/util/ArraySet;

    .line 213
    .line 214
    if-eqz v1, :cond_6

    .line 215
    .line 216
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    const/4 v5, 0x1

    .line 221
    sub-int/2addr v4, v5

    .line 222
    :goto_6
    if-ltz v4, :cond_6

    .line 223
    .line 224
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    check-cast v5, Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {v5}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    if-eqz v8, :cond_5

    .line 239
    .line 240
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    iget-boolean v8, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 244
    .line 245
    if-eqz v8, :cond_5

    .line 246
    .line 247
    iget-object v8, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 248
    .line 249
    new-instance v10, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    const-string v11, "Removing "

    .line 255
    .line 256
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v5, " from user-set list; uninstalled"

    .line 263
    .line 264
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    invoke-static {v8, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_6
    monitor-exit v9

    .line 278
    add-int/lit8 v6, v6, 0x1

    .line 279
    .line 280
    move/from16 v1, p1

    .line 281
    .line 282
    const/4 v5, 0x1

    .line 283
    goto/16 :goto_2

    .line 284
    .line 285
    :goto_7
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 286
    throw v0

    .line 287
    :cond_7
    array-length v1, v2

    .line 288
    const/4 v4, 0x0

    .line 289
    const/4 v5, 0x0

    .line 290
    :goto_8
    if-ge v4, v1, :cond_11

    .line 291
    .line 292
    aget-object v6, v2, v4

    .line 293
    .line 294
    iget-object v7, v0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 295
    .line 296
    monitor-enter v7

    .line 297
    :try_start_2
    iget-object v8, v0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    .line 298
    .line 299
    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v8

    .line 303
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 304
    if-eqz v8, :cond_8

    .line 305
    .line 306
    const/4 v5, 0x1

    .line 307
    :cond_8
    if-eqz v3, :cond_10

    .line 308
    .line 309
    array-length v7, v3

    .line 310
    if-lez v7, :cond_10

    .line 311
    .line 312
    array-length v7, v3

    .line 313
    const/4 v8, 0x0

    .line 314
    :goto_9
    if-ge v8, v7, :cond_10

    .line 315
    .line 316
    aget v9, v3, v8

    .line 317
    .line 318
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 319
    .line 320
    .line 321
    move-result v10

    .line 322
    invoke-virtual {v0, v10, v6}, Lcom/android/server/notification/ManagedServices;->isPackageAllowed(ILjava/lang/String;)Z

    .line 323
    .line 324
    .line 325
    move-result v10

    .line 326
    if-eqz v10, :cond_f

    .line 327
    .line 328
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    iget-object v9, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 333
    .line 334
    monitor-enter v9

    .line 335
    :try_start_3
    iget-object v10, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 336
    .line 337
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object v11

    .line 341
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v10

    .line 345
    check-cast v10, Landroid/util/ArrayMap;

    .line 346
    .line 347
    if-nez v10, :cond_9

    .line 348
    .line 349
    monitor-exit v9

    .line 350
    move/from16 p1, v1

    .line 351
    .line 352
    goto/16 :goto_e

    .line 353
    .line 354
    :catchall_2
    move-exception v0

    .line 355
    goto/16 :goto_f

    .line 356
    .line 357
    :cond_9
    const/4 v11, 0x0

    .line 358
    :goto_a
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 359
    .line 360
    .line 361
    move-result v12

    .line 362
    if-ge v11, v12, :cond_e

    .line 363
    .line 364
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v12

    .line 368
    check-cast v12, Landroid/util/ArraySet;

    .line 369
    .line 370
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    .line 371
    .line 372
    .line 373
    move-result v13

    .line 374
    const/4 v14, 0x1

    .line 375
    sub-int/2addr v13, v14

    .line 376
    :goto_b
    if-ltz v13, :cond_d

    .line 377
    .line 378
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v15

    .line 382
    check-cast v15, Ljava/lang/String;

    .line 383
    .line 384
    invoke-static {v15}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v14

    .line 388
    invoke-static {v14, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 389
    .line 390
    .line 391
    move-result v14

    .line 392
    if-eqz v14, :cond_b

    .line 393
    .line 394
    invoke-static {v15}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 395
    .line 396
    .line 397
    move-result-object v14

    .line 398
    if-eqz v14, :cond_b

    .line 399
    .line 400
    invoke-virtual {v0, v5, v14}, Lcom/android/server/notification/ManagedServices;->getServiceInfo(ILandroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    .line 401
    .line 402
    .line 403
    move-result-object v14

    .line 404
    if-nez v14, :cond_a

    .line 405
    .line 406
    move/from16 p1, v1

    .line 407
    .line 408
    const/4 v1, 0x0

    .line 409
    goto :goto_c

    .line 410
    :cond_a
    move/from16 p1, v1

    .line 411
    .line 412
    iget-object v1, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 413
    .line 414
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 415
    .line 416
    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    :goto_c
    if-nez v1, :cond_c

    .line 423
    .line 424
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    iget-boolean v1, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 428
    .line 429
    if-eqz v1, :cond_c

    .line 430
    .line 431
    iget-object v1, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 432
    .line 433
    new-instance v14, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .line 437
    .line 438
    const-string v2, "Removing "

    .line 439
    .line 440
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    const-string v2, " from approved list; no bind permission found "

    .line 447
    .line 448
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 452
    .line 453
    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 454
    .line 455
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    .line 464
    .line 465
    goto :goto_d

    .line 466
    :cond_b
    move/from16 p1, v1

    .line 467
    .line 468
    :cond_c
    :goto_d
    add-int/lit8 v13, v13, -0x1

    .line 469
    .line 470
    move/from16 v1, p1

    .line 471
    .line 472
    move-object/from16 v2, p2

    .line 473
    .line 474
    const/4 v14, 0x1

    .line 475
    goto :goto_b

    .line 476
    :cond_d
    move/from16 p1, v1

    .line 477
    .line 478
    add-int/lit8 v11, v11, 0x1

    .line 479
    .line 480
    move-object/from16 v2, p2

    .line 481
    .line 482
    goto :goto_a

    .line 483
    :cond_e
    move/from16 p1, v1

    .line 484
    .line 485
    monitor-exit v9

    .line 486
    :goto_e
    const/4 v5, 0x1

    .line 487
    goto :goto_10

    .line 488
    :goto_f
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 489
    throw v0

    .line 490
    :cond_f
    move/from16 p1, v1

    .line 491
    .line 492
    :goto_10
    add-int/lit8 v8, v8, 0x1

    .line 493
    .line 494
    move/from16 v1, p1

    .line 495
    .line 496
    move-object/from16 v2, p2

    .line 497
    .line 498
    goto/16 :goto_9

    .line 499
    .line 500
    :cond_10
    move/from16 p1, v1

    .line 501
    .line 502
    add-int/lit8 v4, v4, 0x1

    .line 503
    .line 504
    move/from16 v1, p1

    .line 505
    .line 506
    move-object/from16 v2, p2

    .line 507
    .line 508
    goto/16 :goto_8

    .line 509
    .line 510
    :catchall_3
    move-exception v0

    .line 511
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 512
    throw v0

    .line 513
    :cond_11
    if-eqz v5, :cond_12

    .line 514
    .line 515
    const/4 v1, -0x1

    .line 516
    const/4 v2, 0x0

    .line 517
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ManagedServices;->rebindServices(IZ)V

    .line 518
    .line 519
    .line 520
    :cond_12
    return-void
.end method

.method public abstract onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end method

.method public abstract onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end method

.method public final onSettingRestored(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->mUseXml:Z

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "Restored managed service setting: "

    .line 8
    .line 9
    invoke-static {v1, p3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v0, :cond_5

    .line 27
    .line 28
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    :cond_0
    const/16 v0, 0x1a

    .line 35
    .line 36
    if-ge p1, v0, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 47
    .line 48
    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    new-instance v3, Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/util/ArrayMap;

    .line 65
    .line 66
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance v2, Landroid/util/ArraySet;

    .line 71
    .line 72
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/util/ArraySet;

    .line 80
    .line 81
    const-string v1, ":"

    .line 82
    .line 83
    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_2

    .line 93
    .line 94
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_1

    .line 99
    .line 100
    const-string v0, ":"

    .line 101
    .line 102
    invoke-static {p4, v0, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    move-object p4, p1

    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    throw p0

    .line 112
    :cond_2
    :goto_0
    instance-of p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 113
    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1, p3, p4, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 123
    .line 124
    .line 125
    :cond_3
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 146
    .line 147
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 148
    .line 149
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 150
    .line 151
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-virtual {p0, v0, p4, p4, v1}, Lcom/android/server/notification/ManagedServices;->addApprovedList(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_4
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 162
    .line 163
    const-string p3, "Done loading approved values from settings"

    .line 164
    .line 165
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    const/4 p1, 0x0

    .line 169
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/ManagedServices;->rebindServices(IZ)V

    .line 170
    .line 171
    .line 172
    :cond_5
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Removing approved services for removed user "

    .line 4
    .line 5
    invoke-static {p1, v1, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 27
    .line 28
    .line 29
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "ManagedServices.unbindUserServices"

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/ManagedServices;->unbindServicesImpl(IZ)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    throw p0

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    throw p0
.end method

.method public onUserSwitched(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "onUserSwitched u="

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->unbindOtherUserServices(I)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ManagedServices;->rebindServices(IZ)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final populateComponentsToBind(Landroid/util/SparseArray;Landroid/util/IntArray;Landroid/util/SparseArray;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    if-ge v2, v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {p2, v2}, Landroid/util/IntArray;->get(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Landroid/util/ArraySet;

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    new-instance v4, Landroid/util/ArraySet;

    .line 32
    .line 33
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    .line 46
    .line 47
    monitor-enter v6

    .line 48
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    .line 49
    .line 50
    invoke-virtual {v7, v3}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    if-eqz v7, :cond_1

    .line 55
    .line 56
    invoke-interface {v5, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_4

    .line 62
    :cond_1
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p1, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesForCurrentProfiles:Landroid/util/ArraySet;

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 69
    .line 70
    .line 71
    move v3, v1

    .line 72
    :goto_2
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-ge v3, v5, :cond_2

    .line 77
    .line 78
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Landroid/content/ComponentName;

    .line 83
    .line 84
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mEnabledServicesPackageNames:Landroid/util/ArraySet;

    .line 85
    .line 86
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :goto_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw p0

    .line 101
    :cond_3
    return-void
.end method

.method public final queryPackageForServices(IILjava/lang/String;)Landroid/util/ArraySet;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Landroid/content/Intent;

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 15
    .line 16
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    :cond_0
    or-int/lit16 p1, p1, 0x84

    .line 31
    .line 32
    invoke-virtual {v1, v2, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-boolean p2, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object p3, v3, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p3, " services: "

    .line 53
    .line 54
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-static {p0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_1
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    const/4 p3, 0x0

    .line 74
    :goto_0
    if-ge p3, p2, :cond_3

    .line 75
    .line 76
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 81
    .line 82
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 83
    .line 84
    new-instance v2, Landroid/content/ComponentName;

    .line 85
    .line 86
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 89
    .line 90
    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_2

    .line 102
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v4, "Skipping "

    .line 106
    .line 107
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v4, " service "

    .line 116
    .line 117
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v4, "/"

    .line 126
    .line 127
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v1, ": it does not require the permission "

    .line 136
    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v1, v3, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v2, v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_2
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    return-object v0
.end method

.method public readExtraTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final readXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/internal/util/function/TriPredicate;ZI)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move-object/from16 v2, p2

    .line 5
    .line 6
    const-string/jumbo v3, "version"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string v4, "defaults"

    .line 14
    .line 15
    invoke-static {v1, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const/4 v6, 0x0

    .line 24
    if-nez v5, :cond_3

    .line 25
    .line 26
    const-string v5, ":"

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget-object v5, v0, Lcom/android/server/notification/ManagedServices;->mDefaultsLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v5

    .line 35
    move v7, v6

    .line 36
    :goto_0
    :try_start_0
    array-length v8, v4

    .line 37
    if-ge v7, v8, :cond_2

    .line 38
    .line 39
    aget-object v8, v4, v7

    .line 40
    .line 41
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-nez v8, :cond_1

    .line 46
    .line 47
    aget-object v8, v4, v7

    .line 48
    .line 49
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    if-eqz v8, :cond_0

    .line 54
    .line 55
    iget-object v9, v0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    .line 56
    .line 57
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget-object v9, v0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 65
    .line 66
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto :goto_2

    .line 72
    :cond_0
    iget-object v8, v0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    .line 73
    .line 74
    aget-object v9, v4, v7

    .line 75
    .line 76
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    monitor-exit v5

    .line 83
    goto :goto_3

    .line 84
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw v0

    .line 86
    :cond_3
    :goto_3
    move v4, v6

    .line 87
    :cond_4
    :goto_4
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    const/4 v7, 0x1

    .line 92
    if-eq v5, v7, :cond_10

    .line 93
    .line 94
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    const/4 v9, 0x3

    .line 99
    if-ne v5, v9, :cond_5

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    iget-object v9, v9, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eqz v9, :cond_5

    .line 112
    .line 113
    goto/16 :goto_8

    .line 114
    .line 115
    :cond_5
    const/4 v9, 0x2

    .line 116
    if-ne v5, v9, :cond_4

    .line 117
    .line 118
    const-string/jumbo v5, "service_listing"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_f

    .line 126
    .line 127
    iget-object v5, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 128
    .line 129
    new-instance v8, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v9, "Read "

    .line 132
    .line 133
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v9, v0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 137
    .line 138
    iget-object v9, v9, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 139
    .line 140
    const-string v10, " permissions from xml"

    .line 141
    .line 142
    invoke-static {v8, v9, v10, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v5, "approved"

    .line 146
    .line 147
    invoke-static {v1, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    const/4 v8, 0x0

    .line 152
    if-eqz p3, :cond_6

    .line 153
    .line 154
    move/from16 v9, p4

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_6
    const-string/jumbo v9, "user"

    .line 158
    .line 159
    .line 160
    invoke-interface {v1, v8, v9, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 161
    .line 162
    .line 163
    move-result v9

    .line 164
    :goto_5
    const-string/jumbo v10, "primary"

    .line 165
    .line 166
    .line 167
    invoke-interface {v1, v8, v10, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    const-string/jumbo v10, "user_changed"

    .line 172
    .line 173
    .line 174
    invoke-static {v1, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    const-string/jumbo v11, "user_set"

    .line 179
    .line 180
    .line 181
    invoke-static {v1, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v11

    .line 185
    const-string/jumbo v12, "user_set_services"

    .line 186
    .line 187
    .line 188
    invoke-static {v1, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    const-string v13, "4"

    .line 193
    .line 194
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v13

    .line 198
    if-eqz v13, :cond_9

    .line 199
    .line 200
    if-nez v10, :cond_7

    .line 201
    .line 202
    invoke-static {v12}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    goto :goto_7

    .line 207
    :cond_7
    iget-object v13, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 208
    .line 209
    monitor-enter v13

    .line 210
    :try_start_1
    iget-object v11, v0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    .line 211
    .line 212
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v12

    .line 216
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 217
    .line 218
    .line 219
    move-result-object v14

    .line 220
    invoke-virtual {v11, v12, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 224
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    if-eqz v10, :cond_8

    .line 233
    .line 234
    move-object v12, v5

    .line 235
    goto :goto_6

    .line 236
    :cond_8
    const-string v10, ""

    .line 237
    .line 238
    move-object v12, v10

    .line 239
    :goto_6
    if-eqz p3, :cond_c

    .line 240
    .line 241
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    if-eqz v10, :cond_c

    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->clearApprovedList()V

    .line 248
    .line 249
    .line 250
    goto :goto_7

    .line 251
    :catchall_1
    move-exception v0

    .line 252
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    throw v0

    .line 254
    :cond_9
    if-nez v12, :cond_b

    .line 255
    .line 256
    if-eqz v11, :cond_a

    .line 257
    .line 258
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-eqz v4, :cond_a

    .line 267
    .line 268
    iget-object v4, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 269
    .line 270
    monitor-enter v4

    .line 271
    :try_start_3
    iget-object v10, v0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    .line 272
    .line 273
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 278
    .line 279
    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    monitor-exit v4

    .line 283
    move-object v12, v5

    .line 284
    move v4, v6

    .line 285
    goto :goto_7

    .line 286
    :catchall_2
    move-exception v0

    .line 287
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 288
    throw v0

    .line 289
    :cond_a
    const-string v12, ""

    .line 290
    .line 291
    :cond_b
    move v4, v7

    .line 292
    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    .line 293
    .line 294
    invoke-static {v5}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v10

    .line 298
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v11

    .line 302
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getRequiredPermission()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v13

    .line 306
    invoke-interface {v2, v10, v11, v13}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v10

    .line 310
    if-nez v10, :cond_d

    .line 311
    .line 312
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 313
    .line 314
    .line 315
    move-result v10

    .line 316
    if-eqz v10, :cond_4

    .line 317
    .line 318
    :cond_d
    iget-object v10, v0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    .line 319
    .line 320
    invoke-virtual {v10, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 321
    .line 322
    .line 323
    move-result-object v10

    .line 324
    if-eqz v10, :cond_e

    .line 325
    .line 326
    invoke-virtual {p0, v9, v5, v12, v8}, Lcom/android/server/notification/ManagedServices;->addApprovedList(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 327
    .line 328
    .line 329
    :cond_e
    iput-boolean v7, v0, Lcom/android/server/notification/ManagedServices;->mUseXml:Z

    .line 330
    .line 331
    goto/16 :goto_4

    .line 332
    .line 333
    :cond_f
    invoke-virtual {p0, v1, v8}, Lcom/android/server/notification/ManagedServices;->readExtraTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_4

    .line 337
    .line 338
    :cond_10
    :goto_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-nez v1, :cond_11

    .line 343
    .line 344
    const-string v1, "1"

    .line 345
    .line 346
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-nez v1, :cond_11

    .line 351
    .line 352
    const-string v1, "2"

    .line 353
    .line 354
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-nez v1, :cond_11

    .line 359
    .line 360
    const-string v1, "3"

    .line 361
    .line 362
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-eqz v1, :cond_12

    .line 367
    .line 368
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->upgradeDefaultsXmlVersion()V

    .line 369
    .line 370
    .line 371
    :cond_12
    if-eqz v4, :cond_13

    .line 372
    .line 373
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->upgradeUserSet()V

    .line 374
    .line 375
    .line 376
    :cond_13
    const/4 v1, -0x1

    .line 377
    invoke-virtual {p0, v1, v6}, Lcom/android/server/notification/ManagedServices;->rebindServices(IZ)V

    .line 378
    .line 379
    .line 380
    return-void
.end method

.method public final rebindServices(IZ)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "rebindServices "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v1, v2, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isProfileUser(Landroid/content/Context;I)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x1

    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->allowRebindForParentUser()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    move v1, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move v1, v3

    .line 60
    :goto_0
    const-string/jumbo v4, "ro.build.characteristics"

    .line 61
    .line 62
    .line 63
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    const-string/jumbo v5, "tablet"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    const/4 v4, -0x1

    .line 79
    if-eq p1, v4, :cond_2

    .line 80
    .line 81
    if-nez v1, :cond_2

    .line 82
    .line 83
    new-instance v0, Landroid/util/IntArray;

    .line 84
    .line 85
    invoke-direct {v0, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 89
    .line 90
    .line 91
    :cond_2
    new-instance p1, Landroid/util/SparseArray;

    .line 92
    .line 93
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 94
    .line 95
    .line 96
    new-instance v1, Landroid/util/SparseArray;

    .line 97
    .line 98
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 102
    .line 103
    monitor-enter v4

    .line 104
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(Landroid/util/IntArray;)Landroid/util/SparseArray;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getRemovableConnectedServices()Ljava/util/Set;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/server/notification/ManagedServices;->populateComponentsToBind(Landroid/util/SparseArray;Landroid/util/IntArray;Landroid/util/SparseArray;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p2, v6, p1, v1}, Lcom/android/server/notification/ManagedServices;->populateComponentsToUnbind(ZLjava/util/Set;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 116
    .line 117
    .line 118
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 119
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ManagedServices;->unbindFromServices(Landroid/util/SparseArray;)V

    .line 120
    .line 121
    .line 122
    move p2, v3

    .line 123
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-ge p2, v0, :cond_a

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Ljava/util/Set;

    .line 138
    .line 139
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_9

    .line 148
    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    check-cast v4, Landroid/content/ComponentName;

    .line 154
    .line 155
    invoke-virtual {p0, v0, v4}, Lcom/android/server/notification/ManagedServices;->getServiceInfo(ILandroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    if-nez v5, :cond_3

    .line 160
    .line 161
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 162
    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v7, "Not binding "

    .line 166
    .line 167
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 171
    .line 172
    iget-object v7, v7, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v7, " service "

    .line 178
    .line 179
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v4, ": service not found"

    .line 186
    .line 187
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_3
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 199
    .line 200
    iget-object v6, v6, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 201
    .line 202
    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-nez v6, :cond_4

    .line 209
    .line 210
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 211
    .line 212
    new-instance v6, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v7, "Not binding "

    .line 215
    .line 216
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 220
    .line 221
    iget-object v7, v7, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v7, " service "

    .line 227
    .line 228
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v4, ": it does not require the permission "

    .line 235
    .line 236
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 240
    .line 241
    iget-object v4, v4, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 242
    .line 243
    invoke-static {v6, v4, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_4
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 248
    .line 249
    if-eqz v6, :cond_5

    .line 250
    .line 251
    const-string v7, "android.service.notification.default_autobind_listenerservice"

    .line 252
    .line 253
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    if-eqz v6, :cond_5

    .line 258
    .line 259
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 260
    .line 261
    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    goto :goto_3

    .line 266
    :cond_5
    move v6, v2

    .line 267
    :goto_3
    if-nez v6, :cond_8

    .line 268
    .line 269
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 270
    .line 271
    monitor-enter v6

    .line 272
    :try_start_1
    invoke-virtual {p0, v4, v0}, Lcom/android/server/notification/ManagedServices;->isBound(Landroid/content/ComponentName;I)Z

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    if-nez v7, :cond_7

    .line 277
    .line 278
    iget-object v7, p0, Lcom/android/server/notification/ManagedServices;->mServicesRebinding:Landroid/util/ArraySet;

    .line 279
    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v7

    .line 292
    if-eqz v7, :cond_6

    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_6
    move v7, v3

    .line 296
    goto :goto_5

    .line 297
    :catchall_0
    move-exception p0

    .line 298
    goto :goto_6

    .line 299
    :cond_7
    :goto_4
    move v7, v2

    .line 300
    :goto_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    if-nez v7, :cond_8

    .line 302
    .line 303
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    .line 304
    .line 305
    monitor-enter v6

    .line 306
    :try_start_2
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 307
    .line 308
    new-instance v7, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    const-string v8, "Not binding "

    .line 314
    .line 315
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    iget-object v8, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 319
    .line 320
    iget-object v8, v8, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v8, " service "

    .line 326
    .line 327
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v8, ": has META_DATA_DEFAULT_AUTOBIND = false"

    .line 334
    .line 335
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    .line 346
    .line 347
    invoke-virtual {v5, v0, v4}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    monitor-exit v6

    .line 351
    goto/16 :goto_2

    .line 352
    .line 353
    :catchall_1
    move-exception p0

    .line 354
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    throw p0

    .line 356
    :goto_6
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    throw p0

    .line 358
    :cond_8
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 359
    .line 360
    new-instance v7, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    const-string v8, "enabling "

    .line 363
    .line 364
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    iget-object v8, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 368
    .line 369
    iget-object v8, v8, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 370
    .line 371
    const-string v9, " for "

    .line 372
    .line 373
    const-string v10, ": "

    .line 374
    .line 375
    invoke-static {v0, v8, v9, v10, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    invoke-virtual {p0, v5, v0}, Lcom/android/server/notification/ManagedServices;->registerService(Landroid/content/pm/ServiceInfo;I)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_2

    .line 392
    .line 393
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 394
    .line 395
    goto/16 :goto_1

    .line 396
    .line 397
    :cond_a
    return-void

    .line 398
    :catchall_2
    move-exception p0

    .line 399
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 400
    throw p0
.end method

.method public registerService(Landroid/content/ComponentName;I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(ILandroid/content/ComponentName;Z)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerService(Landroid/content/pm/ServiceInfo;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->ensureFilters(Landroid/content/pm/ServiceInfo;I)V

    .line 2
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->registerService(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public final registerServiceImpl(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 5
    .line 6
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    :try_start_1
    monitor-exit v0

    .line 20
    return-object p1

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    monitor-exit v0

    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0
.end method

.method public final registerServiceLocked(ILandroid/content/ComponentName;Z)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    const-string v9, " service: "

    .line 8
    .line 9
    const-string v10, "Unable to bind "

    .line 10
    .line 11
    iget-boolean v2, v8, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 12
    .line 13
    iget-object v11, v8, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v3, "registerService: "

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " u="

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v11, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    iget-object v2, v8, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v2, "Not registering "

    .line 62
    .line 63
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, " is already bound"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    iget-object v2, v8, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    iget-object v2, v8, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    const/4 v3, 0x1

    .line 94
    sub-int/2addr v2, v3

    .line 95
    :goto_0
    iget-object v13, v8, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 96
    .line 97
    if-ltz v2, :cond_3

    .line 98
    .line 99
    iget-object v4, v8, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 106
    .line 107
    iget-object v5, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 108
    .line 109
    invoke-virtual {v1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_2

    .line 114
    .line 115
    iget v5, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 116
    .line 117
    if-ne v5, v0, :cond_2

    .line 118
    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v6, "    disconnecting old "

    .line 122
    .line 123
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v6, v13, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v6, ": "

    .line 132
    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v6, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 137
    .line 138
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8, v2}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 149
    .line 150
    .line 151
    iget-object v5, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 152
    .line 153
    if-eqz v5, :cond_2

    .line 154
    .line 155
    iget-object v6, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 156
    .line 157
    iget v4, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 158
    .line 159
    invoke-virtual {v8, v5, v6, v4}, Lcom/android/server/notification/ManagedServices;->unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    .line 160
    .line 161
    .line 162
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_3
    new-instance v14, Landroid/content/Intent;

    .line 166
    .line 167
    iget-object v2, v13, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 168
    .line 169
    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    const-string v2, "android.intent.extra.client_label"

    .line 176
    .line 177
    iget v4, v13, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 178
    .line 179
    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    const/4 v4, 0x2

    .line 187
    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 188
    .line 189
    .line 190
    iget-object v4, v8, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 191
    .line 192
    new-instance v5, Landroid/content/Intent;

    .line 193
    .line 194
    iget-object v6, v13, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 195
    .line 196
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    const/4 v6, 0x0

    .line 204
    const/high16 v7, 0x4000000

    .line 205
    .line 206
    invoke-static {v4, v6, v5, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    const-string v4, "android.intent.extra.client_intent"

    .line 211
    .line 212
    invoke-virtual {v14, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 213
    .line 214
    .line 215
    :try_start_0
    iget-object v2, v8, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 216
    .line 217
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v2, v1, v6, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 226
    .line 227
    .line 228
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_1

    .line 230
    :catch_0
    const/4 v1, 0x0

    .line 231
    :goto_1
    if-eqz v1, :cond_4

    .line 232
    .line 233
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 234
    .line 235
    move v6, v2

    .line 236
    goto :goto_2

    .line 237
    :cond_4
    move v6, v3

    .line 238
    :goto_2
    if-eqz v1, :cond_5

    .line 239
    .line 240
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 241
    .line 242
    :goto_3
    move v7, v1

    .line 243
    goto :goto_4

    .line 244
    :cond_5
    const/4 v1, -0x1

    .line 245
    goto :goto_3

    .line 246
    :goto_4
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v2, "binding: "

    .line 252
    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    new-instance v15, Lcom/android/server/notification/ManagedServices$1;

    .line 267
    .line 268
    move-object v1, v15

    .line 269
    move-object/from16 v2, p0

    .line 270
    .line 271
    move/from16 v3, p1

    .line 272
    .line 273
    move-object v4, v12

    .line 274
    move/from16 v5, p3

    .line 275
    .line 276
    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/ManagedServices$1;-><init>(Lcom/android/server/notification/ManagedServices;ILandroid/util/Pair;ZII)V

    .line 277
    .line 278
    .line 279
    iget-object v1, v8, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 280
    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getBindFlags()I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    new-instance v3, Landroid/os/UserHandle;

    .line 286
    .line 287
    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-nez v1, :cond_6

    .line 295
    .line 296
    iget-object v1, v8, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget-object v2, v13, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string v2, " in user "

    .line 321
    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    .line 334
    .line 335
    return-void

    .line 336
    :catch_1
    move-exception v0

    .line 337
    iget-object v1, v8, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    .line 338
    .line 339
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget-object v2, v13, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-static {v11, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    .line 364
    .line 365
    :cond_6
    return-void
.end method

.method public final removeServiceImpl(Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "removeServiceImpl service="

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " u="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/lit8 v1, v1, -0x1

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_0
    if-ltz v1, :cond_2

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 54
    .line 55
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 56
    .line 57
    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-ne v4, v5, :cond_1

    .line 66
    .line 67
    iget v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 68
    .line 69
    if-ne v4, p2, :cond_1

    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v5, "Removing active service "

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 84
    .line 85
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    goto :goto_1

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    goto :goto_2

    .line 102
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    monitor-exit v0

    .line 106
    return-object v2

    .line 107
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    throw p0
.end method

.method public final removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public reregisterService(Landroid/content/ComponentName;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p2, v0}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(ILjava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p2, v0}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(ILjava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/ManagedServices;->getServiceInfo(ILandroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :goto_0
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->registerService(Landroid/content/ComponentName;I)V

    .line 43
    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public final resetComponents(ILjava/lang/String;)Landroid/util/ArrayMap;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mDefaultsLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v3

    .line 17
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 18
    .line 19
    iget-object v5, v0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 20
    .line 21
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v5, Ljava/util/ArrayList;

    .line 29
    .line 30
    iget-object v6, v0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    move v7, v6

    .line 41
    :goto_0
    iget-object v8, v0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 42
    .line 43
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-ge v7, v8, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-lez v8, :cond_1

    .line 54
    .line 55
    iget-object v8, v0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 56
    .line 57
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    check-cast v8, Landroid/content/ComponentName;

    .line 62
    .line 63
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_0

    .line 72
    .line 73
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-nez v9, :cond_0

    .line 78
    .line 79
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto/16 :goto_7

    .line 85
    .line 86
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-object v7, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 90
    .line 91
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :try_start_1
    iget-object v8, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 93
    .line 94
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    check-cast v8, Landroid/util/ArrayMap;

    .line 103
    .line 104
    if-eqz v8, :cond_6

    .line 105
    .line 106
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    move v10, v6

    .line 111
    move v11, v10

    .line 112
    :goto_2
    if-ge v10, v9, :cond_7

    .line 113
    .line 114
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    check-cast v12, Landroid/util/ArraySet;

    .line 119
    .line 120
    move v13, v6

    .line 121
    :goto_3
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    if-ge v13, v14, :cond_4

    .line 126
    .line 127
    invoke-virtual {v2, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    check-cast v14, Landroid/content/ComponentName;

    .line 132
    .line 133
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v15

    .line 137
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v15

    .line 141
    if-eqz v15, :cond_3

    .line 142
    .line 143
    iget-object v15, v0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 144
    .line 145
    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v15

    .line 149
    if-nez v15, :cond_3

    .line 150
    .line 151
    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v15

    .line 155
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v15

    .line 159
    if-eqz v15, :cond_3

    .line 160
    .line 161
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    invoke-virtual {v0, v11}, Lcom/android/server/notification/ManagedServices;->getApprovedValue(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v11

    .line 172
    iget-object v14, v0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    .line 173
    .line 174
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v15

    .line 178
    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v14

    .line 182
    check-cast v14, Landroid/util/ArraySet;

    .line 183
    .line 184
    if-eqz v14, :cond_2

    .line 185
    .line 186
    invoke-virtual {v14, v11}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    :cond_2
    const/4 v11, 0x1

    .line 191
    goto :goto_4

    .line 192
    :catchall_1
    move-exception v0

    .line 193
    goto :goto_6

    .line 194
    :cond_3
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_4
    move v13, v6

    .line 198
    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 199
    .line 200
    .line 201
    move-result v14

    .line 202
    if-ge v13, v14, :cond_5

    .line 203
    .line 204
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v14

    .line 208
    check-cast v14, Landroid/content/ComponentName;

    .line 209
    .line 210
    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v14

    .line 214
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v14

    .line 218
    or-int/2addr v11, v14

    .line 219
    add-int/lit8 v13, v13, 0x1

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_6
    move v11, v6

    .line 226
    :cond_7
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 227
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    if-eqz v11, :cond_8

    .line 229
    .line 230
    const/4 v1, -0x1

    .line 231
    invoke-virtual {v0, v1, v6}, Lcom/android/server/notification/ManagedServices;->rebindServices(IZ)V

    .line 232
    .line 233
    .line 234
    :cond_8
    new-instance v0, Landroid/util/ArrayMap;

    .line 235
    .line 236
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 237
    .line 238
    .line 239
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 240
    .line 241
    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 245
    .line 246
    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    return-object v0

    .line 250
    :goto_6
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 251
    :try_start_4
    throw v0

    .line 252
    :goto_7
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 253
    throw v0
.end method

.method public final setComponentState(ILandroid/content/ComponentName;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    if-ne v1, p3, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto/16 :goto_6

    .line 18
    .line 19
    :cond_0
    if-eqz p3, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    .line 22
    .line 23
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mSnoozing:Landroid/util/SparseSetArray;

    .line 28
    .line 29
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    if-eqz p3, :cond_2

    .line 41
    .line 42
    const-string v2, "Enabling "

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const-string v2, "Disabling "

    .line 46
    .line 47
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, "component "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 70
    .line 71
    monitor-enter v1

    .line 72
    if-eqz p3, :cond_6

    .line 73
    .line 74
    :try_start_1
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(ILjava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result p3

    .line 82
    const/4 v0, 0x0

    .line 83
    if-nez p3, :cond_3

    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(ILjava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    if-nez p3, :cond_3

    .line 94
    .line 95
    :goto_2
    move p3, v0

    .line 96
    goto :goto_3

    .line 97
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->getServiceInfo(ILandroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    if-nez p3, :cond_4

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 105
    .line 106
    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 107
    .line 108
    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    :goto_3
    if-eqz p3, :cond_5

    .line 115
    .line 116
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/notification/ManagedServices;->registerServiceLocked(ILandroid/content/ComponentName;Z)V

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_5
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p2, " no longer has permission to be bound"

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    goto :goto_4

    .line 143
    :catchall_1
    move-exception p0

    .line 144
    goto :goto_5

    .line 145
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->unregisterServiceLocked(ILandroid/content/ComponentName;)V

    .line 146
    .line 147
    .line 148
    :goto_4
    monitor-exit v1

    .line 149
    return-void

    .line 150
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    throw p0

    .line 152
    :goto_6
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    throw p0
.end method

.method public setPackageOrComponentEnabled(ILjava/lang/String;ZZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    if-eqz p4, :cond_0

    .line 9
    .line 10
    const-string v2, " Allowing "

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v2, "Disallowing "

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 21
    .line 22
    const-string v3, " "

    .line 23
    .line 24
    const-string v4, " (userSet: "

    .line 25
    .line 26
    invoke-static {v1, v2, v3, p2, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ")"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/util/ArrayMap;

    .line 58
    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    new-instance v1, Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_4

    .line 78
    :cond_1
    :goto_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Landroid/util/ArraySet;

    .line 87
    .line 88
    if-nez v2, :cond_2

    .line 89
    .line 90
    new-instance v2, Landroid/util/ArraySet;

    .line 91
    .line 92
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {v1, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ManagedServices;->getApprovedValue(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    if-eqz p3, :cond_4

    .line 107
    .line 108
    if-eqz p4, :cond_3

    .line 109
    .line 110
    invoke-virtual {v2, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    invoke-virtual {v2, p3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_4
    :goto_2
    iget-object p3, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    .line 118
    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object p4

    .line 123
    invoke-virtual {p3, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    check-cast p3, Landroid/util/ArraySet;

    .line 128
    .line 129
    if-nez p3, :cond_5

    .line 130
    .line 131
    new-instance p3, Landroid/util/ArraySet;

    .line 132
    .line 133
    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 134
    .line 135
    .line 136
    iget-object p4, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    .line 137
    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p4, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    :cond_5
    if-eqz p5, :cond_6

    .line 146
    .line 147
    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_6
    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    const/4 p2, 0x0

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->rebindServices(IZ)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    throw p0
.end method

.method public final unbindFromServices(Landroid/util/SparseArray;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/util/Set;

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroid/content/ComponentName;

    .line 33
    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v5, "disabling "

    .line 37
    .line 38
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 42
    .line 43
    iget-object v5, v5, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 44
    .line 45
    const-string v6, " for user "

    .line 46
    .line 47
    const-string v7, ": "

    .line 48
    .line 49
    invoke-static {v1, v5, v6, v7, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v4

    .line 67
    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/server/notification/ManagedServices;->unregisterServiceLocked(ILandroid/content/ComponentName;)V

    .line 68
    .line 69
    .line 70
    monitor-exit v4

    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0

    .line 75
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    return-void
.end method

.method public unbindOtherUserServices(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "ManagedServices.unbindOtherUserServices_current"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/ManagedServices;->unbindServicesImpl(IZ)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mConfig:Lcom/android/server/notification/ManagedServices$Config;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, " "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, " could not be unbound"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter p1

    .line 45
    :try_start_1
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mServicesBound:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    monitor-exit p1

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p0
.end method

.method public final unbindServicesImpl(IZ)V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getRemovableConnectedServices()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    iget v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 34
    .line 35
    if-ne v4, p1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    :goto_1
    if-nez p2, :cond_0

    .line 41
    .line 42
    iget v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 43
    .line 44
    if-ne v4, p1, :cond_0

    .line 45
    .line 46
    :cond_2
    iget v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 47
    .line 48
    new-instance v5, Landroid/util/ArraySet;

    .line 49
    .line 50
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Ljava/util/Set;

    .line 58
    .line 59
    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 60
    .line 61
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget v3, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 65
    .line 66
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->unbindFromServices(Landroid/util/SparseArray;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw p0
.end method

.method public final unregisterServiceLocked(ILandroid/content/ComponentName;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mServices:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 20
    .line 21
    invoke-virtual {p2, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 28
    .line 29
    if-ne v2, p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->removeServiceLocked(I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 32
    .line 33
    .line 34
    iget-object v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    iget-object v3, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 39
    .line 40
    iget v1, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 41
    .line 42
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/notification/ManagedServices;->unbindService(Landroid/content/ServiceConnection;Landroid/content/ComponentName;I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public final upgradeDefaultsXmlVersion()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v1, v2

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move v1, v2

    .line 31
    :goto_0
    move-object v3, v0

    .line 32
    check-cast v3, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-ge v1, v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/content/ComponentName;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p0, v3}, Lcom/android/server/notification/ManagedServices;->addDefaultComponentOrPackage(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget v0, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ManagedServices;->getAllowedPackages(I)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_1
    move-object v1, v0

    .line 65
    check-cast v1, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ge v2, v3, :cond_1

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ManagedServices;->addDefaultComponentOrPackage(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v2, v2, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mDefaultsLock:Ljava/lang/Object;

    .line 86
    .line 87
    monitor-enter v1

    .line 88
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    .line 95
    .line 96
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    add-int/2addr v0, v2

    .line 101
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    if-nez v0, :cond_2

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->loadDefaultsFromConfig()V

    .line 105
    .line 106
    .line 107
    :cond_2
    return-void

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    throw p0

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    throw p0
.end method

.method public upgradeUserSet()V
    .locals 0

    .line 1
    return-void
.end method

.method public writeDefaults(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/content/ComponentName;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const-string p0, ":"

    .line 45
    .line 46
    invoke-static {p0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string v1, "defaults"

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-interface {p1, v2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public writeExtraXmlTags(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final writeXml(ILcom/android/modules/utils/TypedXmlSerializer;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 15
    .line 16
    .line 17
    const-string/jumbo v3, "version"

    .line 18
    .line 19
    .line 20
    const-string v5, "4"

    .line 21
    .line 22
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-interface {v2, v4, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/android/server/notification/ManagedServices;->writeDefaults(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 30
    .line 31
    .line 32
    if-eqz p3, :cond_5

    .line 33
    .line 34
    iget-object v5, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 35
    .line 36
    monitor-enter v5

    .line 37
    :try_start_0
    iget-object v6, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    check-cast v6, Landroid/util/ArrayMap;

    .line 48
    .line 49
    if-nez v6, :cond_0

    .line 50
    .line 51
    monitor-exit v5

    .line 52
    goto :goto_4

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto :goto_3

    .line 55
    :cond_0
    const/4 v7, 0x0

    .line 56
    :goto_0
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-ge v7, v8, :cond_4

    .line 61
    .line 62
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    check-cast v8, Landroid/util/ArraySet;

    .line 67
    .line 68
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    add-int/lit8 v9, v9, -0x1

    .line 73
    .line 74
    :goto_1
    if-ltz v9, :cond_3

    .line 75
    .line 76
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    check-cast v10, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1, v10}, Lcom/android/server/notification/ManagedServices;->isValidEntry(ILjava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    if-nez v11, :cond_1

    .line 87
    .line 88
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    iget-object v11, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v12, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v13, "Removing "

    .line 99
    .line 100
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v10, " from approved list; no matching services found"

    .line 107
    .line 108
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-static {v11, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_1
    iget-boolean v11, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    .line 120
    .line 121
    if-eqz v11, :cond_2

    .line 122
    .line 123
    iget-object v11, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 124
    .line 125
    new-instance v12, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v13, "Keeping "

    .line 131
    .line 132
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v10, " on approved list; matching services found"

    .line 139
    .line 140
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    invoke-static {v11, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, -0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_4
    monitor-exit v5

    .line 157
    goto :goto_4

    .line 158
    :goto_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    throw v0

    .line 160
    :cond_5
    :goto_4
    iget-object v5, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 161
    .line 162
    monitor-enter v5

    .line 163
    :try_start_1
    iget-object v6, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 164
    .line 165
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    const/4 v7, 0x0

    .line 170
    :goto_5
    if-ge v7, v6, :cond_d

    .line 171
    .line 172
    iget-object v8, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 173
    .line 174
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    check-cast v8, Ljava/lang/Integer;

    .line 179
    .line 180
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    if-eqz p3, :cond_6

    .line 185
    .line 186
    if-eq v9, v1, :cond_6

    .line 187
    .line 188
    goto/16 :goto_9

    .line 189
    .line 190
    :cond_6
    iget-object v10, v0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    .line 191
    .line 192
    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    check-cast v10, Landroid/util/ArrayMap;

    .line 197
    .line 198
    iget-object v11, v0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    .line 199
    .line 200
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    check-cast v11, Ljava/lang/Boolean;

    .line 205
    .line 206
    if-eqz v10, :cond_c

    .line 207
    .line 208
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    const/4 v13, 0x0

    .line 213
    :goto_6
    if-ge v13, v12, :cond_c

    .line 214
    .line 215
    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v14

    .line 219
    check-cast v14, Ljava/lang/Boolean;

    .line 220
    .line 221
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 222
    .line 223
    .line 224
    move-result v14

    .line 225
    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v15

    .line 229
    check-cast v15, Ljava/util/Set;

    .line 230
    .line 231
    iget-object v3, v0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    .line 232
    .line 233
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    check-cast v3, Ljava/util/Set;

    .line 238
    .line 239
    if-nez v15, :cond_7

    .line 240
    .line 241
    if-nez v3, :cond_7

    .line 242
    .line 243
    if-eqz v11, :cond_b

    .line 244
    .line 245
    :cond_7
    if-nez v15, :cond_8

    .line 246
    .line 247
    const-string v15, ""

    .line 248
    .line 249
    goto :goto_7

    .line 250
    :catchall_1
    move-exception v0

    .line 251
    goto :goto_a

    .line 252
    :cond_8
    const-string v4, ":"

    .line 253
    .line 254
    invoke-static {v4, v15}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v15

    .line 258
    :goto_7
    const-string/jumbo v4, "service_listing"

    .line 259
    .line 260
    .line 261
    const/4 v1, 0x0

    .line 262
    invoke-interface {v2, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    .line 264
    .line 265
    const-string v4, "approved"

    .line 266
    .line 267
    invoke-interface {v2, v1, v4, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    .line 269
    .line 270
    const-string/jumbo v4, "user"

    .line 271
    .line 272
    .line 273
    invoke-interface {v2, v1, v4, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    .line 275
    .line 276
    const-string/jumbo v4, "primary"

    .line 277
    .line 278
    .line 279
    invoke-interface {v2, v1, v4, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 280
    .line 281
    .line 282
    if-eqz v11, :cond_9

    .line 283
    .line 284
    const-string/jumbo v3, "user_changed"

    .line 285
    .line 286
    .line 287
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    invoke-interface {v2, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_9
    if-eqz v3, :cond_a

    .line 296
    .line 297
    const-string v1, ":"

    .line 298
    .line 299
    invoke-static {v1, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    const-string/jumbo v3, "user_set_services"

    .line 304
    .line 305
    .line 306
    const/4 v4, 0x0

    .line 307
    invoke-interface {v2, v4, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    .line 309
    .line 310
    :cond_a
    :goto_8
    const-string/jumbo v1, "service_listing"

    .line 311
    .line 312
    .line 313
    const/4 v3, 0x0

    .line 314
    invoke-interface {v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    .line 316
    .line 317
    if-nez p3, :cond_b

    .line 318
    .line 319
    if-eqz v14, :cond_b

    .line 320
    .line 321
    instance-of v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 322
    .line 323
    if-eqz v1, :cond_b

    .line 324
    .line 325
    iget-object v1, v0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    .line 326
    .line 327
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 336
    .line 337
    invoke-static {v1, v3, v15, v9}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 338
    .line 339
    .line 340
    :cond_b
    add-int/lit8 v13, v13, 0x1

    .line 341
    .line 342
    move/from16 v1, p1

    .line 343
    .line 344
    const/4 v4, 0x0

    .line 345
    goto/16 :goto_6

    .line 346
    .line 347
    :cond_c
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 348
    .line 349
    move/from16 v1, p1

    .line 350
    .line 351
    const/4 v4, 0x0

    .line 352
    goto/16 :goto_5

    .line 353
    .line 354
    :cond_d
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 355
    invoke-virtual {v0, v2}, Lcom/android/server/notification/ManagedServices;->writeExtraXmlTags(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/ManagedServices;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    .line 363
    .line 364
    const/4 v1, 0x0

    .line 365
    invoke-interface {v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    .line 367
    .line 368
    return-void

    .line 369
    :goto_a
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 370
    throw v0
.end method
