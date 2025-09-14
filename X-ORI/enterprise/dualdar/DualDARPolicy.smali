.class public final Lcom/android/server/enterprise/dualdar/DualDARPolicy;
.super Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public final context:Landroid/content/Context;

.field public final dualDarConfigCache:Ljava/util/Map;

.field public edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

.field public final mInjector:Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

.field public final mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mInjector:Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->context:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 22
    .line 23
    new-instance v0, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    .line 29
    .line 30
    new-instance v0, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 36
    .line 37
    new-instance p1, Lcom/samsung/android/knox/dar/VirtualLockUtils;

    .line 38
    .line 39
    invoke-direct {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    .line 43
    .line 44
    return-void
.end method

.method public static flatten(Ljava/util/List;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-ge v2, v3, :cond_0

    .line 37
    .line 38
    const-string v3, ", "

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public static flattenPackages(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/samsung/android/knox/AppIdentity;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flatten(Ljava/util/List;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public static flattenSignatures(Ljava/util/List;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/samsung/android/knox/AppIdentity;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const-string v1, ""

    .line 36
    .line 37
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    const-string v1, "-"

    .line 44
    .line 45
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-static {v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flatten(Ljava/util/List;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public static getWhitelistPkgesFromConfig(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "dualdar-config-datalock-whitelistpackages"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_2

    .line 14
    .line 15
    array-length v1, p0

    .line 16
    if-lez v1, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    array-length v2, p0

    .line 20
    if-ge v1, v2, :cond_2

    .line 21
    .line 22
    aget-object v2, p0, v1

    .line 23
    .line 24
    check-cast v2, Lcom/samsung/android/knox/AppIdentity;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static {v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flatten(Ljava/util/List;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public static logDualDarAnalytics(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 2
    .line 3
    const-string/jumbo v0, "logDualDarAnalytics, userID"

    .line 4
    .line 5
    .line 6
    const-string v1, ", event: "

    .line 7
    .line 8
    invoke-static {p0, v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v1, v0, [Ljava/lang/Object;

    .line 14
    .line 15
    const-string v2, "DualDARPolicy:DualDARAnalytics"

    .line 16
    .line 17
    invoke-static {v2, p0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo p0, "datalock_timeout"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    const-string v1, "Payload / "

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    const-string v4, "KNOX_DUALDAR"

    .line 31
    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    new-instance p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 35
    .line 36
    const-string p2, "DATALOCK_TIMEOUT"

    .line 37
    .line 38
    invoke-direct {p0, v4, v3, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string/jumbo p2, "dualdar-config-datalock-timeout"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 45
    .line 46
    .line 47
    move-result-wide p1

    .line 48
    const-string/jumbo v3, "datalckTmoutV"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v3, p1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v4, "EVENT : DATALOCK_TIMEOUT TIME: "

    .line 57
    .line 58
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-array p2, v0, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-static {v2, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-array p2, v0, [Ljava/lang/Object;

    .line 90
    .line 91
    invoke-static {v2, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_0
    const-string/jumbo p0, "whitelisted_apps"

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_1

    .line 106
    .line 107
    new-instance p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 108
    .line 109
    const-string p2, "WHITELISTED_APPS"

    .line 110
    .line 111
    invoke-direct {p0, v4, v3, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getWhitelistPkgesFromConfig(Landroid/os/Bundle;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string/jumbo p2, "wPkgLst"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v3, "EVENT:WHITELISTED_APPS, WhiteListed Packages: "

    .line 127
    .line 128
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-array p2, v0, [Ljava/lang/Object;

    .line 139
    .line 140
    invoke-static {v2, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    new-array p2, v0, [Ljava/lang/Object;

    .line 160
    .line 161
    invoke-static {v2, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_1
    const-string/jumbo p0, "de_access_restriction"

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-eqz p0, :cond_2

    .line 176
    .line 177
    const-string/jumbo p0, "dualdar-config-de-restriction"

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string p2, "DE Restriction Value: "

    .line 187
    .line 188
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    new-array p1, v0, [Ljava/lang/Object;

    .line 199
    .line 200
    invoke-static {v2, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final clearPolicy(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6
    .line 7
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 8
    .line 9
    const-string v1, "DualDARPolicy"

    .line 10
    .line 11
    const-string/jumbo v2, "clearPolicy policy passed? : "

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 16
    .line 17
    const-string v5, "DUAL_DAR"

    .line 18
    .line 19
    invoke-virtual {v4, v0, p1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByAdmin(IILjava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p0, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-array p1, v3, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    move v3, v0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v0, "Exception while clearing policy, "

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-array v0, v3, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-static {v1, p1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :goto_0
    return v3
.end method

.method public final clearResetPasswordTokenForInner(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDAROnDOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "clearResetPasswordTokenForInner: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v2, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    const-string v3, "DualDARPolicy"

    .line 26
    .line 27
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 31
    .line 32
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-gez p1, :cond_0

    .line 43
    .line 44
    return v1

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->clearResetPasswordToken(I)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0
.end method

.method public final enforceDualDAROnDOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget p1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 6
    .line 7
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 15
    .line 16
    const-string p1, "This API works only with managed device (DO enabled)"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mInjector:Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_DUAL_DAR"

    .line 20
    .line 21
    .line 22
    filled-new-array {v1}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final getClientAndProfileOwnerApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, ""

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move-object v2, p3

    .line 18
    check-cast v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    .line 24
    .line 25
    invoke-direct {v2, v0, v1}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move-object v0, p2

    .line 29
    check-cast v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    .line 35
    .line 36
    .line 37
    filled-new-array {v0}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 46
    .line 47
    const-wide/16 v4, 0x0

    .line 48
    .line 49
    invoke-interface {v2, v0, v4, v5, v3}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "RemoteException in getClientAndProfileOwnerApps while checking permissions "

    .line 62
    .line 63
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v2, 0x0

    .line 78
    new-array v2, v2, [Ljava/lang/Object;

    .line 79
    .line 80
    const-string v3, "DualDARPolicy"

    .line 81
    .line 82
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    :goto_0
    if-eqz v0, :cond_1

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_1

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 103
    .line 104
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 105
    .line 106
    move-object v4, p3

    .line 107
    check-cast v4, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    .line 113
    .line 114
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 115
    .line 116
    invoke-direct {v3, v2, v1}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    move-object v2, p2

    .line 120
    check-cast v2, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_1
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 127
    .line 128
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 129
    .line 130
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfigFromDb(II)Landroid/os/Bundle;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    if-eqz p0, :cond_2

    .line 135
    .line 136
    const-string/jumbo p1, "dualdar-config-client-package"

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const-string/jumbo v0, "dualdar-config-client-signature"

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    if-eqz p1, :cond_2

    .line 151
    .line 152
    check-cast p3, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    new-instance p3, Lcom/samsung/android/knox/AppIdentity;

    .line 158
    .line 159
    invoke-direct {p3, p1, p0}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    check-cast p2, Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    :cond_2
    return-void
.end method

.method public final getClientInfo(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p0, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroid/os/Bundle;

    .line 42
    .line 43
    const-string/jumbo p1, "dualdar-config-client-package"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string p0, ""

    .line 52
    .line 53
    :goto_0
    return-object p0
.end method

.method public final getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/os/Bundle;

    .line 20
    .line 21
    return-object p0
.end method

.method public final getConfigFromDb(II)Landroid/os/Bundle;
    .locals 11

    .line 1
    const-string v0, "DUAL_DAR"

    .line 2
    .line 3
    const-string v1, "DualDARPolicy"

    .line 4
    .line 5
    const-string/jumbo v2, "getConfig : DualDAR not enabled for: "

    .line 6
    .line 7
    .line 8
    const-string/jumbo v3, "getConfigFromDb adminId : "

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, " userId : "

    .line 22
    .line 23
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-array v6, v5, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {v1, v3, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 39
    .line 40
    const-string/jumbo v6, "dataLockTimeOut"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, p1, p2, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    invoke-static {p2}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    const-string/jumbo v2, "getConfig : DualDAR at DO case."

    .line 56
    .line 57
    .line 58
    new-array v3, v5, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {v1, v2, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const-string v3, "-1"

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    goto :goto_4

    .line 68
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    new-array p1, v5, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-object v4

    .line 86
    :cond_1
    :goto_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 v6, 0x1

    .line 91
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 92
    .line 93
    const-string/jumbo v8, "deRestriction"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7, p1, p2, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v7
    :try_end_1
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    goto :goto_1

    .line 101
    :catch_1
    :try_start_2
    const-string v7, "Unable to read deRestriction field"

    .line 102
    .line 103
    new-array v8, v5, [Ljava/lang/Object;

    .line 104
    .line 105
    invoke-static {v1, v7, v8}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    move v7, v6

    .line 109
    :goto_1
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARNativeCrypto(I)Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-nez v8, :cond_2

    .line 114
    .line 115
    iget-object v8, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 116
    .line 117
    const-string/jumbo v9, "clientAppPackageName"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8, p1, p2, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    iget-object v9, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 125
    .line 126
    const-string/jumbo v10, "clientAppSignature"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, p1, p2, v0, v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    goto :goto_2

    .line 134
    :cond_2
    const-string v8, ""

    .line 135
    .line 136
    move-object v0, v8

    .line 137
    :goto_2
    :try_start_3
    new-instance v9, Landroid/os/Bundle;

    .line 138
    .line 139
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string/jumbo v10, "dualdar-config-client-package"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string/jumbo v8, "dualdar-config-client-signature"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string/jumbo v0, "dualdar-config-de-restriction"

    .line 155
    .line 156
    .line 157
    if-lez v7, :cond_3

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_3
    move v6, v5

    .line 161
    :goto_3
    invoke-virtual {v9, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    .line 163
    .line 164
    const-string/jumbo v0, "dualdar-config-datalock-timeout"

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 168
    .line 169
    .line 170
    const-string/jumbo v0, "dualdar-config-datalock-whitelistpackages"

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getWhitelistedAppsFromStorage(II)[Lcom/samsung/android/knox/AppIdentity;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {v9, v0, p0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 178
    .line 179
    .line 180
    return-object v9

    .line 181
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string/jumbo p2, "getConfigFromDb has an exception: "

    .line 184
    .line 185
    .line 186
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    new-array p2, v5, [Ljava/lang/Object;

    .line 197
    .line 198
    invoke-static {v1, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    .line 203
    .line 204
    return-object v4
.end method

.method public final getPasswordMinimumLengthForInner(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mInjector:Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string/jumbo v0, "device_policy"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/high16 v0, 0x20000

    .line 20
    .line 21
    if-lt p1, v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getPasswordMinimumLengthForInnerInternal()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public final getPasswordMinimumLengthForInnerInternal()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const-string v0, "DUAL_DAR"

    .line 4
    .line 5
    const-string/jumbo v1, "innerPasswordMinLen"

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-array p0, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v0, "DualDARPolicy"

    .line 22
    .line 23
    const-string v1, "Unable to read field"

    .line 24
    .line 25
    invoke-static {v0, v1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return v2

    .line 29
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public final getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "device_policy"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, "DualDARPolicy"

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string p0, "Couldn\'t access service"

    .line 19
    .line 20
    new-array p1, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getPasswordMinimumLengthForInnerInternal()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    const-string p0, "Failed to dpm.getPasswordMinimumMetrics()"

    .line 44
    .line 45
    new-array p1, v2, [Ljava/lang/Object;

    .line 46
    .line 47
    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_1
    const/4 v0, 0x4

    .line 52
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    const/16 v0, 0x100

    .line 57
    .line 58
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    iput p0, p1, Landroid/app/admin/PasswordMetrics;->length:I

    .line 63
    .line 64
    return-object p1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public final getWhitelistedAppsFromStorage(II)[Lcom/samsung/android/knox/AppIdentity;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2
    .line 3
    const-string/jumbo v1, "whiteListPkgsForDataLockState"

    .line 4
    .line 5
    .line 6
    const-string v2, "DUAL_DAR"

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v3, ", "

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-lez v4, :cond_0

    .line 26
    .line 27
    new-instance v4, Ljava/util/StringTokenizer;

    .line 28
    .line 29
    invoke-direct {v4, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 51
    .line 52
    const-string/jumbo v0, "whiteListPkgSignaturesForDataLockState"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    if-eqz p0, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-lez p2, :cond_2

    .line 71
    .line 72
    new-instance p2, Ljava/util/StringTokenizer;

    .line 73
    .line 74
    invoke-direct {p2, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_2

    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const-string v0, "-"

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_1

    .line 98
    .line 99
    const-string p0, ""

    .line 100
    .line 101
    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    const/4 p2, 0x0

    .line 111
    move v0, p2

    .line 112
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-ge v0, v2, :cond_3

    .line 117
    .line 118
    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    check-cast v4, Ljava/lang/String;

    .line 131
    .line 132
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    add-int/lit8 v0, v0, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    new-array p1, p2, [Lcom/samsung/android/knox/AppIdentity;

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    check-cast p0, [Lcom/samsung/android/knox/AppIdentity;

    .line 148
    .line 149
    return-object p0
.end method

.method public final isActivePasswordSufficientForInner(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDAROnDOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6
    .line 7
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 18
    .line 19
    const-string v1, "DualDARPolicy"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 29
    .line 30
    invoke-virtual {v5, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockSettingsInternal;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 48
    .line 49
    const-string v3, "Couldn\'t access service"

    .line 50
    .line 51
    invoke-static {v1, v3, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    if-nez p0, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-static {p0, v2, v0}, Landroid/app/admin/PasswordMetrics;->validatePasswordMetrics(Landroid/app/admin/PasswordMetrics;ILandroid/app/admin/PasswordMetrics;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    xor-int/lit8 v0, p1, 0x1

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v3, "Password validation errors: "

    .line 79
    .line 80
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    new-array v0, v2, [Ljava/lang/Object;

    .line 91
    .line 92
    invoke-static {v1, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    return p1

    .line 96
    :cond_3
    :goto_1
    const-string p0, "Invalid metrics"

    .line 97
    .line 98
    new-array p1, v2, [Ljava/lang/Object;

    .line 99
    .line 100
    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return v2
.end method

.method public final isResetPasswordTokenActiveForInner(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDAROnDOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6
    .line 7
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-gez p1, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isResetPasswordTokenActive(I)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final refreshConfig(II)V
    .locals 4

    .line 1
    const-string/jumbo v0, "refreshConfig adminId : "

    .line 2
    .line 3
    .line 4
    const-string v1, ", userId : "

    .line 5
    .line 6
    invoke-static {p1, p2, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v2, v1, [Ljava/lang/Object;

    .line 12
    .line 13
    const-string v3, "DualDARPolicy"

    .line 14
    .line 15
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfigFromDb(II)Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string/jumbo v0, "refreshConfig cache"

    .line 25
    .line 26
    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {v3, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    .line 33
    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p0, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final resetPasswordWithTokenForInner(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDAROnDOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "resetPasswordWithTokenForInner: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v2, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    const-string v3, "DualDARPolicy"

    .line 26
    .line 27
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 31
    .line 32
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    iget-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 37
    .line 38
    invoke-virtual {p1, v6}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    if-gez v9, :cond_0

    .line 43
    .line 44
    const-string/jumbo p0, "resetPasswordWithTokenForInner: Invalid inner auth user : "

    .line 45
    .line 46
    .line 47
    invoke-static {v9, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    new-array p1, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return v1

    .line 57
    :cond_0
    new-instance p1, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;

    .line 58
    .line 59
    move-object v4, p1

    .line 60
    move-object v5, p0

    .line 61
    move-object v7, p2

    .line 62
    move-object v8, p3

    .line 63
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/dualdar/DualDARPolicy;ILjava/lang/String;[BI)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    return p0
.end method

.method public final setClientInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "setClientInfo called, clientPkgName: "

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const-string v3, "DualDARPolicy"

    .line 12
    .line 13
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Landroid/content/ContentValues;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 23
    .line 24
    .line 25
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 26
    .line 27
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARNativeCrypto(I)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const-string v4, "DUAL_DAR"

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    if-eqz p2, :cond_1

    .line 36
    .line 37
    const-string/jumbo v2, "setClientInfo called, pkgName not null"

    .line 38
    .line 39
    .line 40
    new-array v5, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-static {v3, v2, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v2, "clientAppPackageName"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    if-eqz p3, :cond_0

    .line 52
    .line 53
    const-string/jumbo v2, "setClientInfo called, pkgSignature not null"

    .line 54
    .line 55
    .line 56
    new-array v5, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-static {v3, v2, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const-string/jumbo v2, "clientAppSignature"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string/jumbo v2, "setClientInfo CallerUid : "

    .line 70
    .line 71
    .line 72
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 76
    .line 77
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v2, ", ContainerId = "

    .line 81
    .line 82
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 86
    .line 87
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    new-array v2, v1, [Ljava/lang/Object;

    .line 95
    .line 96
    invoke-static {v3, p3, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object p3, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 100
    .line 101
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 102
    .line 103
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 104
    .line 105
    invoke-virtual {p3, v2, v5, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    const/4 p3, 0x1

    .line 111
    :goto_0
    if-eqz p3, :cond_3

    .line 112
    .line 113
    const-string p3, "Add client app and PO pkgs to whitelist"

    .line 114
    .line 115
    new-array v0, v1, [Ljava/lang/Object;

    .line 116
    .line 117
    invoke-static {v3, p3, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    new-instance p3, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    new-instance v0, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getClientAndProfileOwnerApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string/jumbo v2, "setDefaultWhitelistedApps called, whitelistAppCount: "

    .line 136
    .line 137
    .line 138
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    new-array v2, v1, [Ljava/lang/Object;

    .line 153
    .line 154
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    new-instance v0, Landroid/content/ContentValues;

    .line 158
    .line 159
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string/jumbo v2, "whiteListPkgsForDataLockState"

    .line 163
    .line 164
    .line 165
    invoke-static {p3}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flattenPackages(Ljava/util/List;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const-string/jumbo v2, "whiteListPkgSignaturesForDataLockState"

    .line 173
    .line 174
    .line 175
    invoke-static {p3}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flattenSignatures(Ljava/util/List;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object p3, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 183
    .line 184
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 185
    .line 186
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 187
    .line 188
    invoke-virtual {p3, v2, v5, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 189
    .line 190
    .line 191
    move-result p3

    .line 192
    if-eqz p3, :cond_2

    .line 193
    .line 194
    const-string/jumbo p3, "successfully added whitelist packages"

    .line 195
    .line 196
    .line 197
    new-array v0, v1, [Ljava/lang/Object;

    .line 198
    .line 199
    invoke-static {v3, p3, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_2
    const-string/jumbo p3, "failed to write new whitelist packages to persistent storage"

    .line 204
    .line 205
    .line 206
    new-array v0, v1, [Ljava/lang/Object;

    .line 207
    .line 208
    invoke-static {v3, p3, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v0, "Force refresh the in-memory cache, callerUid = "

    .line 214
    .line 215
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 219
    .line 220
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v0, ", mContainerId = "

    .line 224
    .line 225
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 229
    .line 230
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p3

    .line 237
    new-array v0, v1, [Ljava/lang/Object;

    .line 238
    .line 239
    invoke-static {v3, p3, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    iget p3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 243
    .line 244
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 245
    .line 246
    invoke-virtual {p0, p3, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->refreshConfig(II)V

    .line 247
    .line 248
    .line 249
    :cond_3
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 250
    .line 251
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARNativeCrypto(I)Z

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    if-eqz p0, :cond_5

    .line 256
    .line 257
    invoke-static {}, Lcom/samsung/android/knox/ddar/DualDARPolicy;->getDualDARVersion()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    if-nez p0, :cond_4

    .line 262
    .line 263
    const-string p0, ""

    .line 264
    .line 265
    :cond_4
    move-object p4, p0

    .line 266
    const-string p2, "Samsung"

    .line 267
    .line 268
    :cond_5
    const-string p0, "Final Logging Crypto: pkg Name :"

    .line 269
    .line 270
    const-string p3, ", clientVersion: "

    .line 271
    .line 272
    invoke-static {p0, p2, p3, p4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    new-array p3, v1, [Ljava/lang/Object;

    .line 277
    .line 278
    const-string v0, "DualDARPolicy:DualDARAnalytics"

    .line 279
    .line 280
    invoke-static {v0, p0, p3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    const-string p0, "Admin created DualDAR with Third Party client package: "

    .line 288
    .line 289
    const-string p3, ", client library version: "

    .line 290
    .line 291
    invoke-static {p0, p2, p3, p4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 296
    .line 297
    const/4 v3, 0x1

    .line 298
    const-string v5, "DualDARPolicy"

    .line 299
    .line 300
    const/4 v1, 0x5

    .line 301
    const/4 v2, 0x1

    .line 302
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 303
    .line 304
    .line 305
    return-void
.end method

.method public final setConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    iget v0, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 10
    .line 11
    const-string/jumbo v4, "setConfig : callingUid : "

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v4, 0x0

    .line 19
    new-array v5, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v6, "DualDARPolicy"

    .line 22
    .line 23
    invoke-static {v6, v0, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget v0, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 27
    .line 28
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v5, -0x1

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string/jumbo v1, "setConfig : DualDAR not enabled for: "

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v1, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-array v1, v4, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static {v6, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return v5

    .line 58
    :cond_0
    const-string/jumbo v0, "dualdar-config-datalock-whitelistpackages"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    const-string v8, "DUAL_DAR"

    .line 66
    .line 67
    if-eqz v7, :cond_a

    .line 68
    .line 69
    new-instance v7, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v9, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v10, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    new-instance v11, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v3, v10, v11}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getClientAndProfileOwnerApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    array-length v12, v0

    .line 99
    if-lez v12, :cond_3

    .line 100
    .line 101
    move v12, v4

    .line 102
    :goto_0
    array-length v13, v0

    .line 103
    if-ge v12, v13, :cond_3

    .line 104
    .line 105
    aget-object v13, v0, v12

    .line 106
    .line 107
    check-cast v13, Lcom/samsung/android/knox/AppIdentity;

    .line 108
    .line 109
    if-eqz v13, :cond_2

    .line 110
    .line 111
    invoke-virtual {v13}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v14

    .line 115
    if-eqz v14, :cond_2

    .line 116
    .line 117
    invoke-virtual {v13}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v14

    .line 121
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    if-nez v14, :cond_1

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_1
    invoke-virtual {v13}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v14

    .line 132
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v14

    .line 136
    if-nez v14, :cond_2

    .line 137
    .line 138
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    invoke-virtual {v13}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v13

    .line 145
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_3
    iget v0, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 152
    .line 153
    iget v12, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 154
    .line 155
    invoke-virtual {v1, v0, v12}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getWhitelistedAppsFromStorage(II)[Lcom/samsung/android/knox/AppIdentity;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 160
    .line 161
    .line 162
    move-result-wide v13

    .line 163
    if-eqz v12, :cond_7

    .line 164
    .line 165
    array-length v0, v12

    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    array-length v15, v12

    .line 169
    move v5, v4

    .line 170
    :goto_2
    if-ge v5, v15, :cond_7

    .line 171
    .line 172
    aget-object v16, v12, v5

    .line 173
    .line 174
    iget v4, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 175
    .line 176
    move-object/from16 v17, v12

    .line 177
    .line 178
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 183
    .line 184
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const-wide/16 v1, 0x80

    .line 189
    .line 190
    invoke-interface {v0, v12, v1, v2, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    if-nez v0, :cond_4

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_4
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 199
    and-int/lit16 v0, v0, 0x81

    .line 200
    .line 201
    if-eqz v0, :cond_5

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v2, "Unable to check is System App for: "

    .line 208
    .line 209
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v2, " in user: "

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    const-string v2, "PersonaServiceHelper"

    .line 228
    .line 229
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    .line 234
    .line 235
    :cond_5
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-nez v0, :cond_6

    .line 244
    .line 245
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-nez v0, :cond_6

    .line 254
    .line 255
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    iget v2, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 264
    .line 265
    const/4 v4, 0x0

    .line 266
    const/4 v12, 0x0

    .line 267
    invoke-interface {v0, v1, v12, v4, v2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    .line 269
    .line 270
    goto :goto_4

    .line 271
    :catch_1
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    .line 274
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string v1, "Exception in clearing user data for: "

    .line 278
    .line 279
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v1, " installed in: "

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    iget v1, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    const/4 v1, 0x0

    .line 304
    new-array v2, v1, [Ljava/lang/Object;

    .line 305
    .line 306
    invoke-static {v6, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 310
    .line 311
    move-object/from16 v1, p0

    .line 312
    .line 313
    move-object/from16 v2, p2

    .line 314
    .line 315
    move-object/from16 v12, v17

    .line 316
    .line 317
    const/4 v4, 0x0

    .line 318
    goto/16 :goto_2

    .line 319
    .line 320
    :cond_7
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 324
    .line 325
    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    const-string/jumbo v1, "setWhitelistPackagesForDataLockedState called, whitelistAppCount: "

    .line 329
    .line 330
    .line 331
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    const/4 v1, 0x0

    .line 346
    new-array v2, v1, [Ljava/lang/Object;

    .line 347
    .line 348
    invoke-static {v6, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    new-instance v0, Landroid/content/ContentValues;

    .line 352
    .line 353
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 354
    .line 355
    .line 356
    const-string/jumbo v1, "whiteListPkgsForDataLockState"

    .line 357
    .line 358
    .line 359
    invoke-static {v7}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flattenPackages(Ljava/util/List;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string/jumbo v1, "whiteListPkgSignaturesForDataLockState"

    .line 367
    .line 368
    .line 369
    invoke-static {v7}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flattenSignatures(Ljava/util/List;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    move-object/from16 v1, p0

    .line 377
    .line 378
    iget-object v2, v1, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 379
    .line 380
    iget v4, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 381
    .line 382
    iget v5, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 383
    .line 384
    invoke-virtual {v2, v4, v5, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-eqz v0, :cond_8

    .line 389
    .line 390
    const-string/jumbo v2, "successfully changed whitelist packages for datalock state"

    .line 391
    .line 392
    .line 393
    const/4 v4, 0x0

    .line 394
    new-array v5, v4, [Ljava/lang/Object;

    .line 395
    .line 396
    invoke-static {v6, v2, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    const-string/jumbo v2, "whitelisted_apps"

    .line 400
    .line 401
    .line 402
    move-object/from16 v5, p2

    .line 403
    .line 404
    invoke-static {v3, v5, v2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->logDualDarAnalytics(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto :goto_5

    .line 408
    :cond_8
    move-object/from16 v5, p2

    .line 409
    .line 410
    const/4 v4, 0x0

    .line 411
    const-string/jumbo v2, "failed to write new whitelist packages to persistent storage"

    .line 412
    .line 413
    .line 414
    new-array v7, v4, [Ljava/lang/Object;

    .line 415
    .line 416
    invoke-static {v6, v2, v7}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    :goto_5
    if-eqz v0, :cond_9

    .line 420
    .line 421
    const/4 v0, 0x0

    .line 422
    goto :goto_6

    .line 423
    :cond_9
    const/4 v0, -0x2

    .line 424
    :goto_6
    move v12, v0

    .line 425
    goto :goto_7

    .line 426
    :cond_a
    move-object v5, v2

    .line 427
    const/4 v12, 0x0

    .line 428
    :goto_7
    const-string/jumbo v0, "dualdar-config-datalock-timeout"

    .line 429
    .line 430
    .line 431
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    const-string v4, ""

    .line 436
    .line 437
    if-eqz v2, :cond_11

    .line 438
    .line 439
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 440
    .line 441
    .line 442
    move-result-wide v9

    .line 443
    iget v2, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 444
    .line 445
    invoke-static {v2}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    .line 446
    .line 447
    .line 448
    move-result v2

    .line 449
    if-eqz v2, :cond_b

    .line 450
    .line 451
    const-wide/32 v13, 0x493e0

    .line 452
    .line 453
    .line 454
    goto :goto_8

    .line 455
    :cond_b
    const-wide/32 v13, 0xea60

    .line 456
    .line 457
    .line 458
    :goto_8
    const-string/jumbo v2, "setDataLockTimeout called, dataLockTimeout: "

    .line 459
    .line 460
    .line 461
    invoke-static {v9, v10, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    const/4 v7, 0x0

    .line 466
    new-array v11, v7, [Ljava/lang/Object;

    .line 467
    .line 468
    invoke-static {v6, v2, v11}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    cmp-long v2, v9, v13

    .line 472
    .line 473
    if-ltz v2, :cond_c

    .line 474
    .line 475
    const-wide v15, 0x7fffffffffffffffL

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    cmp-long v2, v9, v15

    .line 481
    .line 482
    if-ltz v2, :cond_d

    .line 483
    .line 484
    :cond_c
    const-wide/16 v15, -0x1

    .line 485
    .line 486
    cmp-long v2, v9, v15

    .line 487
    .line 488
    if-nez v2, :cond_10

    .line 489
    .line 490
    :cond_d
    new-instance v2, Landroid/content/ContentValues;

    .line 491
    .line 492
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 493
    .line 494
    .line 495
    new-instance v7, Ljava/lang/StringBuilder;

    .line 496
    .line 497
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v7

    .line 507
    const-string/jumbo v9, "dataLockTimeOut"

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    iget-object v7, v1, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 514
    .line 515
    iget v9, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 516
    .line 517
    iget v10, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 518
    .line 519
    invoke-virtual {v7, v9, v10, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 520
    .line 521
    .line 522
    move-result v2

    .line 523
    if-eqz v2, :cond_e

    .line 524
    .line 525
    const-string/jumbo v7, "successfully changed datalock timeout"

    .line 526
    .line 527
    .line 528
    const/4 v9, 0x0

    .line 529
    new-array v10, v9, [Ljava/lang/Object;

    .line 530
    .line 531
    invoke-static {v6, v7, v10}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    const-string/jumbo v7, "datalock_timeout"

    .line 535
    .line 536
    .line 537
    invoke-static {v3, v5, v7}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->logDualDarAnalytics(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    goto :goto_9

    .line 541
    :cond_e
    const/4 v9, 0x0

    .line 542
    const-string/jumbo v7, "failed to write new datalock timeout to persistent storage"

    .line 543
    .line 544
    .line 545
    new-array v10, v9, [Ljava/lang/Object;

    .line 546
    .line 547
    invoke-static {v6, v7, v10}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    .line 549
    .line 550
    :goto_9
    if-eqz v2, :cond_f

    .line 551
    .line 552
    goto :goto_b

    .line 553
    :cond_f
    :goto_a
    const/4 v2, -0x1

    .line 554
    goto :goto_c

    .line 555
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    const-string/jumbo v7, "setDataLockTimeout Invalid datalock timeout. It should be in range ["

    .line 558
    .line 559
    .line 560
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    const-string v7, ", 9223372036854775807] ms"

    .line 567
    .line 568
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    const/4 v7, 0x0

    .line 576
    new-array v9, v7, [Ljava/lang/Object;

    .line 577
    .line 578
    invoke-static {v6, v2, v9}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    goto :goto_a

    .line 582
    :cond_11
    :goto_b
    const/4 v2, 0x0

    .line 583
    :goto_c
    const-string/jumbo v7, "dualdar-config-de-restriction"

    .line 584
    .line 585
    .line 586
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 587
    .line 588
    .line 589
    move-result v9

    .line 590
    if-eqz v9, :cond_14

    .line 591
    .line 592
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 593
    .line 594
    .line 595
    move-result v9

    .line 596
    new-instance v10, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    const-string/jumbo v11, "setDeRestriction called, deRestriction: "

    .line 599
    .line 600
    .line 601
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v10

    .line 611
    const/4 v11, 0x0

    .line 612
    new-array v13, v11, [Ljava/lang/Object;

    .line 613
    .line 614
    invoke-static {v6, v10, v13}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    new-instance v10, Landroid/content/ContentValues;

    .line 618
    .line 619
    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 620
    .line 621
    .line 622
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 623
    .line 624
    .line 625
    move-result-object v9

    .line 626
    const-string/jumbo v11, "deRestriction"

    .line 627
    .line 628
    .line 629
    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 630
    .line 631
    .line 632
    iget-object v9, v1, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 633
    .line 634
    iget v11, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 635
    .line 636
    iget v13, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 637
    .line 638
    invoke-virtual {v9, v11, v13, v8, v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 639
    .line 640
    .line 641
    move-result v8

    .line 642
    if-eqz v8, :cond_12

    .line 643
    .line 644
    const-string v9, "Successfully changed DE restriction config"

    .line 645
    .line 646
    const/4 v10, 0x0

    .line 647
    new-array v11, v10, [Ljava/lang/Object;

    .line 648
    .line 649
    invoke-static {v6, v9, v11}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    .line 651
    .line 652
    const-string/jumbo v6, "de_access_restriction"

    .line 653
    .line 654
    .line 655
    invoke-static {v3, v5, v6}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->logDualDarAnalytics(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    goto :goto_d

    .line 659
    :cond_12
    const/4 v10, 0x0

    .line 660
    const-string v9, "Failed to write new DE restriction config"

    .line 661
    .line 662
    new-array v11, v10, [Ljava/lang/Object;

    .line 663
    .line 664
    invoke-static {v6, v9, v11}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    .line 666
    .line 667
    :goto_d
    if-eqz v8, :cond_13

    .line 668
    .line 669
    goto :goto_e

    .line 670
    :cond_13
    const/4 v6, -0x3

    .line 671
    goto :goto_f

    .line 672
    :cond_14
    :goto_e
    const/4 v6, 0x0

    .line 673
    :goto_f
    if-eqz v12, :cond_15

    .line 674
    .line 675
    if-eqz v2, :cond_15

    .line 676
    .line 677
    if-nez v6, :cond_16

    .line 678
    .line 679
    :cond_15
    iget v8, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 680
    .line 681
    iget-object v9, v1, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 682
    .line 683
    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 684
    .line 685
    .line 686
    move-result v9

    .line 687
    invoke-virtual {v1, v9, v8}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->refreshConfig(II)V

    .line 688
    .line 689
    .line 690
    :cond_16
    iget v1, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 691
    .line 692
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 693
    .line 694
    .line 695
    invoke-static {v1}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARType(I)I

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getWhitelistPkgesFromConfig(Landroid/os/Bundle;)Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v8

    .line 703
    const-string v9, "Admin created DualDAR with configuration, Type : "

    .line 704
    .line 705
    const-string v10, ",  Version: "

    .line 706
    .line 707
    invoke-static {v3, v9, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    move-result-object v9

    .line 711
    invoke-static {}, Lcom/samsung/android/knox/ddar/DualDARPolicy;->getDualDARVersion()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v10

    .line 715
    if-nez v10, :cond_17

    .line 716
    .line 717
    move-object v10, v4

    .line 718
    :cond_17
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    const-string v10, ",  Lock Timeout :"

    .line 722
    .line 723
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 727
    .line 728
    .line 729
    move-result-wide v10

    .line 730
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    const-string v10, ",  Device Encryption storage access restriction: "

    .line 734
    .line 735
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 739
    .line 740
    .line 741
    move-result v10

    .line 742
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    const-string v10, ",  Whitelisted Packages: "

    .line 746
    .line 747
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v9

    .line 757
    const/4 v10, 0x0

    .line 758
    new-array v11, v10, [Ljava/lang/Object;

    .line 759
    .line 760
    const-string v13, "DualDARPolicy:DualDARAnalytics"

    .line 761
    .line 762
    invoke-static {v13, v9, v11}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    .line 764
    .line 765
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 766
    .line 767
    .line 768
    move-result v20

    .line 769
    invoke-static {}, Lcom/samsung/android/knox/ddar/DualDARPolicy;->getDualDARVersion()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v9

    .line 773
    if-nez v9, :cond_18

    .line 774
    .line 775
    goto :goto_10

    .line 776
    :cond_18
    move-object v4, v9

    .line 777
    :goto_10
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 778
    .line 779
    .line 780
    move-result-wide v13

    .line 781
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 782
    .line 783
    .line 784
    move-result v0

    .line 785
    const-string v5, "Admin created DualDAR with configuration, Type: "

    .line 786
    .line 787
    const-string v7, ", Version: "

    .line 788
    .line 789
    const-string v9, ", Lock Timeout: "

    .line 790
    .line 791
    invoke-static {v3, v5, v7, v4, v9}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    .line 793
    .line 794
    move-result-object v3

    .line 795
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    const-string v4, ", Device Encryption storage access restriction: "

    .line 799
    .line 800
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    const-string v0, ", Allowlisted Packages: "

    .line 807
    .line 808
    invoke-static {v3, v0, v8}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v22

    .line 812
    const/16 v17, 0x5

    .line 813
    .line 814
    const/16 v18, 0x1

    .line 815
    .line 816
    const/16 v19, 0x1

    .line 817
    .line 818
    const-string v21, "DualDARPolicy"

    .line 819
    .line 820
    move/from16 v23, v1

    .line 821
    .line 822
    invoke-static/range {v17 .. v23}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 823
    .line 824
    .line 825
    if-nez v12, :cond_19

    .line 826
    .line 827
    if-nez v2, :cond_19

    .line 828
    .line 829
    if-nez v6, :cond_19

    .line 830
    .line 831
    move v4, v10

    .line 832
    goto :goto_11

    .line 833
    :cond_19
    if-eqz v12, :cond_1a

    .line 834
    .line 835
    move v4, v12

    .line 836
    goto :goto_11

    .line 837
    :cond_1a
    if-eqz v2, :cond_1b

    .line 838
    .line 839
    move v4, v2

    .line 840
    goto :goto_11

    .line 841
    :cond_1b
    move v4, v6

    .line 842
    :goto_11
    return v4
.end method

.method public final setPasswordMinimumLengthForInner(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDAROnDOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mInjector:Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string/jumbo v1, "device_policy"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/high16 v1, 0x20000

    .line 24
    .line 25
    if-lt v0, v1, :cond_0

    .line 26
    .line 27
    new-instance v0, Landroid/content/ContentValues;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const-string/jumbo v1, "innerPasswordMinLen"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 43
    .line 44
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 45
    .line 46
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 47
    .line 48
    const-string v1, "DUAL_DAR"

    .line 49
    .line 50
    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    return p0

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string/jumbo p2, "password quality should be at least %d for setPasswordMinimumLengthForInner"

    .line 66
    .line 67
    .line 68
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0
.end method

.method public final setResetPasswordTokenForInner(Lcom/samsung/android/knox/ContextInfo;[B)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDAROnDOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "setResetPasswordTokenForInner: "

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v2, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    const-string v3, "DualDARPolicy"

    .line 26
    .line 27
    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 31
    .line 32
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-gez p1, :cond_0

    .line 43
    .line 44
    return v1

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    .line 46
    .line 47
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->setResetPasswordToken([BI)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    .line 4
    return-void
.end method
