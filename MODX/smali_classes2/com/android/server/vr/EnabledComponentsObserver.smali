.class public final Lcom/android/server/vr/EnabledComponentsObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEnabledComponentListeners:Ljava/util/Set;

.field public final mEnabledSet:Landroid/util/SparseArray;

.field public final mInstalledSet:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mServiceName:Ljava/lang/String;

.field public final mServicePermission:Ljava/lang/String;

.field public final mSettingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledComponentListeners:Ljava/util/Set;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    const-string p1, "enabled_vr_listeners"

    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mSettingName:Ljava/lang/String;

    .line 32
    .line 33
    const-string p1, "android.service.vr.VrListenerService"

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mServiceName:Ljava/lang/String;

    .line 36
    .line 37
    const-string p1, "android.permission.BIND_VR_LISTENER_SERVICE"

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mServicePermission:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 5

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const p2, 0xc0084

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1, p2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 p2, 0x0

    .line 25
    :goto_0
    if-ge p2, p1, :cond_1

    .line 26
    .line 27
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 32
    .line 33
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 34
    .line 35
    new-instance v2, Landroid/content/ComponentName;

    .line 36
    .line 37
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_0

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v3, "Skipping service "

    .line 55
    .line 56
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, "/"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ": it does not require the permission "

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v2, "EnabledComponentsObserver"

    .line 87
    .line 88
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_0
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final getEnabled(I)Landroid/util/ArraySet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/util/ArraySet;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    new-instance p0, Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    return-object p0

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final isValid(ILandroid/content/ComponentName;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/util/ArraySet;

    .line 11
    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/util/ArraySet;

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    monitor-exit v0

    .line 39
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :goto_0
    monitor-exit v0

    .line 44
    const/4 p0, -0x1

    .line 45
    return p0

    .line 46
    :cond_3
    :goto_1
    monitor-exit v0

    .line 47
    const/4 p0, -0x2

    .line 48
    return p0

    .line 49
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final loadComponentNamesFromSetting(ILjava/lang/String;)Landroid/util/ArraySet;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance p0, Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string p1, ":"

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance p1, Landroid/util/ArraySet;

    .line 30
    .line 31
    array-length p2, p0

    .line 32
    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(I)V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    :goto_0
    array-length v0, p0

    .line 37
    if-ge p2, v0, :cond_2

    .line 38
    .line 39
    aget-object v0, p0, p2

    .line 40
    .line 41
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return-object p1
.end method

.method public final rebuildAll()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const-string/jumbo v2, "user"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/os/UserManager;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    move-object v1, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :goto_0
    array-length v3, v1

    .line 39
    const/4 v4, 0x0

    .line 40
    move v5, v4

    .line 41
    :goto_1
    if-ge v5, v3, :cond_1

    .line 42
    .line 43
    aget v6, v1, v5

    .line 44
    .line 45
    iget-object v7, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    iget-object v8, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mServiceName:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v9, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mServicePermission:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v7, v6, v8, v9}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    iget-object v8, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mSettingName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p0, v6, v8}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNamesFromSetting(ILjava/lang/String;)Landroid/util/ArraySet;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    iget-object v9, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mInstalledSet:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {v9, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v7, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledSet:Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v5, v5, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto/16 :goto_6

    .line 83
    .line 84
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver;->mEnabledComponentListeners:Ljava/util/Set;

    .line 86
    .line 87
    check-cast p0, Landroid/util/ArraySet;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    move-object v5, v0

    .line 104
    check-cast v5, Lcom/android/server/vr/VrManagerService;

    .line 105
    .line 106
    iget-object v0, v5, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 107
    .line 108
    monitor-enter v0

    .line 109
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget-object v3, v5, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    .line 114
    .line 115
    invoke-virtual {v3, v1}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    new-instance v3, Landroid/util/ArraySet;

    .line 120
    .line 121
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    :cond_2
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_4

    .line 133
    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Landroid/content/ComponentName;

    .line 139
    .line 140
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    iget-object v8, v5, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 147
    .line 148
    .line 149
    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    const/16 v9, 0x80

    .line 151
    .line 152
    :try_start_2
    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 153
    .line 154
    .line 155
    move-result-object v7
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 156
    goto :goto_4

    .line 157
    :catch_0
    move-object v7, v2

    .line 158
    :goto_4
    if-eqz v7, :cond_2

    .line 159
    .line 160
    :try_start_3
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-nez v8, :cond_3

    .line 165
    .line 166
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-nez v7, :cond_3

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_3
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :catchall_1
    move-exception p0

    .line 182
    goto :goto_5

    .line 183
    :cond_4
    iget-object v1, v5, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    .line 184
    .line 185
    invoke-virtual {v1, v3}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->update(Ljava/util/Collection;)V

    .line 186
    .line 187
    .line 188
    iget-boolean v1, v5, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    .line 189
    .line 190
    if-nez v1, :cond_5

    .line 191
    .line 192
    monitor-exit v0

    .line 193
    goto :goto_2

    .line 194
    :cond_5
    invoke-virtual {v5, v4}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked(Z)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v5, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 198
    .line 199
    if-nez v1, :cond_6

    .line 200
    .line 201
    monitor-exit v0

    .line 202
    goto :goto_2

    .line 203
    :cond_6
    iget-boolean v6, v5, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    .line 204
    .line 205
    iget-boolean v7, v5, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    .line 206
    .line 207
    iget-object v8, v1, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 208
    .line 209
    iget v9, v1, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    .line 210
    .line 211
    iget v10, v5, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    .line 212
    .line 213
    iget-object v11, v5, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    .line 214
    .line 215
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 216
    .line 217
    .line 218
    monitor-exit v0

    .line 219
    goto :goto_2

    .line 220
    :goto_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 221
    throw p0

    .line 222
    :cond_7
    return-void

    .line 223
    :goto_6
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    throw p0
.end method
