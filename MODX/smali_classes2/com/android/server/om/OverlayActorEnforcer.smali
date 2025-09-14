.class public final Lcom/android/server/om/OverlayActorEnforcer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 5
    .line 6
    return-void
.end method

.method public static getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string/jumbo v2, "overlay"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eq v0, v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->NO_NAMED_ACTORS:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 38
    .line 39
    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Ljava/util/Map;

    .line 53
    .line 54
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_NAMESPACE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 61
    .line 62
    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_2
    const/4 p1, 0x0

    .line 68
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 87
    .line 88
    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_3
    sget-object p1, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 94
    .line 95
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_4
    :goto_0
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->INVALID_OVERLAYABLE_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 101
    .line 102
    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0
.end method


# virtual methods
.method public isAllowedActor(Ljava/lang/String;Landroid/content/om/OverlayInfo;II)Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 2
    .line 3
    if-eqz p3, :cond_f

    .line 4
    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq p3, v1, :cond_f

    .line 8
    .line 9
    iget-object v1, p2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 12
    .line 13
    invoke-virtual {p0, p4, v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageStateForUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    move-object v2, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :goto_0
    if-nez v2, :cond_1

    .line 27
    .line 28
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->TARGET_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isDebuggable()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 39
    .line 40
    invoke-interface {v2, p3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-eqz p3, :cond_3

    .line 49
    .line 50
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->NO_PACKAGES_FOR_UID:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_3
    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-eqz p3, :cond_4

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_4
    iget-object p2, p2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    sget-object v2, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_LEGACY_PERMISSION:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 67
    .line 68
    const-string v4, "android.permission.CHANGE_OVERLAY_PACKAGES"

    .line 69
    .line 70
    if-eqz p3, :cond_6

    .line 71
    .line 72
    :try_start_1
    invoke-virtual {p0, p4, v1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->doesTargetDefineOverlayable(ILjava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-eqz p2, :cond_5

    .line 77
    .line 78
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_TARGET_OVERLAYABLE_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_5
    :try_start_2
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {p0, v4, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 84
    .line 85
    .line 86
    return-object v0

    .line 87
    :catch_1
    return-object v2

    .line 88
    :catch_2
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ERROR_READING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 89
    .line 90
    return-object p0

    .line 91
    :cond_6
    :try_start_3
    invoke-virtual {p0, p4, v1, p2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getOverlayableForTarget(ILjava/lang/String;Ljava/lang/String;)Landroid/content/om/OverlayableInfo;

    .line 92
    .line 93
    .line 94
    move-result-object p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 95
    if-nez p2, :cond_7

    .line 96
    .line 97
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 98
    .line 99
    return-object p0

    .line 100
    :cond_7
    iget-object p2, p2, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result p3

    .line 106
    if-eqz p3, :cond_8

    .line 107
    .line 108
    :try_start_4
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {p0, v4, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    .line 111
    .line 112
    .line 113
    return-object v0

    .line 114
    :catch_3
    return-object v2

    .line 115
    :cond_8
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget-object p1, p1, Lcom/android/server/SystemConfig;->mNamedActors:Ljava/util/Map;

    .line 120
    .line 121
    if-eqz p1, :cond_9

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    :goto_1
    invoke-static {p2, p1}, Lcom/android/server/om/OverlayActorEnforcer;->getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p2, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 135
    .line 136
    if-eq p2, v0, :cond_a

    .line 137
    .line 138
    return-object p2

    .line 139
    :cond_a
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p1, Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p0, p4, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageStateForUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    if-eqz p0, :cond_e

    .line 148
    .line 149
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    if-nez p2, :cond_b

    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_b
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-nez p0, :cond_c

    .line 161
    .line 162
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ACTOR_NOT_PREINSTALLED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 163
    .line 164
    return-object p0

    .line 165
    :cond_c
    invoke-static {v3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-eqz p0, :cond_d

    .line 170
    .line 171
    return-object v0

    .line 172
    :cond_d
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->INVALID_ACTOR:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 173
    .line 174
    return-object p0

    .line 175
    :cond_e
    :goto_2
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ACTOR_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 176
    .line 177
    return-object p0

    .line 178
    :catch_4
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->UNABLE_TO_GET_TARGET_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 179
    .line 180
    return-object p0

    .line 181
    :cond_f
    return-object v0
.end method
