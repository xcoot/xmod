.class public final Lcom/android/server/om/IdmapManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final VENDOR_IS_Q_OR_LATER:Z


# instance fields
.field public final mConfigSignaturePackage:Ljava/lang/String;

.field public final mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

.field public final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "ro.vndk.version"

    .line 2
    .line 3
    .line 4
    const-string v1, "29"

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    const/16 v2, 0x1d

    .line 16
    .line 17
    if-lt v0, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :catch_0
    :goto_0
    sput-boolean v1, Lcom/android/server/om/IdmapManager;->VENDOR_IS_Q_OR_LATER:Z

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 7
    .line 8
    iget-object p1, p2, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 9
    .line 10
    const/16 p2, 0xd

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    array-length p2, p1

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    aget-object p1, p1, v0

    .line 23
    .line 24
    :goto_0
    iput-object p1, p0, Lcom/android/server/om/IdmapManager;->mConfigSignaturePackage:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final calculateFulfilledPolicies(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;I)I
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/server/om/IdmapManager;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v3, v2, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 15
    .line 16
    invoke-interface {v3, v0, v1, p4}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/16 v0, 0x11

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    :cond_0
    const/4 v0, 0x1

    .line 26
    :goto_0
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTargetOverlayableName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v3, v3, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :goto_1
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    :try_start_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v2, p4, p1, v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getOverlayableForTarget(ILjava/lang/String;Ljava/lang/String;)Landroid/content/om/OverlayableInfo;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p1, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v1, v1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :goto_2
    invoke-static {p1, v1}, Lcom/android/server/om/OverlayActorEnforcer;->getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Ljava/lang/String;

    .line 85
    .line 86
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    :try_start_2
    iget-object v3, v2, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 91
    .line 92
    invoke-interface {v3, p1, v1, p4}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 96
    if-nez p1, :cond_3

    .line 97
    .line 98
    or-int/lit16 v0, v0, 0x80

    .line 99
    .line 100
    :catch_1
    :cond_3
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mConfigSignaturePackage:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_4

    .line 107
    .line 108
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    :try_start_3
    iget-object p3, v2, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 113
    .line 114
    invoke-interface {p3, p0, p1, p4}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    .line 115
    .line 116
    .line 117
    move-result p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 118
    if-nez p0, :cond_4

    .line 119
    .line 120
    or-int/lit16 v0, v0, 0x100

    .line 121
    .line 122
    :catch_2
    :cond_4
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_5

    .line 127
    .line 128
    or-int/lit8 p0, v0, 0x4

    .line 129
    .line 130
    return p0

    .line 131
    :cond_5
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-eqz p0, :cond_6

    .line 136
    .line 137
    or-int/lit8 p0, v0, 0x8

    .line 138
    .line 139
    return p0

    .line 140
    :cond_6
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    if-eqz p0, :cond_7

    .line 145
    .line 146
    or-int/lit8 p0, v0, 0x20

    .line 147
    .line 148
    return p0

    .line 149
    :cond_7
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isOem()Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-eqz p0, :cond_8

    .line 154
    .line 155
    or-int/lit8 p0, v0, 0x40

    .line 156
    .line 157
    return p0

    .line 158
    :cond_8
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    if-nez p0, :cond_a

    .line 163
    .line 164
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    if-eqz p0, :cond_9

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_9
    return v0

    .line 172
    :cond_a
    :goto_3
    or-int/lit8 p0, v0, 0x2

    .line 173
    .line 174
    return p0
.end method

.method public final getFabricatedOverlayInfos()Ljava/util/List;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/om/IdmapDaemon;->connect()Lcom/android/server/om/IdmapDaemon$Connection;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, v2, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    const-string v3, "OverlayManager"

    .line 20
    .line 21
    const-string v4, "idmap2d service is not ready for getFabricatedOverlayInfos()"

    .line 22
    .line 23
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    .line 32
    .line 33
    monitor-exit p0

    .line 34
    goto :goto_2

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_4

    .line 37
    :catchall_1
    move-exception v0

    .line 38
    move v4, v1

    .line 39
    goto :goto_3

    .line 40
    :catch_0
    move-exception v3

    .line 41
    move v4, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :try_start_3
    invoke-interface {v3}, Landroid/os/IIdmap2;->acquireFabricatedOverlayIterator()I

    .line 44
    .line 45
    .line 46
    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    :goto_0
    :try_start_4
    invoke-interface {v3, v4}, Landroid/os/IIdmap2;->nextFabricatedOverlayInfos(I)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v6, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_2
    move-exception v0

    .line 62
    goto :goto_3

    .line 63
    :catch_1
    move-exception v3

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :try_start_5
    iget-object v3, v2, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    .line 66
    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    if-eq v4, v1, :cond_2

    .line 70
    .line 71
    invoke-interface {v3, v4}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 72
    .line 73
    .line 74
    :catch_2
    :cond_2
    :try_start_6
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 75
    .line 76
    .line 77
    monitor-exit p0

    .line 78
    goto :goto_2

    .line 79
    :goto_1
    :try_start_7
    const-string v5, "OverlayManager"

    .line 80
    .line 81
    const-string v6, "failed to get all fabricated overlays"

    .line 82
    .line 83
    invoke-static {v5, v6, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 84
    .line 85
    .line 86
    :try_start_8
    iget-object v3, v2, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    .line 87
    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    if-eq v4, v1, :cond_3

    .line 91
    .line 92
    invoke-interface {v3, v4}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 93
    .line 94
    .line 95
    :catch_3
    :cond_3
    :try_start_9
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 96
    .line 97
    .line 98
    monitor-exit p0

    .line 99
    :goto_2
    return-object v0

    .line 100
    :goto_3
    :try_start_a
    iget-object v3, v2, Lcom/android/server/om/IdmapDaemon$Connection;->mIdmap2:Landroid/os/IIdmap2;

    .line 101
    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    if-eq v4, v1, :cond_4

    .line 105
    .line 106
    invoke-interface {v3, v4}, Landroid/os/IIdmap2;->releaseFabricatedOverlayIterator(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 107
    .line 108
    .line 109
    :catch_4
    :cond_4
    :try_start_b
    invoke-virtual {v2}, Lcom/android/server/om/IdmapDaemon$Connection;->close()V

    .line 110
    .line 111
    .line 112
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 113
    :goto_4
    monitor-exit p0

    .line 114
    throw v0
.end method

.method public final removeIdmap(Landroid/content/om/OverlayInfo;I)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "remove idmap for "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "OverlayManager"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/IdmapManager;->mIdmapDaemon:Lcom/android/server/om/IdmapDaemon;

    .line 17
    .line 18
    iget-object v0, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, p2, v0}, Lcom/android/server/om/IdmapDaemon;->removeIdmap(ILjava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v0, "failed to remove idmap for "

    .line 29
    .line 30
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return p0
.end method
