.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mKnoxNwFilterApiValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;


# instance fields
.field public mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getInstanceValidation(I)I
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getSignature(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isAppRegistered(ILjava/lang/String;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isAppAuthorized(ILjava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/4 v2, 0x0

    .line 27
    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterValidation"

    .line 28
    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const-string/jumbo p0, "getInstanceValidation: isAppAuthorized returns true for "

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p0, v1, v3}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :cond_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const-string/jumbo p0, "getInstanceValidation: isAppRegistered returns true for "

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p0, v1, v3}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return v2

    .line 48
    :cond_1
    const-string/jumbo p0, "getInstanceValidation: isAppRegistered/isAppAuthorized returns false for "

    .line 49
    .line 50
    .line 51
    invoke-static {p1, p0, v1, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, -0x5

    .line 55
    return p0
.end method

.method public final prepareFilteringValidation(ILjava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    const/4 p0, 0x0

    .line 15
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const-wide/16 v5, 0x1000

    .line 20
    .line 21
    invoke-interface {v4, p2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    array-length p2, p1

    .line 32
    if-lez p2, :cond_1

    .line 33
    .line 34
    array-length p2, p1

    .line 35
    move v4, p0

    .line 36
    :goto_0
    if-ge v4, p2, :cond_1

    .line 37
    .line 38
    aget-object v5, p1, v4

    .line 39
    .line 40
    const-string/jumbo v6, "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_SERVICE_PROVIDER"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    if-eqz v5, :cond_0

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :catch_0
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    :goto_3
    if-eqz p0, :cond_2

    .line 65
    .line 66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    :try_start_3
    const-string/jumbo p0, "knoxNwFilter-KnoxNetworkFilterValidation"

    .line 71
    .line 72
    .line 73
    const-string/jumbo p1, "prepare filtering failed since permission not included in manifest"

    .line 74
    .line 75
    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    new-instance p0, Ljava/lang/SecurityException;

    .line 80
    .line 81
    const-string/jumbo p1, "manifest permission not present"

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    :catchall_1
    move-exception p0

    .line 89
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    throw p0
.end method

.method public final registerListenersValidation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->getInstanceValidation(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_7

    .line 10
    .line 11
    if-eqz p1, :cond_6

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const/4 v1, -0x1

    .line 30
    if-eq p0, v1, :cond_1

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eq p0, v1, :cond_1

    .line 37
    .line 38
    const/16 p0, -0xc

    .line 39
    .line 40
    return p0

    .line 41
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfileListByVendor(I)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string/jumbo p2, "profile mismatch occurred between: "

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p1, " "

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterValidation"

    .line 103
    .line 104
    .line 105
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    const/4 p0, -0x6

    .line 109
    return p0

    .line 110
    :cond_3
    if-eqz p2, :cond_4

    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-nez p0, :cond_4

    .line 117
    .line 118
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    .line 119
    .line 120
    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catch_0
    const/4 p0, -0x3

    .line 125
    return p0

    .line 126
    :cond_4
    :goto_0
    return v0

    .line 127
    :cond_5
    const/4 p0, -0x2

    .line 128
    return p0

    .line 129
    :cond_6
    :goto_1
    const/4 p0, -0x7

    .line 130
    return p0

    .line 131
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    .line 132
    .line 133
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 134
    .line 135
    .line 136
    throw p0
.end method

.method public final setConfigValidation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->getInstanceValidation(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_a

    .line 10
    .line 11
    if-eqz p1, :cond_9

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    const/4 v1, -0x1

    .line 31
    if-eq p0, v1, :cond_1

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eq p0, v1, :cond_1

    .line 38
    .line 39
    const/16 p0, -0xc

    .line 40
    .line 41
    return p0

    .line 42
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfileListByVendor(I)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v2, -0x2

    .line 57
    const/4 v3, -0x6

    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    return v3

    .line 83
    :cond_3
    if-eqz p2, :cond_8

    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_4

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    if-eqz p0, :cond_5

    .line 105
    .line 106
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-nez p0, :cond_6

    .line 111
    .line 112
    return v3

    .line 113
    :cond_5
    if-eqz p2, :cond_8

    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_6

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_6
    if-eqz p2, :cond_7

    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-nez p0, :cond_7

    .line 129
    .line 130
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    .line 131
    .line 132
    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catch_0
    :try_start_1
    new-instance p0, Lorg/json/JSONArray;

    .line 137
    .line 138
    invoke-direct {p0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :catch_1
    const/4 p0, -0x3

    .line 143
    return p0

    .line 144
    :cond_7
    :goto_0
    return v0

    .line 145
    :cond_8
    :goto_1
    return v2

    .line 146
    :cond_9
    :goto_2
    const/4 p0, -0x7

    .line 147
    return p0

    .line 148
    :cond_a
    new-instance p0, Ljava/lang/SecurityException;

    .line 149
    .line 150
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 151
    .line 152
    .line 153
    throw p0
.end method

.method public final startValidation(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->getInstanceValidation(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_8

    .line 10
    .line 11
    if-eqz p1, :cond_7

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const/4 v1, -0x1

    .line 30
    if-eq p0, v1, :cond_1

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eq p0, v1, :cond_1

    .line 37
    .line 38
    const/16 p0, -0xc

    .line 39
    .line 40
    return p0

    .line 41
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfileListByVendor(I)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    const/4 p0, -0x6

    .line 80
    return p0

    .line 81
    :cond_3
    const/4 v0, -0x2

    .line 82
    :cond_4
    if-nez v0, :cond_6

    .line 83
    .line 84
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveListenersFromCache(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-eqz p0, :cond_5

    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_6

    .line 95
    .line 96
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string/jumbo v0, "start API failed for profile "

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, " since listener config is not set"

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterValidation"

    .line 117
    .line 118
    .line 119
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    const/4 v0, -0x8

    .line 123
    :cond_6
    return v0

    .line 124
    :cond_7
    :goto_0
    const/4 p0, -0x7

    .line 125
    return p0

    .line 126
    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    .line 127
    .line 128
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 129
    .line 130
    .line 131
    throw p0
.end method

.method public final stopValidation(ILjava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->getInstanceValidation(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_6

    .line 6
    .line 7
    if-eqz p2, :cond_5

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 v1, -0x1

    .line 26
    if-eq p0, v1, :cond_1

    .line 27
    .line 28
    if-eq p0, p1, :cond_1

    .line 29
    .line 30
    const/16 p0, -0xc

    .line 31
    .line 32
    return p0

    .line 33
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfileListByVendor(I)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    const/4 p0, -0x6

    .line 68
    return p0

    .line 69
    :cond_3
    const/4 v0, -0x2

    .line 70
    :cond_4
    return v0

    .line 71
    :cond_5
    :goto_0
    const/4 p0, -0x7

    .line 72
    return p0

    .line 73
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 74
    .line 75
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public final unregisterApplicationValidation(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 8

    .line 1
    if-eqz p2, :cond_7

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    .line 13
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 22
    .line 23
    const-string/jumbo v2, "pkgName"

    .line 24
    .line 25
    .line 26
    filled-new-array {v2}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    filled-new-array {p2}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-string v5, "adminUid"

    .line 35
    .line 36
    filled-new-array {v5}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const-string v7, "NwFilterMgr"

    .line 41
    .line 42
    invoke-virtual {v1, v7, v3, v4, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const/4 v4, -0x1

    .line 51
    if-lez v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Landroid/content/ContentValues;

    .line 68
    .line 69
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move v1, v4

    .line 79
    :goto_0
    if-ne v1, v4, :cond_2

    .line 80
    .line 81
    const/4 p0, -0x2

    .line 82
    return p0

    .line 83
    :cond_2
    if-eq v1, p1, :cond_3

    .line 84
    .line 85
    const/4 p0, -0x7

    .line 86
    return p0

    .line 87
    :cond_3
    invoke-static {v0, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isPackageInstalled(ILjava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_6

    .line 92
    .line 93
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getSignature(ILjava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 98
    .line 99
    filled-new-array {v2}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    filled-new-array {p2}, [Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    const-string/jumbo v1, "pkgSign"

    .line 108
    .line 109
    .line 110
    filled-new-array {v1}, [Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {p0, v7, v0, p2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-lez p2, :cond_4

    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-eqz p2, :cond_4

    .line 133
    .line 134
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    check-cast p0, Landroid/content/ContentValues;

    .line 139
    .line 140
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    goto :goto_1

    .line 145
    :cond_4
    const/4 p0, 0x0

    .line 146
    :goto_1
    if-eqz p0, :cond_5

    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-nez p2, :cond_5

    .line 153
    .line 154
    if-eqz p1, :cond_5

    .line 155
    .line 156
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-nez p0, :cond_5

    .line 161
    .line 162
    const/4 p0, -0x3

    .line 163
    return p0

    .line 164
    :cond_5
    const/4 p0, 0x0

    .line 165
    return p0

    .line 166
    :cond_6
    const/4 p0, -0x6

    .line 167
    return p0

    .line 168
    :cond_7
    :goto_2
    const/16 p0, -0xa

    .line 169
    .line 170
    return p0
.end method
