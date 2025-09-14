.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mKnoxNetworkFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mBundleInfo:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public final mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mBundleInfo:Ljava/util/HashMap;

    .line 11
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mContext:Landroid/content/Context;

    .line 13
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 15
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 20
    const-string v0, "appops"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/app/AppOpsManager;

    .line 28
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 30
    return-void
.end method

.method public static checkIfPlatformSigned(ILjava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 9
    move-result-object v3

    .line 10
    const-wide/16 v4, 0x80

    .line 12
    invoke-interface {v3, p1, v4, v5, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 18
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 p0, -0x1

    .line 24
    :goto_0
    const/16 p1, 0x3e8

    .line 26
    invoke-interface {v3, p0, p1}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    .line 29
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-nez p0, :cond_1

    .line 32
    const/4 v2, 0x1

    .line 33
    :catch_0
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    goto :goto_2

    .line 37
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    throw p0

    .line 41
    :goto_2
    return v2
.end method

.method public static getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->containsProfileEntry(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mSocketConfig:Ljava/lang/String;

    .line 15
    if-eqz v0, :cond_1

    .line 17
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 19
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const/4 v0, 0x2

    .line 23
    const-string/jumbo v3, "ipRange"

    .line 26
    const-string/jumbo v4, "misc"

    .line 29
    if-ne p0, v0, :cond_0

    .line 31
    :try_start_1
    const-string/jumbo v0, "ipv4"

    .line 34
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lorg/json/JSONObject;

    .line 40
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lorg/json/JSONObject;

    .line 48
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/16 v0, 0xa

    .line 57
    if-ne p0, v0, :cond_1

    .line 59
    const-string/jumbo v0, "ipv6"

    .line 62
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lorg/json/JSONObject;

    .line 68
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lorg/json/JSONObject;

    .line 76
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    :catch_0
    :cond_1
    :goto_0
    const-string/jumbo v0, "getConfiguredIpRange: profileName "

    .line 85
    const-string v2, " ipVersion: "

    .line 87
    const-string v3, " ipRange: "

    .line 89
    invoke-static {p0, v0, p1, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    move-result-object p0

    .line 93
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 96
    invoke-static {p0, v1, p1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v1
.end method

.method public static getConfiguredProtocols(Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_5

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mSocketConfig:Ljava/lang/String;

    .line 13
    if-eqz p0, :cond_5

    .line 15
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 17
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    const-string/jumbo p0, "ipv4"

    .line 23
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    const-string/jumbo v2, "udp"

    .line 32
    const-string/jumbo v3, "tcp"

    .line 35
    const-string/jumbo v4, "dns"

    .line 38
    const/4 v5, 0x1

    .line 39
    const-string/jumbo v6, "listenerPort"

    .line 42
    const-string/jumbo v7, "listenerAddress"

    .line 45
    if-eqz p0, :cond_2

    .line 47
    :try_start_1
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    move-result-object v8

    .line 51
    check-cast v8, Lorg/json/JSONObject;

    .line 53
    if-eqz v8, :cond_0

    .line 55
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v9

    .line 59
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 62
    move-result v8

    .line 63
    if-eqz v9, :cond_0

    .line 65
    if-lez v8, :cond_0

    .line 67
    iput-boolean v5, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4DnsConfigured:Z

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    goto/16 :goto_1

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    move-result-object v8

    .line 77
    check-cast v8, Lorg/json/JSONObject;

    .line 79
    if-eqz v8, :cond_1

    .line 81
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v9

    .line 85
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 88
    move-result v8

    .line 89
    if-eqz v9, :cond_1

    .line 91
    if-lez v8, :cond_1

    .line 93
    iput-boolean v5, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4TcpConfigured:Z

    .line 95
    :cond_1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Lorg/json/JSONObject;

    .line 101
    if-eqz p0, :cond_2

    .line 103
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 110
    move-result p0

    .line 111
    if-eqz v8, :cond_2

    .line 113
    if-lez p0, :cond_2

    .line 115
    iput-boolean v5, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4UdpConfigured:Z

    .line 117
    :cond_2
    const-string/jumbo p0, "ipv6"

    .line 120
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    move-result-object p0

    .line 124
    check-cast p0, Lorg/json/JSONObject;

    .line 126
    if-eqz p0, :cond_5

    .line 128
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Lorg/json/JSONObject;

    .line 134
    if-eqz v1, :cond_3

    .line 136
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 142
    :cond_3
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lorg/json/JSONObject;

    .line 148
    if-eqz v1, :cond_4

    .line 150
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 157
    move-result v1

    .line 158
    if-eqz v3, :cond_4

    .line 160
    if-lez v1, :cond_4

    .line 162
    iput-boolean v5, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6TcpConfigured:Z

    .line 164
    :cond_4
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    move-result-object p0

    .line 168
    check-cast p0, Lorg/json/JSONObject;

    .line 170
    if-eqz p0, :cond_5

    .line 172
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 179
    move-result p0

    .line 180
    if-eqz v1, :cond_5

    .line 182
    if-lez p0, :cond_5

    .line 184
    iput-boolean v5, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6UdpConfigured:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    goto :goto_2

    .line 187
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "Error parsing: getConfiguredProtocols "

    .line 191
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object p0

    .line 205
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 208
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_5
    :goto_2
    return-void
.end method

.method public static getInstalledVpnClientList(I)Ljava/util/Set;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 13
    move-result-object v3

    .line 14
    const-wide/16 v4, 0x0

    .line 16
    invoke-interface {v3, v4, v5, p0}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 23
    move-result-object v4

    .line 24
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v4

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_2

    .line 34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 40
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 42
    const-wide/16 v7, 0x4

    .line 44
    invoke-interface {v3, v6, v7, v8, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 47
    move-result-object v7

    .line 48
    if-eqz v7, :cond_0

    .line 50
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 52
    if-eqz v7, :cond_0

    .line 54
    array-length v8, v7

    .line 55
    const/4 v9, 0x0

    .line 56
    :goto_1
    if-ge v9, v8, :cond_0

    .line 58
    aget-object v10, v7, v9

    .line 60
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 62
    if-eqz v10, :cond_1

    .line 64
    const-string v11, "android.permission.BIND_VPN_SERVICE"

    .line 66
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 69
    move-result v10

    .line 70
    if-eqz v10, :cond_1

    .line 72
    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 74
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    const-string/jumbo v7, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string v9, "The following package "

    .line 91
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v6, " with uid "

    .line 99
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 104
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v5, " is identified as vpn client"

    .line 109
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v5

    .line 116
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    goto :goto_2

    .line 122
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 124
    goto :goto_1

    .line 125
    :cond_2
    if-nez p0, :cond_3

    .line 127
    const/16 p0, 0x3f8

    .line 129
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :catch_0
    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    goto :goto_3

    .line 140
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    throw p0

    .line 144
    :goto_3
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mKnoxNetworkFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;-><init>(Landroid/content/Context;)V

    .line 13
    sput-object v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mKnoxNetworkFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mKnoxNetworkFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw p0
.end method

.method public static getPackageNameForUid(I)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "Exception in getPackageNameForUid : "

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 10
    move-result-object v3

    .line 11
    invoke-interface {v3, p0}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :catch_0
    move-exception p0

    .line 22
    :try_start_1
    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    const/4 p0, 0x0

    .line 48
    :goto_0
    return-object p0

    .line 49
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    throw p0
.end method

.method public static getProfileList()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 30
    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileName:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-object v0
.end method

.method public static getProfileListByVendor(I)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_1

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 30
    iget v3, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageUid:I

    .line 32
    if-ne v3, p0, :cond_0

    .line 34
    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileName:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object v0
.end method

.method public static getProfilebyUserId(I)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 25
    iget v2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageUid:I

    .line 27
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 30
    move-result v2

    .line 31
    if-ne v2, p0, :cond_0

    .line 33
    iget-object p0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileName:Ljava/lang/String;

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    :goto_0
    return-object p0
.end method

.method public static getRulesConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->containsProfileEntry(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mRulesConfig:Ljava/lang/String;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method public static getUIDForPackage(ILjava/lang/String;)I
    .locals 7

    .line 1
    const-string v0, "Exception in getUIDForPackage : "

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v1

    .line 7
    const/4 v3, -0x1

    .line 8
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 11
    move-result-object v4

    .line 12
    const-wide/16 v5, 0x80

    .line 14
    invoke-interface {v4, p1, v5, v6, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 20
    iget v3, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_3

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    goto :goto_2

    .line 31
    :goto_1
    :try_start_1
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    goto :goto_0

    .line 54
    :goto_2
    return v3

    .line 55
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    throw p0
.end method

.method public static getUserIdList()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget-object v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 30
    iget v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageUid:I

    .line 32
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 35
    move-result v2

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-object v0
.end method

.method public static getVendorUidByProfile(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 25
    iget-object v2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileName:Ljava/lang/String;

    .line 27
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 33
    iget p0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageUid:I

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p0, -0x1

    .line 37
    :goto_0
    return p0
.end method

.method public static isPackageInstalled(ILjava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    move-result-wide v1

    .line 6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 9
    move-result-object v3

    .line 10
    const-wide/16 v4, 0x0

    .line 12
    invoke-interface {v3, p1, v4, v5, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 15
    move-result-object p0

    .line 16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    const-string v1, "Error "

    .line 28
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 34
    invoke-static {p0, p1, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    :cond_0
    :goto_0
    return v0
.end method

.method public static retrieveListenersFromCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->containsProfileEntry(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mSocketConfig:Ljava/lang/String;

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final addAuthorizedInfoToDatabase(ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    const-string/jumbo v1, "pkgUid"

    .line 9
    const-string/jumbo v2, "pkgName"

    .line 12
    invoke-static {p1, v0, v1, v2, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    if-eqz p3, :cond_0

    .line 17
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->marshall()[B

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 31
    const-string/jumbo p2, "bundleInfo"

    .line 34
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 37
    :cond_0
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 39
    const-string v1, "UnManagedNwFilterMgr"

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p2, v1, v2, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 45
    move-result p2

    .line 46
    const-string v0, "addUnmanagedInfoToDatabase: result value is "

    .line 48
    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 51
    invoke-static {v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    if-eqz p2, :cond_2

    .line 56
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mBundleInfo:Ljava/util/HashMap;

    .line 58
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 61
    move-result v1

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mBundleInfo:Ljava/util/HashMap;

    .line 74
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 77
    move-result v1

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mBundleInfo:Ljava/util/HashMap;

    .line 87
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 90
    move-result p1

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_2
    return p2
.end method

.method public final addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V
    .locals 8

    .line 1
    const-string v0, " addOrRemoveAppsFromBatteryOptimization error "

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v1

    .line 7
    const/16 v3, 0x81

    .line 9
    const/16 v4, 0x80

    .line 11
    const/16 v5, 0x7c

    .line 13
    const-string/jumbo v6, "deviceidle"

    .line 16
    const-string/jumbo v7, "power"

    .line 19
    if-eqz p3, :cond_1

    .line 21
    :try_start_0
    iget-object p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {p3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object p3

    .line 27
    check-cast p3, Landroid/os/PowerManager;

    .line 29
    invoke-virtual {p3, p2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    .line 32
    move-result p3

    .line 33
    if-nez p3, :cond_0

    .line 35
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 38
    move-result-object p3

    .line 39
    invoke-static {p3}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    .line 42
    move-result-object p3

    .line 43
    invoke-interface {p3, p2}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_4

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 53
    const/4 v6, 0x0

    .line 54
    invoke-virtual {p3, v5, p1, p2, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 57
    iget-object p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 59
    invoke-virtual {p3, v4, p1, p2, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 62
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 64
    invoke-virtual {p0, v3, p1, p2, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget-object p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    move-result-object p3

    .line 74
    check-cast p3, Landroid/os/PowerManager;

    .line 76
    invoke-virtual {p3, p2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    .line 79
    move-result p3

    .line 80
    if-eqz p3, :cond_2

    .line 82
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 85
    move-result-object p3

    .line 86
    invoke-static {p3}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    .line 89
    move-result-object p3

    .line 90
    invoke-interface {p3, p2}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 93
    :cond_2
    iget-object p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 95
    const/4 v6, 0x3

    .line 96
    invoke-virtual {p3, v5, p1, p2, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 99
    iget-object p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 101
    invoke-virtual {p3, v4, p1, p2, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 104
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 106
    invoke-virtual {p0, v3, p1, p2, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    goto :goto_3

    .line 113
    :goto_2
    :try_start_1
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p0

    .line 132
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    goto :goto_1

    .line 136
    :goto_3
    return-void

    .line 137
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    throw p0
.end method

.method public final addRegisterInfoToDatabase(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    const-string v1, "adminUid"

    .line 8
    const/4 v2, -0x1

    .line 9
    const-string/jumbo v3, "pkgUid"

    .line 12
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    const-string/jumbo p1, "pkgName"

    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    if-eqz p3, :cond_0

    .line 23
    const-string/jumbo p1, "pkgSign"

    .line 26
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    if-eqz p4, :cond_1

    .line 31
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 45
    const-string/jumbo p1, "bundleInfo"

    .line 48
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 51
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 53
    const-string p1, "NwFilterMgr"

    .line 55
    const/4 p2, 0x0

    .line 56
    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 59
    move-result p0

    .line 60
    const-string p1, "addRegisterInfoToDatabase: status is "

    .line 62
    const-string/jumbo p2, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 65
    invoke-static {p1, p2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    return p0
.end method

.method public final addVendorInfoToStorage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string/jumbo v1, "profileName"

    .line 6
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    filled-new-array {p2}, [Ljava/lang/String;

    .line 13
    move-result-object v3

    .line 14
    const-string/jumbo v4, "profileConfig"

    .line 17
    filled-new-array {v4}, [Ljava/lang/String;

    .line 20
    move-result-object v5

    .line 21
    const-string v6, "NwFilterService"

    .line 23
    invoke-virtual {v0, v6, v2, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v0

    .line 31
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 34
    if-lez v0, :cond_0

    .line 36
    invoke-static {v4, p3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 39
    move-result-object v0

    .line 40
    filled-new-array {v1}, [Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    filled-new-array {p2}, [Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 50
    invoke-virtual {p0, v6, v1, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 53
    move-result p0

    .line 54
    const-string v0, "addVendorInfoToStorage: update status is "

    .line 56
    invoke-static {v0, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    .line 62
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 65
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v1, "pkgUid"

    .line 74
    const-string/jumbo v3, "pkgName"

    .line 77
    invoke-static {p1, v0, v1, v3, p4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v6, v1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 86
    move-result p0

    .line 87
    const-string v0, "addVendorInfoToStorage: new entry status is "

    .line 89
    invoke-static {v0, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 92
    :goto_0
    if-eqz p0, :cond_3

    .line 94
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->containsProfileEntry(Ljava/lang/String;)Z

    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_2

    .line 100
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 102
    invoke-direct {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;-><init>()V

    .line 105
    iput-object p2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileName:Ljava/lang/String;

    .line 107
    iput-object p3, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mRulesConfig:Ljava/lang/String;

    .line 109
    iput-object p4, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageName:Ljava/lang/String;

    .line 111
    iput p1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageUid:I

    .line 113
    const-class p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 115
    monitor-enter p1

    .line 116
    if-eqz p2, :cond_1

    .line 118
    :try_start_0
    sget-object p3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    invoke-virtual {p3, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-result-object p2

    .line 124
    check-cast p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p1

    .line 127
    goto :goto_1

    .line 128
    :catchall_0
    move-exception p0

    .line 129
    monitor-exit p1

    .line 130
    throw p0

    .line 131
    :cond_1
    monitor-exit p1

    .line 132
    goto :goto_1

    .line 133
    :cond_2
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 136
    move-result-object p1

    .line 137
    iput-object p3, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mRulesConfig:Ljava/lang/String;

    .line 139
    :cond_3
    :goto_1
    return p0
.end method

.method public final applyHttpProxyConfiguration(Ljava/lang/String;[Ljava/lang/String;ZI)V
    .locals 8

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_5

    .line 9
    iget v1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mDNSCacheStatus:I

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v1, v2, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    if-eqz p3, :cond_1

    .line 18
    array-length p3, p2

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, p3, :cond_2

    .line 22
    aget-object v3, p2, v2

    .line 24
    iget-object v4, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mBrowserAppList:Ljava/util/HashSet;

    .line 26
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mBrowserAppList:Ljava/util/HashSet;

    .line 34
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 37
    :cond_2
    if-eqz p2, :cond_5

    .line 39
    array-length p1, p2

    .line 40
    move p3, v1

    .line 41
    :goto_1
    if-ge p3, p1, :cond_5

    .line 43
    aget-object v2, p2, p3

    .line 45
    :try_start_0
    invoke-static {p4, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    .line 48
    move-result v3

    .line 49
    const/4 v4, -0x1

    .line 50
    if-eq v3, v4, :cond_4

    .line 52
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 61
    move-result-object v4

    .line 62
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    .line 68
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 70
    invoke-virtual {v5, v3, v6}, Lcom/android/server/am/ActivityManagerService;->checkIfProcessIsRunning(ILjava/lang/String;)Z

    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_3

    .line 76
    const-string/jumbo v5, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    const-string v7, "Proxy config has been applied, going to restart the app "

    .line 86
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v7, "whose uid is "

    .line 95
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v6

    .line 105
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    .line 114
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 116
    invoke-virtual {v5, v4, v3}, Lcom/android/server/am/ActivityManagerService;->killApplicationProcess(Ljava/lang/String;I)V

    .line 119
    :cond_3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Lcom/android/server/am/ActivityManagerService;

    .line 125
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 128
    move-result v3

    .line 129
    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ActivityManagerService;->killBackgroundProcesses(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :catch_0
    :cond_4
    add-int/lit8 p3, p3, 0x1

    .line 134
    goto :goto_1

    .line 135
    :cond_5
    return-void
.end method

.method public final getAdminIdForUser(I)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v0, "NwFilterMgr"

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    if-lez v0, :cond_1

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 21
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/content/ContentValues;

    .line 33
    const-string v1, "adminUid"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 46
    move-result v0

    .line 47
    if-ne v0, p1, :cond_0

    .line 49
    :cond_1
    return v1
.end method

.method public final getAuthorizedAppPackage(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v0, "UnManagedNwFilterMgr"

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_1

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 20
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/content/ContentValues;

    .line 32
    const-string/jumbo v2, "pkgUid"

    .line 35
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v2

    .line 43
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 46
    move-result v2

    .line 47
    if-ne v2, p1, :cond_0

    .line 49
    const-string/jumbo p0, "pkgName"

    .line 52
    invoke-virtual {v0, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    :cond_1
    return-object v1
.end method

.method public final getAuthorizedInfoFromDatabase()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 8
    const-string v1, "UnManagedNwFilterMgr"

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/content/ContentValues;

    .line 37
    const-string/jumbo v2, "pkgName"

    .line 40
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-string/jumbo v2, "pkgUid"

    .line 50
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v1

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    return-object v0
.end method

.method public final getRegisterInfoFromDatabase()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 8
    const-string v1, "NwFilterMgr"

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_1

    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/content/ContentValues;

    .line 37
    const-string v2, "adminUid"

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result v2

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const-string/jumbo v2, "pkgName"

    .line 57
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-string/jumbo v2, "pkgUid"

    .line 67
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 74
    move-result v2

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const-string/jumbo v2, "pkgSign"

    .line 85
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    return-object v0
.end method

.method public final getRegisteredAppPackage(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v0, "NwFilterMgr"

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_1

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 20
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/content/ContentValues;

    .line 32
    const-string v2, "adminUid"

    .line 34
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result v2

    .line 42
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 45
    move-result v2

    .line 46
    if-ne v2, p1, :cond_0

    .line 48
    const-string/jumbo p0, "pkgName"

    .line 51
    invoke-virtual {v0, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    :cond_1
    return-object v1
.end method

.method public final getRegisteredAppsByAdminId(I)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 8
    const-string v1, "NwFilterMgr"

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_1

    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/content/ContentValues;

    .line 37
    const-string v2, "adminUid"

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result v2

    .line 47
    if-ne p1, v2, :cond_0

    .line 49
    const-string/jumbo v2, "pkgName"

    .line 52
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return-object v0
.end method

.method public final getSignature(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v1

    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const/16 p0, 0x40

    .line 20
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_0

    .line 26
    const-string/jumbo p0, "getPackageCertForPkgname: pkgInfo is null"

    .line 29
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    return-object v3

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_4

    .line 38
    :catch_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    :try_start_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 42
    array-length p1, p0

    .line 43
    const/4 p2, 0x0

    .line 44
    :goto_0
    if-ge p2, p1, :cond_2

    .line 46
    aget-object v4, p0, p2

    .line 48
    if-eqz v4, :cond_1

    .line 50
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 53
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    goto :goto_3

    .line 62
    :goto_2
    :try_start_2
    const-string p1, "In getPackageCertForPkgname: Exception"

    .line 64
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    goto :goto_1

    .line 68
    :goto_3
    return-object v3

    .line 69
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    throw p0
.end method

.method public final getVersionCode(ILjava/lang/String;)I
    .locals 4

    .line 1
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v1

    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {v3, p1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 21
    move-result-object p0

    .line 22
    if-nez p0, :cond_0

    .line 24
    const-string/jumbo p0, "getVersionCode: pkgInfo is null"

    .line 27
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    return v3

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_3

    .line 36
    :catch_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    goto :goto_2

    .line 44
    :goto_1
    :try_start_2
    const-string p1, "In getVersionCode: Exception"

    .line 46
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :goto_2
    return v3

    .line 51
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    throw p0
.end method

.method public final getVersionName(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v1

    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const/4 p0, 0x0

    .line 19
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 22
    move-result-object p0

    .line 23
    if-nez p0, :cond_0

    .line 25
    const-string/jumbo p0, "getVersionName: pkgInfo is null"

    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    return-object v3

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_3

    .line 37
    :catch_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    goto :goto_2

    .line 45
    :goto_1
    :try_start_2
    const-string p1, "In getVersionName: Exception"

    .line 47
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    goto :goto_0

    .line 51
    :goto_2
    return-object v3

    .line 52
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    throw p0
.end method

.method public final isAppAuthorized(ILjava/lang/String;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string/jumbo v0, "pkgName"

    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    filled-new-array {p2}, [Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    const-string/jumbo v1, "pkgUid"

    .line 17
    filled-new-array {v1}, [Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    const-string v3, "UnManagedNwFilterMgr"

    .line 23
    invoke-virtual {p0, v3, v0, p2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result p2

    .line 31
    if-lez p2, :cond_1

    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object p0

    .line 37
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_1

    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Landroid/content/ContentValues;

    .line 49
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 56
    move-result p2

    .line 57
    if-ne p2, p1, :cond_0

    .line 59
    const/4 p0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 p0, 0x0

    .line 62
    :goto_0
    return p0
.end method

.method public final isAppRegistered(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string/jumbo v0, "pkgName"

    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    filled-new-array {p2}, [Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    const-string v1, "adminUid"

    .line 16
    const-string/jumbo v2, "pkgSign"

    .line 19
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    const-string v4, "NwFilterMgr"

    .line 25
    invoke-virtual {p0, v4, v0, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result p2

    .line 33
    if-lez p2, :cond_2

    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object p0

    .line 39
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2

    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Landroid/content/ContentValues;

    .line 51
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v0

    .line 59
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object p2

    .line 63
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 66
    move-result v0

    .line 67
    if-ne v0, p1, :cond_0

    .line 69
    const/4 v0, 0x1

    .line 70
    if-eqz p2, :cond_3

    .line 72
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_0

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const/4 v0, 0x0

    .line 87
    :cond_3
    :goto_0
    return v0
.end method

.method public final isRegisterDbEmpty()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v0, "NwFilterMgr"

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result p0

    .line 14
    if-lez p0, :cond_0

    .line 16
    const/4 p0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 19
    :goto_0
    return p0
.end method

.method public final isUserIdAuthorized(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v0, "UnManagedNwFilterMgr"

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_1

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 20
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/content/ContentValues;

    .line 32
    const-string/jumbo v1, "pkgUid"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    move-result v0

    .line 43
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 46
    move-result v0

    .line 47
    if-ne v0, p1, :cond_0

    .line 49
    const/4 p0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 p0, 0x0

    .line 52
    :goto_0
    return p0
.end method

.method public final isUserIdRegistered(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v0, "NwFilterMgr"

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_1

    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 20
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/content/ContentValues;

    .line 32
    const-string v1, "adminUid"

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result v0

    .line 42
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 45
    move-result v0

    .line 46
    if-ne v0, p1, :cond_0

    .line 48
    const/4 p0, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p0, 0x0

    .line 51
    :goto_0
    return p0
.end method

.method public final removeAuthorizedInfoFromDatabase(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string/jumbo v1, "pkgName"

    .line 6
    filled-new-array {v1}, [Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    filled-new-array {p2}, [Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    const-string v2, "UnManagedNwFilterMgr"

    .line 16
    invoke-virtual {v0, v2, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 19
    move-result p2

    .line 20
    const-string/jumbo v0, "removeAuthorizedInfoFromDatabase: result value is "

    .line 23
    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 26
    invoke-static {v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mBundleInfo:Ljava/util/HashMap;

    .line 31
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 34
    move-result v1

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 45
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mBundleInfo:Ljava/util/HashMap;

    .line 47
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 50
    move-result p1

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    return p2
.end method

.method public final removeVendorInfoFromStorage(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v0, "NwFilterService"

    .line 5
    const-string/jumbo v1, "profileName"

    .line 8
    filled-new-array {v1}, [Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    filled-new-array {p1}, [Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 19
    move-result p0

    .line 20
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterHelper"

    .line 23
    const-string/jumbo v1, "removeVendorInfoFromStorage: status is "

    .line 26
    invoke-static {v1, v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    if-eqz p0, :cond_2

    .line 31
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->containsProfileEntry(Ljava/lang/String;)Z

    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 37
    const-class p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    .line 39
    monitor-enter p0

    .line 40
    if-nez p1, :cond_0

    .line 42
    monitor-exit p0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 49
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-nez v1, :cond_1

    .line 52
    monitor-exit p0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit p0

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    monitor-exit p0

    .line 64
    throw p1

    .line 65
    :cond_2
    :goto_0
    return-void
.end method
