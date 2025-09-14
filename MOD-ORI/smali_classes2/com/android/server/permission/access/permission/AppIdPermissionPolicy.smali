.class public final Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
.super Lcom/android/server/permission/access/SchemePolicy;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NEARBY_DEVICES_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

.field public static final NOTIFICATIONS_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

.field public static final NO_IMPLICIT_FLAG_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

.field public static final STORAGE_AND_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;


# instance fields
.field public volatile isSignaturePermissionAllowlistForceEnforced:Z

.field public final migration:Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

.field public volatile onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

.field public final onPermissionFlagsChangedListenersLock:Ljava/lang/Object;

.field public final persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

.field public final privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

.field public final upgrade:Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    .line 2
    .line 3
    const-string v5, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 4
    .line 5
    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 6
    .line 7
    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    .line 8
    .line 9
    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    .line 10
    .line 11
    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NO_IMPLICIT_FLAG_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 22
    .line 23
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 24
    .line 25
    const-string v1, "android.permission.NEARBY_WIFI_DEVICES"

    .line 26
    .line 27
    const-string v2, "android.permission.BLUETOOTH_ADVERTISE"

    .line 28
    .line 29
    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    .line 30
    .line 31
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NEARBY_DEVICES_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 40
    .line 41
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 42
    .line 43
    filled-new-array {v0}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NOTIFICATIONS_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 52
    .line 53
    const-string v6, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 54
    .line 55
    const-string v7, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 56
    .line 57
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 58
    .line 59
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 60
    .line 61
    const-string v3, "android.permission.READ_MEDIA_AUDIO"

    .line 62
    .line 63
    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    .line 64
    .line 65
    const-string v5, "android.permission.READ_MEDIA_IMAGES"

    .line 66
    .line 67
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->STORAGE_AND_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 76
    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->migration:Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;-><init>(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->upgrade:Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;

    .line 24
    .line 25
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 31
    .line 32
    new-instance v0, Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListenersLock:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 45
    .line 46
    return-void
.end method

.method public static addPermissionGroups(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 12

    .line 1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getUserStates()Landroid/util/SparseArray;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    const-string v4, "AppIdPermissionPolicy"

    .line 12
    .line 13
    if-ge v3, v1, :cond_5

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Lcom/android/server/pm/pkg/PackageUserState;

    .line 23
    .line 24
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_4

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissionGroups()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :goto_1
    if-ge v2, v1, :cond_3

    .line 46
    .line 47
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    .line 52
    .line 53
    const-wide/16 v5, 0x80

    .line 54
    .line 55
    invoke-static {v3, v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionGroupInfo(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;J)Landroid/content/pm/PermissionGroupInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v5, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v6, p0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 65
    .line 66
    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    iget-object v7, v7, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 75
    .line 76
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    check-cast v7, Landroid/content/pm/PermissionGroupInfo;

    .line 81
    .line 82
    if-eqz v7, :cond_2

    .line 83
    .line 84
    iget-object v8, v3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v9, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v8, v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-nez v8, :cond_2

    .line 93
    .line 94
    iget-object v8, v3, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 97
    .line 98
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    const-string v10, "Ignoring permission group "

    .line 103
    .line 104
    if-nez v9, :cond_0

    .line 105
    .line 106
    const-string v3, " declared in package "

    .line 107
    .line 108
    const-string v6, ": already declared in another package "

    .line 109
    .line 110
    invoke-static {v10, v5, v3, v8, v6}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-static {v3, v7, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    iget-object v9, v9, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 123
    .line 124
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    .line 129
    .line 130
    if-eqz v9, :cond_1

    .line 131
    .line 132
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    const/4 v11, 0x1

    .line 137
    if-ne v9, v11, :cond_1

    .line 138
    .line 139
    const-string v3, " declared in system package "

    .line 140
    .line 141
    const-string v6, ": already declared in another system package "

    .line 142
    .line 143
    invoke-static {v10, v5, v3, v8, v6}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v3, v7, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_1
    const-string v9, "Overriding permission group "

    .line 152
    .line 153
    const-string v10, " with new declaration in system package "

    .line 154
    .line 155
    const-string v11, ": originally declared in another package "

    .line 156
    .line 157
    invoke-static {v9, v5, v10, v8, v11}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-static {v8, v7, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_2
    invoke-static {v6}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    iget-object v6, v6, Lcom/android/server/permission/access/MutableSystemState;->permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 169
    .line 170
    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    check-cast v6, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 175
    .line 176
    invoke-virtual {v6, v5, v3}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 180
    .line 181
    goto/16 :goto_1

    .line 182
    .line 183
    :cond_3
    return-void

    .line 184
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_5
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    const-string p1, "Ignoring permission groups declared in package "

    .line 193
    .line 194
    const-string v0, ": instant apps cannot declare permission groups"

    .line 195
    .line 196
    invoke-static {p1, p0, v0, v4}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public static adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .locals 16

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getAdoptPermissions()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_0
    if-ge v4, v2, :cond_5

    .line 18
    .line 19
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    move-object/from16 v7, p0

    .line 30
    .line 31
    iget-object v8, v7, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 32
    .line 33
    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    iget-object v9, v9, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    .line 44
    .line 45
    if-nez v9, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    const-string v11, " to "

    .line 53
    .line 54
    const-string v12, "Unable to adopt permissions from "

    .line 55
    .line 56
    const-string v13, "AppIdPermissionPolicy"

    .line 57
    .line 58
    if-nez v10, :cond_1

    .line 59
    .line 60
    const-string v8, ": original package not in system partition"

    .line 61
    .line 62
    invoke-static {v12, v5, v11, v6, v8}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-static {v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    if-eqz v9, :cond_3

    .line 75
    .line 76
    const-string v8, ": original package still exists"

    .line 77
    .line 78
    invoke-static {v12, v5, v11, v6, v8}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-static {v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_1
    move-object/from16 v13, p2

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    goto :goto_4

    .line 89
    :cond_3
    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-virtual {v9}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    iget-object v10, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 98
    .line 99
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    const/4 v11, 0x0

    .line 104
    :goto_2
    if-ge v11, v10, :cond_2

    .line 105
    .line 106
    iget-object v12, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 107
    .line 108
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    iget-object v13, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 113
    .line 114
    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v13

    .line 118
    check-cast v13, Lcom/android/server/permission/access/permission/Permission;

    .line 119
    .line 120
    check-cast v12, Ljava/lang/String;

    .line 121
    .line 122
    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 123
    .line 124
    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v14, v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v14

    .line 130
    if-nez v14, :cond_4

    .line 131
    .line 132
    move-object/from16 v13, p2

    .line 133
    .line 134
    const/4 v3, 0x0

    .line 135
    goto :goto_3

    .line 136
    :cond_4
    new-instance v14, Landroid/content/pm/PermissionInfo;

    .line 137
    .line 138
    invoke-direct {v14}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 139
    .line 140
    .line 141
    iget-object v15, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 142
    .line 143
    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 144
    .line 145
    iput-object v3, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 146
    .line 147
    iput-object v6, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 148
    .line 149
    iget v3, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 150
    .line 151
    iput v3, v14, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    invoke-static {v13, v14, v3, v3}, Lcom/android/server/permission/access/permission/Permission;->copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZI)Lcom/android/server/permission/access/permission/Permission;

    .line 155
    .line 156
    .line 157
    move-result-object v13

    .line 158
    invoke-static {v8}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    .line 159
    .line 160
    .line 161
    move-result-object v14

    .line 162
    invoke-virtual {v14}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    iget-object v14, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 167
    .line 168
    invoke-virtual {v14, v11, v13}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-object/from16 v13, p2

    .line 172
    .line 173
    invoke-virtual {v13, v12}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_5
    return-void
.end method

.method public static findPermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    const/4 v2, 0x0

    .line 19
    if-ge v1, v0, :cond_2

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, p0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    .line 34
    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1, v3}, Lcom/android/server/permission/jarjar/kotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-le v5, v6, :cond_0

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/16 v5, 0x2e

    .line 62
    .line 63
    if-ne v3, v5, :cond_0

    .line 64
    .line 65
    move-object v2, v4

    .line 66
    :cond_0
    if-eqz v2, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    :goto_1
    return-object v2
.end method

.method public static getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    const/4 p1, 0x0

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p0, p3, p1}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method

.method public static shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/16 v3, 0x10

    .line 16
    .line 17
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_5

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_0

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    :cond_0
    iget-object p0, p2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const p1, 0x8000

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_1

    .line 56
    .line 57
    const-string p0, "Permission "

    .line 58
    .line 59
    const-string p1, " cannot be granted to privileged vendor (or odm) app "

    .line 60
    .line 61
    const-string p2, " because it isn\'t a vendorPrivileged permission"

    .line 62
    .line 63
    invoke-static {p0, v0, p1, v1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string p1, "AppIdPermissionPolicy"

    .line 68
    .line 69
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return v3

    .line 73
    :cond_1
    const/4 p0, 0x1

    .line 74
    return p0

    .line 75
    :cond_2
    iget-object p2, p2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    const/16 v2, 0x4000

    .line 82
    .line 83
    invoke-static {p2, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_5

    .line 88
    .line 89
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isOem()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    iget-object p0, p0, Lcom/android/server/permission/access/MutableExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionAllowlist;->mOemAppAllowlist:Landroid/util/ArrayMap;

    .line 104
    .line 105
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    check-cast p0, Landroid/util/ArrayMap;

    .line 110
    .line 111
    if-nez p0, :cond_3

    .line 112
    .line 113
    const/4 p0, 0x0

    .line 114
    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Ljava/lang/Boolean;

    .line 120
    .line 121
    :goto_0
    if-eqz p0, :cond_4

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    return p0

    .line 128
    :cond_4
    const-string p0, "OEM permission "

    .line 129
    .line 130
    const-string p1, " requested by package "

    .line 131
    .line 132
    const-string p2, " must be explicitly declared granted or not"

    .line 133
    .line 134
    invoke-static {p0, v0, p1, v1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :cond_5
    return v3
.end method


# virtual methods
.method public final addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .locals 28

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v7, Lcom/android/server/permission/access/MutateStateScope;->oldState:Lcom/android/server/permission/access/AccessState;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    const/4 v10, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v10, 0x0

    .line 55
    :goto_1
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    const/4 v13, 0x0

    .line 64
    :goto_2
    if-ge v13, v12, :cond_1b

    .line 65
    .line 66
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object v14, v0

    .line 71
    check-cast v14, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 72
    .line 73
    const-wide/16 v0, 0x80

    .line 74
    .line 75
    invoke-static {v14, v0, v1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generatePermissionInfo(Lcom/android/internal/pm/pkg/component/ParsedPermission;J)Landroid/content/pm/PermissionInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v15

    .line 79
    invoke-static {v15}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v6, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget-object v5, v7, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    .line 107
    .line 108
    :goto_3
    move-object v4, v0

    .line 109
    goto :goto_4

    .line 110
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 119
    .line 120
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :goto_4
    invoke-static {v7, v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v3, v15, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 132
    .line 133
    const-string v1, " declared in package "

    .line 134
    .line 135
    const-string v2, "Ignoring permission "

    .line 136
    .line 137
    const-string v9, "AppIdPermissionPolicy"

    .line 138
    .line 139
    if-eqz v0, :cond_3

    .line 140
    .line 141
    iget-object v8, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 142
    .line 143
    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v3, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    if-nez v8, :cond_3

    .line 150
    .line 151
    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 152
    .line 153
    iget-object v4, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 156
    .line 157
    const-string v5, ": base permission tree "

    .line 158
    .line 159
    invoke-static {v2, v6, v1, v3, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v2, " is declared in another package "

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :goto_5
    move-object/from16 v0, p3

    .line 182
    .line 183
    move-object/from16 v26, v11

    .line 184
    .line 185
    move/from16 v27, v12

    .line 186
    .line 187
    :goto_6
    const/4 v2, 0x1

    .line 188
    goto/16 :goto_15

    .line 189
    .line 190
    :cond_3
    if-eqz v4, :cond_7

    .line 191
    .line 192
    iget-object v0, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 193
    .line 194
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v3, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_9

    .line 201
    .line 202
    iget-object v0, v4, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 203
    .line 204
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 205
    .line 206
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    if-nez v8, :cond_4

    .line 211
    .line 212
    const-string v4, ": already declared in another package "

    .line 213
    .line 214
    invoke-static {v2, v6, v1, v3, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-static {v1, v0, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_4
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 227
    .line 228
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 233
    .line 234
    if-eqz v1, :cond_5

    .line 235
    .line 236
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    const/4 v8, 0x1

    .line 241
    if-ne v1, v8, :cond_5

    .line 242
    .line 243
    const-string v1, " declared in system package "

    .line 244
    .line 245
    const-string v4, ": already declared in another system package "

    .line 246
    .line 247
    invoke-static {v2, v6, v1, v3, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-static {v1, v0, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_5
    const-string v1, "Overriding permission "

    .line 256
    .line 257
    const-string v2, " with new declaration in system package "

    .line 258
    .line 259
    const-string v8, ": originally declared in another package "

    .line 260
    .line 261
    invoke-static {v1, v6, v2, v3, v8}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    iget-object v0, v8, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 284
    .line 285
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 286
    .line 287
    .line 288
    move-result v9

    .line 289
    const/4 v2, 0x0

    .line 290
    :goto_7
    if-ge v2, v9, :cond_7

    .line 291
    .line 292
    iget-object v0, v8, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 293
    .line 294
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 295
    .line 296
    .line 297
    move-result v16

    .line 298
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    iget-object v0, v1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 307
    .line 308
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    move-object/from16 v17, v5

    .line 313
    .line 314
    const/4 v5, 0x0

    .line 315
    :goto_8
    if-ge v5, v0, :cond_6

    .line 316
    .line 317
    move/from16 v18, v0

    .line 318
    .line 319
    iget-object v0, v1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 320
    .line 321
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 322
    .line 323
    .line 324
    move-result v19

    .line 325
    invoke-virtual {v1, v5}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 330
    .line 331
    const/16 v20, -0x1

    .line 332
    .line 333
    const/16 v21, 0x0

    .line 334
    .line 335
    move-object/from16 v0, p0

    .line 336
    .line 337
    move-object/from16 v22, v1

    .line 338
    .line 339
    move-object/from16 v1, p1

    .line 340
    .line 341
    move/from16 v23, v2

    .line 342
    .line 343
    move/from16 v2, v19

    .line 344
    .line 345
    move-object/from16 v24, v3

    .line 346
    .line 347
    move/from16 v3, v16

    .line 348
    .line 349
    move-object v7, v4

    .line 350
    move-object v4, v6

    .line 351
    move-object/from16 v25, v17

    .line 352
    .line 353
    move/from16 v17, v5

    .line 354
    .line 355
    move/from16 v5, v20

    .line 356
    .line 357
    move-object/from16 v19, v8

    .line 358
    .line 359
    move-object v8, v6

    .line 360
    move/from16 v6, v21

    .line 361
    .line 362
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 363
    .line 364
    .line 365
    add-int/lit8 v5, v17, 0x1

    .line 366
    .line 367
    move-object v4, v7

    .line 368
    move-object v6, v8

    .line 369
    move/from16 v0, v18

    .line 370
    .line 371
    move-object/from16 v8, v19

    .line 372
    .line 373
    move-object/from16 v1, v22

    .line 374
    .line 375
    move/from16 v2, v23

    .line 376
    .line 377
    move-object/from16 v3, v24

    .line 378
    .line 379
    move-object/from16 v17, v25

    .line 380
    .line 381
    move-object/from16 v7, p1

    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_6
    move/from16 v23, v2

    .line 385
    .line 386
    move-object/from16 v24, v3

    .line 387
    .line 388
    move-object v7, v4

    .line 389
    move-object/from16 v19, v8

    .line 390
    .line 391
    move-object/from16 v25, v17

    .line 392
    .line 393
    move-object v8, v6

    .line 394
    add-int/lit8 v2, v23, 0x1

    .line 395
    .line 396
    move-object/from16 v8, v19

    .line 397
    .line 398
    move-object/from16 v5, v25

    .line 399
    .line 400
    move-object/from16 v7, p1

    .line 401
    .line 402
    goto :goto_7

    .line 403
    :cond_7
    move-object/from16 v24, v3

    .line 404
    .line 405
    move-object v7, v4

    .line 406
    move-object/from16 v25, v5

    .line 407
    .line 408
    move-object v8, v6

    .line 409
    :cond_8
    move-object/from16 v26, v11

    .line 410
    .line 411
    move/from16 v27, v12

    .line 412
    .line 413
    goto/16 :goto_f

    .line 414
    .line 415
    :cond_9
    move-object/from16 v24, v3

    .line 416
    .line 417
    move-object v7, v4

    .line 418
    move-object/from16 v25, v5

    .line 419
    .line 420
    move-object v8, v6

    .line 421
    iget-boolean v0, v7, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    .line 422
    .line 423
    if-eqz v0, :cond_8

    .line 424
    .line 425
    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    if-eqz v0, :cond_a

    .line 430
    .line 431
    iget-object v0, v15, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 432
    .line 433
    if-eqz v0, :cond_a

    .line 434
    .line 435
    iget-object v1, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 436
    .line 437
    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 438
    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    if-nez v0, :cond_a

    .line 444
    .line 445
    const/16 v16, 0x1

    .line 446
    .line 447
    goto :goto_9

    .line 448
    :cond_a
    const/16 v16, 0x0

    .line 449
    .line 450
    :goto_9
    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    if-eqz v0, :cond_b

    .line 455
    .line 456
    iget-object v0, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 457
    .line 458
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 459
    .line 460
    .line 461
    move-result v0

    .line 462
    const/4 v1, 0x1

    .line 463
    if-ne v0, v1, :cond_c

    .line 464
    .line 465
    :cond_b
    invoke-virtual {v15}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    const/4 v1, 0x4

    .line 470
    if-ne v0, v1, :cond_d

    .line 471
    .line 472
    iget-object v0, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 473
    .line 474
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    if-ne v0, v1, :cond_c

    .line 479
    .line 480
    goto :goto_a

    .line 481
    :cond_c
    const/16 v17, 0x1

    .line 482
    .line 483
    goto :goto_b

    .line 484
    :cond_d
    :goto_a
    const/16 v17, 0x0

    .line 485
    .line 486
    :goto_b
    if-nez v16, :cond_e

    .line 487
    .line 488
    if-eqz v17, :cond_8

    .line 489
    .line 490
    :cond_e
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 495
    .line 496
    .line 497
    move-result-object v6

    .line 498
    iget-object v0, v6, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 499
    .line 500
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 501
    .line 502
    .line 503
    move-result v5

    .line 504
    const/4 v4, 0x0

    .line 505
    :goto_c
    if-ge v4, v5, :cond_8

    .line 506
    .line 507
    iget-object v0, v6, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 508
    .line 509
    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    iget-object v0, v2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 522
    .line 523
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    const/4 v0, 0x0

    .line 528
    :goto_d
    if-ge v0, v1, :cond_11

    .line 529
    .line 530
    move/from16 v18, v1

    .line 531
    .line 532
    iget-object v1, v2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 533
    .line 534
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    invoke-virtual {v2, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 539
    .line 540
    .line 541
    move-result-object v19

    .line 542
    check-cast v19, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 543
    .line 544
    move/from16 v19, v0

    .line 545
    .line 546
    const-string v0, " and userId "

    .line 547
    .line 548
    move-object/from16 v20, v2

    .line 549
    .line 550
    const-string v2, " for appId "

    .line 551
    .line 552
    move/from16 v21, v4

    .line 553
    .line 554
    if-eqz v16, :cond_f

    .line 555
    .line 556
    iget-object v4, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 557
    .line 558
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 559
    .line 560
    move/from16 v22, v5

    .line 561
    .line 562
    iget-object v5, v15, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 563
    .line 564
    move-object/from16 v23, v6

    .line 565
    .line 566
    const-string v6, "Revoking runtime permission "

    .line 567
    .line 568
    invoke-static {v1, v6, v8, v2, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    move-result-object v6

    .line 572
    move-object/from16 v26, v11

    .line 573
    .line 574
    const-string v11, " as the permission group changed from "

    .line 575
    .line 576
    move/from16 v27, v12

    .line 577
    .line 578
    const-string v12, " to "

    .line 579
    .line 580
    invoke-static {v3, v11, v4, v12, v6}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 581
    .line 582
    .line 583
    invoke-static {v6, v5, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    goto :goto_e

    .line 587
    :cond_f
    move/from16 v22, v5

    .line 588
    .line 589
    move-object/from16 v23, v6

    .line 590
    .line 591
    move-object/from16 v26, v11

    .line 592
    .line 593
    move/from16 v27, v12

    .line 594
    .line 595
    :goto_e
    if-eqz v17, :cond_10

    .line 596
    .line 597
    const-string v4, "Revoking permission "

    .line 598
    .line 599
    invoke-static {v1, v4, v8, v2, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    const-string v2, " as the permission protection changed."

    .line 604
    .line 605
    invoke-static {v0, v3, v2, v9}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    :cond_10
    const/4 v5, -0x1

    .line 609
    const/4 v6, 0x0

    .line 610
    move/from16 v11, v19

    .line 611
    .line 612
    move-object/from16 v0, p0

    .line 613
    .line 614
    move v2, v1

    .line 615
    move/from16 v12, v18

    .line 616
    .line 617
    move-object/from16 v1, p1

    .line 618
    .line 619
    move-object/from16 v18, v20

    .line 620
    .line 621
    move/from16 v19, v3

    .line 622
    .line 623
    move/from16 v20, v21

    .line 624
    .line 625
    move-object v4, v8

    .line 626
    move/from16 v21, v22

    .line 627
    .line 628
    move-object/from16 v22, v23

    .line 629
    .line 630
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 631
    .line 632
    .line 633
    add-int/lit8 v0, v11, 0x1

    .line 634
    .line 635
    move v1, v12

    .line 636
    move-object/from16 v2, v18

    .line 637
    .line 638
    move/from16 v3, v19

    .line 639
    .line 640
    move/from16 v4, v20

    .line 641
    .line 642
    move/from16 v5, v21

    .line 643
    .line 644
    move-object/from16 v6, v22

    .line 645
    .line 646
    move-object/from16 v11, v26

    .line 647
    .line 648
    move/from16 v12, v27

    .line 649
    .line 650
    goto :goto_d

    .line 651
    :cond_11
    move/from16 v20, v4

    .line 652
    .line 653
    move/from16 v21, v5

    .line 654
    .line 655
    move-object/from16 v22, v6

    .line 656
    .line 657
    move-object/from16 v26, v11

    .line 658
    .line 659
    move/from16 v27, v12

    .line 660
    .line 661
    add-int/lit8 v4, v20, 0x1

    .line 662
    .line 663
    goto/16 :goto_c

    .line 664
    .line 665
    :goto_f
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    .line 666
    .line 667
    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    .line 668
    .line 669
    .line 670
    move-result v1

    .line 671
    if-nez v1, :cond_13

    .line 672
    .line 673
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 674
    .line 675
    .line 676
    move-result v1

    .line 677
    if-eqz v1, :cond_13

    .line 678
    .line 679
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->configPermissions:Ljava/util/Map;

    .line 684
    .line 685
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    check-cast v1, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 690
    .line 691
    if-eqz v1, :cond_13

    .line 692
    .line 693
    iget-object v2, v1, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    .line 694
    .line 695
    if-eqz v2, :cond_12

    .line 696
    .line 697
    iget-boolean v0, v1, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    .line 698
    .line 699
    move v1, v0

    .line 700
    move-object v0, v2

    .line 701
    goto :goto_10

    .line 702
    :cond_12
    const/4 v1, 0x0

    .line 703
    :goto_10
    move-object/from16 v20, v0

    .line 704
    .line 705
    move/from16 v21, v1

    .line 706
    .line 707
    goto :goto_11

    .line 708
    :cond_13
    move-object/from16 v20, v0

    .line 709
    .line 710
    const/16 v21, 0x0

    .line 711
    .line 712
    :goto_11
    new-instance v0, Lcom/android/server/permission/access/permission/Permission;

    .line 713
    .line 714
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 715
    .line 716
    .line 717
    move-result v19

    .line 718
    const/16 v17, 0x1

    .line 719
    .line 720
    const/16 v18, 0x0

    .line 721
    .line 722
    move-object v1, v15

    .line 723
    move-object v15, v0

    .line 724
    move-object/from16 v16, v1

    .line 725
    .line 726
    invoke-direct/range {v15 .. v21}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V

    .line 727
    .line 728
    .line 729
    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    .line 730
    .line 731
    .line 732
    move-result v2

    .line 733
    if-eqz v2, :cond_14

    .line 734
    .line 735
    invoke-static/range {v25 .. v25}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    .line 736
    .line 737
    .line 738
    move-result-object v1

    .line 739
    iget-object v1, v1, Lcom/android/server/permission/access/MutableSystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 740
    .line 741
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 746
    .line 747
    invoke-virtual {v1, v8, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 748
    .line 749
    .line 750
    move-object/from16 v0, p3

    .line 751
    .line 752
    goto/16 :goto_6

    .line 753
    .line 754
    :cond_14
    invoke-static/range {v25 .. v25}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    .line 755
    .line 756
    .line 757
    move-result-object v2

    .line 758
    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 759
    .line 760
    .line 761
    move-result-object v2

    .line 762
    invoke-virtual {v2, v8, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 763
    .line 764
    .line 765
    if-eqz v7, :cond_1a

    .line 766
    .line 767
    iget-object v0, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 768
    .line 769
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 770
    .line 771
    move-object/from16 v2, v24

    .line 772
    .line 773
    invoke-static {v2, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    if-eqz v0, :cond_1a

    .line 778
    .line 779
    iget v0, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 780
    .line 781
    iget-object v2, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 782
    .line 783
    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 784
    .line 785
    if-ne v0, v2, :cond_1a

    .line 786
    .line 787
    iget-boolean v0, v7, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    .line 788
    .line 789
    if-eqz v0, :cond_18

    .line 790
    .line 791
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 792
    .line 793
    .line 794
    move-result v0

    .line 795
    const/4 v2, 0x2

    .line 796
    if-ne v0, v2, :cond_16

    .line 797
    .line 798
    if-nez v10, :cond_15

    .line 799
    .line 800
    goto :goto_12

    .line 801
    :cond_15
    move-object/from16 v0, p3

    .line 802
    .line 803
    const/4 v2, 0x1

    .line 804
    goto :goto_14

    .line 805
    :cond_16
    :goto_12
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 806
    .line 807
    .line 808
    move-result v0

    .line 809
    const/high16 v2, 0x8000000

    .line 810
    .line 811
    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 812
    .line 813
    .line 814
    move-result v0

    .line 815
    if-eqz v0, :cond_17

    .line 816
    .line 817
    iget-object v0, v1, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 818
    .line 819
    iget-object v2, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 820
    .line 821
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 822
    .line 823
    invoke-static {v0, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    move-result v0

    .line 827
    if-eqz v0, :cond_15

    .line 828
    .line 829
    :cond_17
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 830
    .line 831
    .line 832
    move-result v0

    .line 833
    const/4 v2, 0x1

    .line 834
    if-ne v0, v2, :cond_19

    .line 835
    .line 836
    iget-object v0, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 837
    .line 838
    if-eqz v0, :cond_19

    .line 839
    .line 840
    iget-object v1, v7, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 841
    .line 842
    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 843
    .line 844
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 845
    .line 846
    .line 847
    move-result v0

    .line 848
    if-nez v0, :cond_19

    .line 849
    .line 850
    :goto_13
    move-object/from16 v0, p3

    .line 851
    .line 852
    goto :goto_14

    .line 853
    :cond_18
    const/4 v2, 0x1

    .line 854
    :cond_19
    move-object/from16 v0, p3

    .line 855
    .line 856
    goto :goto_15

    .line 857
    :cond_1a
    const/4 v2, 0x1

    .line 858
    goto :goto_13

    .line 859
    :goto_14
    invoke-virtual {v0, v8}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    .line 860
    .line 861
    .line 862
    :goto_15
    add-int/lit8 v13, v13, 0x1

    .line 863
    .line 864
    move-object/from16 v7, p1

    .line 865
    .line 866
    move-object/from16 v11, v26

    .line 867
    .line 868
    move/from16 v12, v27

    .line 869
    .line 870
    goto/16 :goto_2

    .line 871
    .line 872
    :cond_1b
    return-void
.end method

.method public final evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_0

    .line 19
    .line 20
    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public final evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V
    .locals 8

    .line 1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v6, v1

    .line 28
    check-cast v6, Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    move-object v2, p0

    .line 35
    move-object v3, p1

    .line 36
    move v5, p3

    .line 37
    move-object v7, p4

    .line 38
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public final evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    iget-object v5, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 12
    .line 13
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v5}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v5, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 29
    .line 30
    new-instance v6, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v7, v5, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    :goto_0
    const/4 v11, 0x1

    .line 44
    if-ge v9, v7, :cond_2

    .line 45
    .line 46
    iget-object v12, v5, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    check-cast v12, Ljava/lang/String;

    .line 53
    .line 54
    iget-object v13, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 55
    .line 56
    invoke-virtual {v13}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    iget-object v13, v13, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 61
    .line 62
    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v12

    .line 66
    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    .line 70
    .line 71
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    if-eqz v13, :cond_0

    .line 76
    .line 77
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    if-eqz v11, :cond_1

    .line 86
    .line 87
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_0
    move v10, v11

    .line 92
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    iget-object v5, v5, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-ne v5, v11, :cond_3

    .line 102
    .line 103
    if-eqz v10, :cond_3

    .line 104
    .line 105
    return-void

    .line 106
    :cond_3
    iget-object v5, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 107
    .line 108
    invoke-virtual {v5}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v5}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    iget-object v5, v5, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 117
    .line 118
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    .line 123
    .line 124
    iget-object v7, v1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 125
    .line 126
    invoke-static {v7, v2, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-nez v5, :cond_5

    .line 131
    .line 132
    if-nez v7, :cond_4

    .line 133
    .line 134
    const/4 v5, -0x1

    .line 135
    const/4 v6, 0x2

    .line 136
    move-object/from16 v0, p0

    .line 137
    .line 138
    move-object/from16 v1, p1

    .line 139
    .line 140
    move/from16 v2, p2

    .line 141
    .line 142
    move/from16 v3, p3

    .line 143
    .line 144
    move-object/from16 v4, p4

    .line 145
    .line 146
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 147
    .line 148
    .line 149
    :cond_4
    return-void

    .line 150
    :cond_5
    iget-object v9, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 151
    .line 152
    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    const-string v13, "AppIdPermissionPolicy"

    .line 157
    .line 158
    const/4 v14, 0x2

    .line 159
    if-nez v9, :cond_10

    .line 160
    .line 161
    invoke-static {v7, v11}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    if-nez v9, :cond_8e

    .line 166
    .line 167
    invoke-static {v7, v14}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    if-eqz p5, :cond_6

    .line 172
    .line 173
    invoke-interface/range {p5 .. p5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    if-eqz v10, :cond_6

    .line 189
    .line 190
    move v10, v11

    .line 191
    goto :goto_2

    .line 192
    :cond_6
    const/4 v10, 0x0

    .line 193
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 194
    .line 195
    .line 196
    move-result v15

    .line 197
    const/4 v8, 0x0

    .line 198
    :goto_3
    if-ge v8, v15, :cond_8

    .line 199
    .line 200
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v17

    .line 204
    check-cast v17, Lcom/android/server/pm/pkg/PackageState;

    .line 205
    .line 206
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 207
    .line 208
    .line 209
    move-result v17

    .line 210
    if-eqz v17, :cond_7

    .line 211
    .line 212
    move v8, v11

    .line 213
    goto :goto_4

    .line 214
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_8
    const/4 v8, 0x0

    .line 218
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 219
    .line 220
    .line 221
    move-result v15

    .line 222
    const/4 v11, 0x0

    .line 223
    :goto_5
    if-ge v11, v15, :cond_c

    .line 224
    .line 225
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v18

    .line 229
    check-cast v18, Lcom/android/server/pm/pkg/PackageState;

    .line 230
    .line 231
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 232
    .line 233
    .line 234
    move-result-object v18

    .line 235
    invoke-static/range {v18 .. v18}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    sget-object v14, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    .line 239
    .line 240
    array-length v12, v14

    .line 241
    move/from16 p5, v15

    .line 242
    .line 243
    const/4 v15, 0x0

    .line 244
    :goto_6
    if-ge v15, v12, :cond_b

    .line 245
    .line 246
    aget-object v19, v14, v15

    .line 247
    .line 248
    move/from16 v20, v12

    .line 249
    .line 250
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getName()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v12

    .line 254
    invoke-static {v12, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v12

    .line 258
    if-eqz v12, :cond_9

    .line 259
    .line 260
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    move-object/from16 v21, v14

    .line 265
    .line 266
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->getSdkVersion()I

    .line 267
    .line 268
    .line 269
    move-result v14

    .line 270
    if-ge v12, v14, :cond_a

    .line 271
    .line 272
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    new-instance v11, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    const-string v12, "Auto-granting "

    .line 279
    .line 280
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v12, " to old package "

    .line 287
    .line 288
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    invoke-static {v13, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    const/16 v16, 0x1

    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_9
    move-object/from16 v21, v14

    .line 305
    .line 306
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 307
    .line 308
    move/from16 v12, v20

    .line 309
    .line 310
    move-object/from16 v14, v21

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 314
    .line 315
    move/from16 v15, p5

    .line 316
    .line 317
    const/4 v14, 0x2

    .line 318
    goto :goto_5

    .line 319
    :cond_c
    const/16 v16, 0x0

    .line 320
    .line 321
    :goto_7
    if-eqz v9, :cond_e

    .line 322
    .line 323
    if-nez v10, :cond_e

    .line 324
    .line 325
    if-nez v8, :cond_e

    .line 326
    .line 327
    if-eqz v16, :cond_d

    .line 328
    .line 329
    goto :goto_8

    .line 330
    :cond_d
    const/4 v11, 0x2

    .line 331
    goto :goto_9

    .line 332
    :cond_e
    :goto_8
    const/4 v11, 0x1

    .line 333
    :goto_9
    iget-object v5, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 334
    .line 335
    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    const/16 v6, 0x40

    .line 340
    .line 341
    invoke-static {v5, v6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    if-eqz v5, :cond_f

    .line 346
    .line 347
    and-int/lit8 v5, v7, 0x28

    .line 348
    .line 349
    or-int/2addr v5, v11

    .line 350
    move v6, v5

    .line 351
    goto :goto_a

    .line 352
    :cond_f
    move v6, v11

    .line 353
    :goto_a
    const/4 v5, -0x1

    .line 354
    move-object/from16 v0, p0

    .line 355
    .line 356
    move-object/from16 v1, p1

    .line 357
    .line 358
    move/from16 v2, p2

    .line 359
    .line 360
    move/from16 v3, p3

    .line 361
    .line 362
    move-object/from16 v4, p4

    .line 363
    .line 364
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 365
    .line 366
    .line 367
    goto/16 :goto_51

    .line 368
    .line 369
    :cond_10
    iget-object v8, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 370
    .line 371
    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 372
    .line 373
    .line 374
    move-result v8

    .line 375
    const/16 v12, 0x10

    .line 376
    .line 377
    const/4 v14, 0x4

    .line 378
    const/4 v11, 0x2

    .line 379
    if-ne v8, v11, :cond_11

    .line 380
    .line 381
    goto :goto_b

    .line 382
    :cond_11
    iget-object v8, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 383
    .line 384
    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 385
    .line 386
    .line 387
    move-result v8

    .line 388
    if-ne v8, v14, :cond_62

    .line 389
    .line 390
    :goto_b
    invoke-static {v7, v14}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 391
    .line 392
    .line 393
    move-result v8

    .line 394
    if-eqz v10, :cond_12

    .line 395
    .line 396
    if-eqz v8, :cond_12

    .line 397
    .line 398
    move/from16 v27, v7

    .line 399
    .line 400
    move v8, v14

    .line 401
    goto/16 :goto_33

    .line 402
    .line 403
    :cond_12
    iget-object v8, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 404
    .line 405
    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 406
    .line 407
    .line 408
    move-result v8

    .line 409
    invoke-static {v8, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 410
    .line 411
    .line 412
    move-result v8

    .line 413
    const-string v11, " ("

    .line 414
    .line 415
    const-string v10, " for package "

    .line 416
    .line 417
    const-string v9, "android"

    .line 418
    .line 419
    if-eqz v8, :cond_2a

    .line 420
    .line 421
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 422
    .line 423
    .line 424
    move-result v8

    .line 425
    const/4 v15, 0x0

    .line 426
    :goto_c
    if-ge v15, v8, :cond_28

    .line 427
    .line 428
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v23

    .line 432
    check-cast v23, Lcom/android/server/pm/pkg/PackageState;

    .line 433
    .line 434
    sget-boolean v24, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    .line 435
    .line 436
    if-eqz v24, :cond_14

    .line 437
    .line 438
    :cond_13
    :goto_d
    move/from16 v27, v7

    .line 439
    .line 440
    move/from16 v25, v8

    .line 441
    .line 442
    move-object/from16 v28, v9

    .line 443
    .line 444
    :goto_e
    const/4 v2, 0x1

    .line 445
    goto/16 :goto_16

    .line 446
    .line 447
    :cond_14
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v12

    .line 451
    invoke-static {v12, v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v12

    .line 455
    if-eqz v12, :cond_15

    .line 456
    .line 457
    goto :goto_d

    .line 458
    :cond_15
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 459
    .line 460
    .line 461
    move-result v12

    .line 462
    if-eqz v12, :cond_13

    .line 463
    .line 464
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageState;->isPrivileged()Z

    .line 465
    .line 466
    .line 467
    move-result v12

    .line 468
    if-nez v12, :cond_16

    .line 469
    .line 470
    goto :goto_d

    .line 471
    :cond_16
    iget-object v12, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 472
    .line 473
    invoke-virtual {v12}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 474
    .line 475
    .line 476
    move-result-object v12

    .line 477
    iget-object v12, v12, Lcom/android/server/permission/access/MutableExternalState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 478
    .line 479
    iget-object v14, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 480
    .line 481
    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 482
    .line 483
    iget-object v12, v12, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 484
    .line 485
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result v12

    .line 489
    if-nez v12, :cond_17

    .line 490
    .line 491
    goto :goto_d

    .line 492
    :cond_17
    iget-object v12, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 493
    .line 494
    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 495
    .line 496
    iget-object v14, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 497
    .line 498
    move/from16 v25, v8

    .line 499
    .line 500
    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 501
    .line 502
    .line 503
    move-result-object v8

    .line 504
    iget-object v8, v8, Lcom/android/server/permission/access/MutableExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 505
    .line 506
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageState;->getApexModuleName()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    .line 515
    .line 516
    .line 517
    move-result v26

    .line 518
    if-nez v26, :cond_18

    .line 519
    .line 520
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    .line 521
    .line 522
    .line 523
    move-result v26

    .line 524
    if-eqz v26, :cond_19

    .line 525
    .line 526
    :cond_18
    move/from16 v27, v7

    .line 527
    .line 528
    move-object/from16 v28, v9

    .line 529
    .line 530
    goto/16 :goto_14

    .line 531
    .line 532
    :cond_19
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    .line 533
    .line 534
    .line 535
    move-result v26

    .line 536
    if-eqz v26, :cond_1b

    .line 537
    .line 538
    iget-object v2, v8, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 539
    .line 540
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    check-cast v2, Landroid/util/ArrayMap;

    .line 545
    .line 546
    if-nez v2, :cond_1a

    .line 547
    .line 548
    :goto_f
    const/4 v2, 0x0

    .line 549
    goto :goto_10

    .line 550
    :cond_1a
    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v2

    .line 554
    check-cast v2, Ljava/lang/Boolean;

    .line 555
    .line 556
    :goto_10
    move/from16 v27, v7

    .line 557
    .line 558
    move-object/from16 v28, v9

    .line 559
    .line 560
    goto/16 :goto_15

    .line 561
    .line 562
    :cond_1b
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    .line 563
    .line 564
    .line 565
    move-result v26

    .line 566
    if-eqz v26, :cond_1d

    .line 567
    .line 568
    iget-object v2, v8, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 569
    .line 570
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    check-cast v2, Landroid/util/ArrayMap;

    .line 575
    .line 576
    if-nez v2, :cond_1c

    .line 577
    .line 578
    goto :goto_f

    .line 579
    :cond_1c
    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    check-cast v2, Ljava/lang/Boolean;

    .line 584
    .line 585
    goto :goto_10

    .line 586
    :cond_1d
    if-eqz v2, :cond_21

    .line 587
    .line 588
    invoke-virtual {v8, v3, v12}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 589
    .line 590
    .line 591
    move-result-object v26

    .line 592
    if-eqz v26, :cond_1e

    .line 593
    .line 594
    const-string v4, "Package "

    .line 595
    .line 596
    move/from16 v27, v7

    .line 597
    .line 598
    const-string v7, " is an APK in APEX but has permission allowlist on the system image, please bundle the allowlist in the "

    .line 599
    .line 600
    move-object/from16 v28, v9

    .line 601
    .line 602
    const-string v9, " APEX instead"

    .line 603
    .line 604
    invoke-static {v4, v3, v7, v2, v9}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v4

    .line 608
    invoke-static {v13, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    .line 610
    .line 611
    goto :goto_11

    .line 612
    :cond_1e
    move/from16 v27, v7

    .line 613
    .line 614
    move-object/from16 v28, v9

    .line 615
    .line 616
    :goto_11
    iget-object v4, v8, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexPrivilegedAppAllowlists:Landroid/util/ArrayMap;

    .line 617
    .line 618
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    check-cast v2, Landroid/util/ArrayMap;

    .line 623
    .line 624
    if-nez v2, :cond_1f

    .line 625
    .line 626
    :goto_12
    const/4 v2, 0x0

    .line 627
    goto :goto_13

    .line 628
    :cond_1f
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    check-cast v2, Landroid/util/ArrayMap;

    .line 633
    .line 634
    if-nez v2, :cond_20

    .line 635
    .line 636
    goto :goto_12

    .line 637
    :cond_20
    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    check-cast v2, Ljava/lang/Boolean;

    .line 642
    .line 643
    :goto_13
    if-nez v2, :cond_23

    .line 644
    .line 645
    move-object/from16 v2, v26

    .line 646
    .line 647
    goto :goto_15

    .line 648
    :cond_21
    move/from16 v27, v7

    .line 649
    .line 650
    move-object/from16 v28, v9

    .line 651
    .line 652
    invoke-virtual {v8, v3, v12}, Lcom/android/server/pm/permission/PermissionAllowlist;->getPrivilegedAppAllowlistState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 653
    .line 654
    .line 655
    move-result-object v2

    .line 656
    goto :goto_15

    .line 657
    :goto_14
    iget-object v2, v8, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 658
    .line 659
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    check-cast v2, Landroid/util/ArrayMap;

    .line 664
    .line 665
    if-nez v2, :cond_22

    .line 666
    .line 667
    const/4 v2, 0x0

    .line 668
    goto :goto_15

    .line 669
    :cond_22
    invoke-virtual {v2, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    check-cast v2, Ljava/lang/Boolean;

    .line 674
    .line 675
    :cond_23
    :goto_15
    if-eqz v2, :cond_24

    .line 676
    .line 677
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    goto :goto_16

    .line 682
    :cond_24
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    .line 683
    .line 684
    .line 685
    move-result v2

    .line 686
    if-eqz v2, :cond_25

    .line 687
    .line 688
    goto/16 :goto_e

    .line 689
    .line 690
    :cond_25
    invoke-virtual {v14}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    iget-boolean v2, v2, Lcom/android/server/permission/access/MutableExternalState;->isSystemReady:Z

    .line 695
    .line 696
    if-nez v2, :cond_26

    .line 697
    .line 698
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageState;->isApkInUpdatedApex()Z

    .line 699
    .line 700
    .line 701
    move-result v2

    .line 702
    if-nez v2, :cond_26

    .line 703
    .line 704
    iget-object v2, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 705
    .line 706
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 707
    .line 708
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    const-string v7, "Privileged permission "

    .line 717
    .line 718
    invoke-static {v7, v2, v10, v3, v11}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    move-result-object v2

    .line 722
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    const-string v3, ") not in privileged permission allowlist"

    .line 726
    .line 727
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    invoke-static {v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    .line 736
    .line 737
    sget-boolean v2, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    .line 738
    .line 739
    if-eqz v2, :cond_26

    .line 740
    .line 741
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v2

    .line 745
    invoke-interface/range {v23 .. v23}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    .line 746
    .line 747
    .line 748
    move-result-object v3

    .line 749
    iget-object v4, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 750
    .line 751
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 752
    .line 753
    new-instance v7, Ljava/lang/StringBuilder;

    .line 754
    .line 755
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    const-string v2, "): "

    .line 768
    .line 769
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    iget-object v3, v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 780
    .line 781
    invoke-virtual {v3, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    .line 782
    .line 783
    .line 784
    :cond_26
    sget-boolean v2, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    .line 785
    .line 786
    const/4 v3, 0x1

    .line 787
    xor-int/2addr v2, v3

    .line 788
    :goto_16
    if-eqz v2, :cond_27

    .line 789
    .line 790
    const/4 v2, 0x1

    .line 791
    goto :goto_17

    .line 792
    :cond_27
    add-int/lit8 v15, v15, 0x1

    .line 793
    .line 794
    move/from16 v2, p2

    .line 795
    .line 796
    move/from16 v3, p3

    .line 797
    .line 798
    move-object/from16 v4, p4

    .line 799
    .line 800
    move/from16 v8, v25

    .line 801
    .line 802
    move/from16 v7, v27

    .line 803
    .line 804
    move-object/from16 v9, v28

    .line 805
    .line 806
    const/16 v12, 0x10

    .line 807
    .line 808
    const/4 v14, 0x4

    .line 809
    goto/16 :goto_c

    .line 810
    .line 811
    :cond_28
    move/from16 v27, v7

    .line 812
    .line 813
    move-object/from16 v28, v9

    .line 814
    .line 815
    const/4 v2, 0x0

    .line 816
    :goto_17
    if-eqz v2, :cond_29

    .line 817
    .line 818
    goto :goto_18

    .line 819
    :cond_29
    const/4 v2, 0x0

    .line 820
    goto :goto_19

    .line 821
    :cond_2a
    move/from16 v27, v7

    .line 822
    .line 823
    move-object/from16 v28, v9

    .line 824
    .line 825
    :goto_18
    const/4 v2, 0x1

    .line 826
    :goto_19
    iget-object v3, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 827
    .line 828
    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 829
    .line 830
    .line 831
    move-result v3

    .line 832
    const/4 v4, 0x2

    .line 833
    if-ne v3, v4, :cond_2b

    .line 834
    .line 835
    const/4 v3, 0x1

    .line 836
    goto :goto_1a

    .line 837
    :cond_2b
    const/4 v3, 0x0

    .line 838
    :goto_1a
    if-eqz v3, :cond_47

    .line 839
    .line 840
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 841
    .line 842
    .line 843
    move-result v3

    .line 844
    const/4 v4, 0x0

    .line 845
    :goto_1b
    if-ge v4, v3, :cond_46

    .line 846
    .line 847
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v7

    .line 851
    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    .line 852
    .line 853
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 854
    .line 855
    .line 856
    move-result-object v8

    .line 857
    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 858
    .line 859
    .line 860
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 861
    .line 862
    .line 863
    move-result-object v8

    .line 864
    iget-object v9, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 865
    .line 866
    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 867
    .line 868
    .line 869
    move-result-object v9

    .line 870
    iget-object v9, v9, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 871
    .line 872
    iget-object v12, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 873
    .line 874
    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 875
    .line 876
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    move-result-object v9

    .line 880
    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    .line 881
    .line 882
    if-eqz v9, :cond_2c

    .line 883
    .line 884
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 885
    .line 886
    .line 887
    move-result-object v9

    .line 888
    if-eqz v9, :cond_2c

    .line 889
    .line 890
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 891
    .line 892
    .line 893
    move-result-object v9

    .line 894
    goto :goto_1c

    .line 895
    :cond_2c
    const/4 v9, 0x0

    .line 896
    :goto_1c
    iget-object v12, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 897
    .line 898
    invoke-virtual {v12}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 899
    .line 900
    .line 901
    move-result-object v12

    .line 902
    iget-object v12, v12, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 903
    .line 904
    move-object/from16 v14, v28

    .line 905
    .line 906
    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    move-result-object v12

    .line 910
    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 911
    .line 912
    .line 913
    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    .line 914
    .line 915
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 916
    .line 917
    .line 918
    move-result-object v12

    .line 919
    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 920
    .line 921
    .line 922
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 923
    .line 924
    .line 925
    move-result-object v12

    .line 926
    if-eqz v9, :cond_2d

    .line 927
    .line 928
    const/4 v15, 0x4

    .line 929
    invoke-virtual {v9, v8, v15}, Landroid/content/pm/SigningDetails;->hasCommonSignerWithCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 930
    .line 931
    .line 932
    move-result v9

    .line 933
    const/4 v15, 0x1

    .line 934
    if-ne v9, v15, :cond_2d

    .line 935
    .line 936
    goto :goto_1d

    .line 937
    :cond_2d
    invoke-virtual {v8, v12}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z

    .line 938
    .line 939
    .line 940
    move-result v9

    .line 941
    if-nez v9, :cond_2f

    .line 942
    .line 943
    const/4 v9, 0x4

    .line 944
    invoke-virtual {v12, v8, v9}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 945
    .line 946
    .line 947
    move-result v8

    .line 948
    if-eqz v8, :cond_2e

    .line 949
    .line 950
    goto :goto_1d

    .line 951
    :cond_2e
    const/4 v8, 0x0

    .line 952
    goto :goto_1e

    .line 953
    :cond_2f
    :goto_1d
    const/4 v8, 0x1

    .line 954
    :goto_1e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->signaturePermissionAllowlistEnabled()Z

    .line 955
    .line 956
    .line 957
    move-result v9

    .line 958
    if-nez v9, :cond_30

    .line 959
    .line 960
    goto/16 :goto_2a

    .line 961
    .line 962
    :cond_30
    if-nez v8, :cond_32

    .line 963
    .line 964
    :cond_31
    :goto_1f
    const/4 v8, 0x0

    .line 965
    goto/16 :goto_2a

    .line 966
    .line 967
    :cond_32
    iget-object v8, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 968
    .line 969
    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 970
    .line 971
    invoke-static {v8, v14}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 972
    .line 973
    .line 974
    move-result v8

    .line 975
    if-eqz v8, :cond_44

    .line 976
    .line 977
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 978
    .line 979
    .line 980
    move-result v8

    .line 981
    if-eqz v8, :cond_34

    .line 982
    .line 983
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    .line 984
    .line 985
    .line 986
    move-result v8

    .line 987
    if-eqz v8, :cond_44

    .line 988
    .line 989
    iget-object v8, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 990
    .line 991
    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 992
    .line 993
    .line 994
    move-result-object v8

    .line 995
    iget-object v8, v8, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 996
    .line 997
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v9

    .line 1001
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v8

    .line 1005
    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    .line 1006
    .line 1007
    if-eqz v8, :cond_33

    .line 1008
    .line 1009
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v8

    .line 1013
    goto :goto_20

    .line 1014
    :cond_33
    const/4 v8, 0x0

    .line 1015
    :goto_20
    if-eqz v8, :cond_34

    .line 1016
    .line 1017
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v8

    .line 1021
    iget-object v9, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1022
    .line 1023
    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1024
    .line 1025
    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1026
    .line 1027
    .line 1028
    move-result v8

    .line 1029
    if-eqz v8, :cond_34

    .line 1030
    .line 1031
    goto/16 :goto_29

    .line 1032
    .line 1033
    :cond_34
    iget-object v8, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1034
    .line 1035
    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1036
    .line 1037
    iget-object v9, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 1038
    .line 1039
    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v9

    .line 1043
    iget-object v9, v9, Lcom/android/server/permission/access/MutableExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 1044
    .line 1045
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v12

    .line 1049
    const-string v15, "com.sec."

    .line 1050
    .line 1051
    invoke-static {v12, v15}, Lcom/android/server/permission/jarjar/kotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v15

    .line 1055
    if-nez v15, :cond_43

    .line 1056
    .line 1057
    const-string v15, "com.samsung."

    .line 1058
    .line 1059
    invoke-static {v12, v15}, Lcom/android/server/permission/jarjar/kotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1060
    .line 1061
    .line 1062
    move-result v15

    .line 1063
    if-eqz v15, :cond_35

    .line 1064
    .line 1065
    goto/16 :goto_27

    .line 1066
    .line 1067
    :cond_35
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->isVendor()Z

    .line 1068
    .line 1069
    .line 1070
    move-result v15

    .line 1071
    if-nez v15, :cond_41

    .line 1072
    .line 1073
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->isOdm()Z

    .line 1074
    .line 1075
    .line 1076
    move-result v15

    .line 1077
    if-eqz v15, :cond_36

    .line 1078
    .line 1079
    goto/16 :goto_26

    .line 1080
    .line 1081
    :cond_36
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->isProduct()Z

    .line 1082
    .line 1083
    .line 1084
    move-result v15

    .line 1085
    if-eqz v15, :cond_38

    .line 1086
    .line 1087
    iget-object v9, v9, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 1088
    .line 1089
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v9

    .line 1093
    check-cast v9, Landroid/util/ArrayMap;

    .line 1094
    .line 1095
    if-nez v9, :cond_37

    .line 1096
    .line 1097
    :goto_21
    const/4 v8, 0x0

    .line 1098
    goto/16 :goto_28

    .line 1099
    .line 1100
    :cond_37
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v8

    .line 1104
    check-cast v8, Ljava/lang/Boolean;

    .line 1105
    .line 1106
    goto/16 :goto_28

    .line 1107
    .line 1108
    :cond_38
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->isSystemExt()Z

    .line 1109
    .line 1110
    .line 1111
    move-result v15

    .line 1112
    if-eqz v15, :cond_3a

    .line 1113
    .line 1114
    iget-object v9, v9, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 1115
    .line 1116
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v9

    .line 1120
    check-cast v9, Landroid/util/ArrayMap;

    .line 1121
    .line 1122
    if-nez v9, :cond_39

    .line 1123
    .line 1124
    goto :goto_21

    .line 1125
    :cond_39
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v8

    .line 1129
    check-cast v8, Ljava/lang/Boolean;

    .line 1130
    .line 1131
    goto/16 :goto_28

    .line 1132
    .line 1133
    :cond_3a
    iget-object v15, v9, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 1134
    .line 1135
    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v15

    .line 1139
    check-cast v15, Landroid/util/ArrayMap;

    .line 1140
    .line 1141
    if-nez v15, :cond_3b

    .line 1142
    .line 1143
    const/4 v15, 0x0

    .line 1144
    goto :goto_22

    .line 1145
    :cond_3b
    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v15

    .line 1149
    check-cast v15, Ljava/lang/Boolean;

    .line 1150
    .line 1151
    :goto_22
    if-nez v15, :cond_40

    .line 1152
    .line 1153
    iget-object v15, v9, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 1154
    .line 1155
    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v15

    .line 1159
    check-cast v15, Landroid/util/ArrayMap;

    .line 1160
    .line 1161
    if-nez v15, :cond_3c

    .line 1162
    .line 1163
    const/4 v15, 0x0

    .line 1164
    goto :goto_23

    .line 1165
    :cond_3c
    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v15

    .line 1169
    check-cast v15, Ljava/lang/Boolean;

    .line 1170
    .line 1171
    :goto_23
    if-nez v15, :cond_40

    .line 1172
    .line 1173
    iget-object v15, v9, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 1174
    .line 1175
    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v15

    .line 1179
    check-cast v15, Landroid/util/ArrayMap;

    .line 1180
    .line 1181
    if-nez v15, :cond_3d

    .line 1182
    .line 1183
    const/4 v15, 0x0

    .line 1184
    goto :goto_24

    .line 1185
    :cond_3d
    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v15

    .line 1189
    check-cast v15, Ljava/lang/Boolean;

    .line 1190
    .line 1191
    :goto_24
    if-nez v15, :cond_40

    .line 1192
    .line 1193
    iget-object v15, v9, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 1194
    .line 1195
    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v15

    .line 1199
    check-cast v15, Landroid/util/ArrayMap;

    .line 1200
    .line 1201
    if-nez v15, :cond_3e

    .line 1202
    .line 1203
    const/4 v15, 0x0

    .line 1204
    goto :goto_25

    .line 1205
    :cond_3e
    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v15

    .line 1209
    check-cast v15, Ljava/lang/Boolean;

    .line 1210
    .line 1211
    :goto_25
    if-nez v15, :cond_40

    .line 1212
    .line 1213
    iget-object v9, v9, Lcom/android/server/pm/permission/PermissionAllowlist;->mSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 1214
    .line 1215
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v9

    .line 1219
    check-cast v9, Landroid/util/ArrayMap;

    .line 1220
    .line 1221
    if-nez v9, :cond_3f

    .line 1222
    .line 1223
    goto :goto_21

    .line 1224
    :cond_3f
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v8

    .line 1228
    check-cast v8, Ljava/lang/Boolean;

    .line 1229
    .line 1230
    goto :goto_28

    .line 1231
    :cond_40
    move-object v8, v15

    .line 1232
    goto :goto_28

    .line 1233
    :cond_41
    :goto_26
    iget-object v9, v9, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 1234
    .line 1235
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v9

    .line 1239
    check-cast v9, Landroid/util/ArrayMap;

    .line 1240
    .line 1241
    if-nez v9, :cond_42

    .line 1242
    .line 1243
    goto/16 :goto_21

    .line 1244
    .line 1245
    :cond_42
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v8

    .line 1249
    check-cast v8, Ljava/lang/Boolean;

    .line 1250
    .line 1251
    goto :goto_28

    .line 1252
    :cond_43
    :goto_27
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1253
    .line 1254
    :goto_28
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1255
    .line 1256
    invoke-static {v8, v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1257
    .line 1258
    .line 1259
    move-result v8

    .line 1260
    if-nez v8, :cond_44

    .line 1261
    .line 1262
    iget-object v8, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1263
    .line 1264
    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1265
    .line 1266
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v9

    .line 1270
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v7

    .line 1274
    const-string v12, "Signature permission "

    .line 1275
    .line 1276
    invoke-static {v12, v8, v10, v9, v11}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v8

    .line 1280
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1281
    .line 1282
    .line 1283
    const-string v7, ") not in signature permission allowlist"

    .line 1284
    .line 1285
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v7

    .line 1292
    invoke-static {v13, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    .line 1294
    .line 1295
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 1296
    .line 1297
    .line 1298
    move-result v7

    .line 1299
    if-eqz v7, :cond_31

    .line 1300
    .line 1301
    iget-boolean v7, v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSignaturePermissionAllowlistForceEnforced:Z

    .line 1302
    .line 1303
    if-eqz v7, :cond_44

    .line 1304
    .line 1305
    goto/16 :goto_1f

    .line 1306
    .line 1307
    :cond_44
    :goto_29
    const/4 v8, 0x1

    .line 1308
    :goto_2a
    if-eqz v8, :cond_45

    .line 1309
    .line 1310
    const/4 v3, 0x1

    .line 1311
    goto :goto_2b

    .line 1312
    :cond_45
    add-int/lit8 v4, v4, 0x1

    .line 1313
    .line 1314
    move-object/from16 v28, v14

    .line 1315
    .line 1316
    goto/16 :goto_1b

    .line 1317
    .line 1318
    :cond_46
    const/4 v3, 0x0

    .line 1319
    :goto_2b
    if-eqz v3, :cond_47

    .line 1320
    .line 1321
    const/4 v3, 0x1

    .line 1322
    goto :goto_2c

    .line 1323
    :cond_47
    const/4 v3, 0x0

    .line 1324
    :goto_2c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1325
    .line 1326
    .line 1327
    move-result v4

    .line 1328
    const/4 v7, 0x0

    .line 1329
    :goto_2d
    if-ge v7, v4, :cond_5c

    .line 1330
    .line 1331
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v8

    .line 1335
    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    .line 1336
    .line 1337
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v9

    .line 1341
    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1342
    .line 1343
    .line 1344
    iget-object v10, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 1345
    .line 1346
    invoke-virtual {v10}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v10

    .line 1350
    iget-object v10, v10, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    .line 1351
    .line 1352
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v11

    .line 1356
    iget-object v12, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1357
    .line 1358
    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1359
    .line 1360
    .line 1361
    move-result v12

    .line 1362
    const/16 v13, 0x10

    .line 1363
    .line 1364
    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1365
    .line 1366
    .line 1367
    move-result v12

    .line 1368
    if-nez v12, :cond_48

    .line 1369
    .line 1370
    iget-object v12, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1371
    .line 1372
    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1373
    .line 1374
    .line 1375
    move-result v12

    .line 1376
    const/16 v13, 0x4000

    .line 1377
    .line 1378
    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1379
    .line 1380
    .line 1381
    move-result v12

    .line 1382
    if-eqz v12, :cond_4d

    .line 1383
    .line 1384
    :cond_48
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 1385
    .line 1386
    .line 1387
    move-result v12

    .line 1388
    if-eqz v12, :cond_4d

    .line 1389
    .line 1390
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    .line 1391
    .line 1392
    .line 1393
    move-result v12

    .line 1394
    if-eqz v12, :cond_4b

    .line 1395
    .line 1396
    iget-object v12, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 1397
    .line 1398
    invoke-virtual {v12}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v12

    .line 1402
    iget-object v12, v12, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 1403
    .line 1404
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v13

    .line 1408
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v12

    .line 1412
    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    .line 1413
    .line 1414
    if-eqz v12, :cond_49

    .line 1415
    .line 1416
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v13

    .line 1420
    goto :goto_2e

    .line 1421
    :cond_49
    const/4 v13, 0x0

    .line 1422
    :goto_2e
    if-eqz v13, :cond_4a

    .line 1423
    .line 1424
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v13

    .line 1428
    iget-object v14, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1429
    .line 1430
    iget-object v14, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 1431
    .line 1432
    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1433
    .line 1434
    .line 1435
    move-result v13

    .line 1436
    if-eqz v13, :cond_4a

    .line 1437
    .line 1438
    invoke-static {v1, v12, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    .line 1439
    .line 1440
    .line 1441
    move-result v12

    .line 1442
    if-eqz v12, :cond_4a

    .line 1443
    .line 1444
    const/4 v12, 0x1

    .line 1445
    goto :goto_2f

    .line 1446
    :cond_4a
    const/4 v12, 0x0

    .line 1447
    goto :goto_2f

    .line 1448
    :cond_4b
    invoke-static {v1, v8, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->shouldGrantPrivilegedOrOemPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/permission/Permission;)Z

    .line 1449
    .line 1450
    .line 1451
    move-result v12

    .line 1452
    :goto_2f
    if-eqz v12, :cond_4d

    .line 1453
    .line 1454
    :cond_4c
    :goto_30
    const/4 v8, 0x1

    .line 1455
    goto/16 :goto_31

    .line 1456
    .line 1457
    :cond_4d
    iget-object v12, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1458
    .line 1459
    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1460
    .line 1461
    .line 1462
    move-result v12

    .line 1463
    const/16 v13, 0x80

    .line 1464
    .line 1465
    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1466
    .line 1467
    .line 1468
    move-result v12

    .line 1469
    if-eqz v12, :cond_4e

    .line 1470
    .line 1471
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 1472
    .line 1473
    .line 1474
    move-result v12

    .line 1475
    const/16 v13, 0x17

    .line 1476
    .line 1477
    if-ge v12, v13, :cond_4e

    .line 1478
    .line 1479
    goto :goto_30

    .line 1480
    :cond_4e
    iget-object v12, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1481
    .line 1482
    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1483
    .line 1484
    .line 1485
    move-result v12

    .line 1486
    const/16 v13, 0x100

    .line 1487
    .line 1488
    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1489
    .line 1490
    .line 1491
    move-result v12

    .line 1492
    if-eqz v12, :cond_4f

    .line 1493
    .line 1494
    iget-object v12, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 1495
    .line 1496
    const/4 v13, 0x2

    .line 1497
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v12

    .line 1501
    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1502
    .line 1503
    .line 1504
    check-cast v12, [Ljava/lang/Object;

    .line 1505
    .line 1506
    invoke-static {v12, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1507
    .line 1508
    .line 1509
    move-result v12

    .line 1510
    if-nez v12, :cond_4c

    .line 1511
    .line 1512
    iget-object v12, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 1513
    .line 1514
    const/4 v13, 0x7

    .line 1515
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v12

    .line 1519
    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1520
    .line 1521
    .line 1522
    check-cast v12, [Ljava/lang/Object;

    .line 1523
    .line 1524
    invoke-static {v12, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1525
    .line 1526
    .line 1527
    move-result v12

    .line 1528
    if-eqz v12, :cond_4f

    .line 1529
    .line 1530
    goto :goto_30

    .line 1531
    :cond_4f
    iget-object v12, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1532
    .line 1533
    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1534
    .line 1535
    .line 1536
    move-result v12

    .line 1537
    const/16 v13, 0x200

    .line 1538
    .line 1539
    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1540
    .line 1541
    .line 1542
    move-result v12

    .line 1543
    if-eqz v12, :cond_50

    .line 1544
    .line 1545
    iget-object v12, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 1546
    .line 1547
    const/4 v13, 0x4

    .line 1548
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v12

    .line 1552
    invoke-static {v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1553
    .line 1554
    .line 1555
    check-cast v12, [Ljava/lang/Object;

    .line 1556
    .line 1557
    invoke-static {v12, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1558
    .line 1559
    .line 1560
    move-result v12

    .line 1561
    if-eqz v12, :cond_50

    .line 1562
    .line 1563
    goto :goto_30

    .line 1564
    :cond_50
    iget-object v12, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1565
    .line 1566
    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1567
    .line 1568
    .line 1569
    move-result v12

    .line 1570
    const/16 v13, 0x400

    .line 1571
    .line 1572
    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1573
    .line 1574
    .line 1575
    move-result v12

    .line 1576
    if-eqz v12, :cond_51

    .line 1577
    .line 1578
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 1579
    .line 1580
    .line 1581
    move-result v12

    .line 1582
    if-eqz v12, :cond_51

    .line 1583
    .line 1584
    goto/16 :goto_30

    .line 1585
    .line 1586
    :cond_51
    iget-object v12, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1587
    .line 1588
    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1589
    .line 1590
    .line 1591
    move-result v12

    .line 1592
    const/high16 v13, 0x8000000

    .line 1593
    .line 1594
    invoke-static {v12, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1595
    .line 1596
    .line 1597
    move-result v12

    .line 1598
    if-eqz v12, :cond_52

    .line 1599
    .line 1600
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v9

    .line 1604
    iget-object v12, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1605
    .line 1606
    iget-object v12, v12, Landroid/content/pm/PermissionInfo;->knownCerts:Ljava/util/Set;

    .line 1607
    .line 1608
    invoke-virtual {v9, v12}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    .line 1609
    .line 1610
    .line 1611
    move-result v9

    .line 1612
    if-eqz v9, :cond_52

    .line 1613
    .line 1614
    goto/16 :goto_30

    .line 1615
    .line 1616
    :cond_52
    iget-object v9, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1617
    .line 1618
    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1619
    .line 1620
    .line 1621
    move-result v9

    .line 1622
    const/16 v12, 0x800

    .line 1623
    .line 1624
    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1625
    .line 1626
    .line 1627
    move-result v9

    .line 1628
    if-eqz v9, :cond_53

    .line 1629
    .line 1630
    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 1631
    .line 1632
    const/4 v12, 0x1

    .line 1633
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v9

    .line 1637
    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1638
    .line 1639
    .line 1640
    check-cast v9, [Ljava/lang/Object;

    .line 1641
    .line 1642
    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1643
    .line 1644
    .line 1645
    move-result v9

    .line 1646
    if-eqz v9, :cond_53

    .line 1647
    .line 1648
    goto/16 :goto_30

    .line 1649
    .line 1650
    :cond_53
    iget-object v9, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1651
    .line 1652
    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1653
    .line 1654
    .line 1655
    move-result v9

    .line 1656
    const/high16 v12, 0x10000

    .line 1657
    .line 1658
    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1659
    .line 1660
    .line 1661
    move-result v9

    .line 1662
    if-eqz v9, :cond_54

    .line 1663
    .line 1664
    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 1665
    .line 1666
    const/4 v12, 0x6

    .line 1667
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v9

    .line 1671
    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1672
    .line 1673
    .line 1674
    check-cast v9, [Ljava/lang/Object;

    .line 1675
    .line 1676
    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1677
    .line 1678
    .line 1679
    move-result v9

    .line 1680
    if-eqz v9, :cond_54

    .line 1681
    .line 1682
    goto/16 :goto_30

    .line 1683
    .line 1684
    :cond_54
    iget-object v9, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1685
    .line 1686
    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1687
    .line 1688
    .line 1689
    move-result v9

    .line 1690
    const/high16 v12, 0x80000

    .line 1691
    .line 1692
    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1693
    .line 1694
    .line 1695
    move-result v9

    .line 1696
    if-eqz v9, :cond_55

    .line 1697
    .line 1698
    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 1699
    .line 1700
    const/16 v12, 0xa

    .line 1701
    .line 1702
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v9

    .line 1706
    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1707
    .line 1708
    .line 1709
    check-cast v9, [Ljava/lang/Object;

    .line 1710
    .line 1711
    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1712
    .line 1713
    .line 1714
    move-result v9

    .line 1715
    if-eqz v9, :cond_55

    .line 1716
    .line 1717
    goto/16 :goto_30

    .line 1718
    .line 1719
    :cond_55
    iget-object v9, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1720
    .line 1721
    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1722
    .line 1723
    .line 1724
    move-result v9

    .line 1725
    const/high16 v12, 0x100000

    .line 1726
    .line 1727
    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1728
    .line 1729
    .line 1730
    move-result v9

    .line 1731
    if-eqz v9, :cond_56

    .line 1732
    .line 1733
    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 1734
    .line 1735
    const/16 v12, 0xb

    .line 1736
    .line 1737
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v9

    .line 1741
    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1742
    .line 1743
    .line 1744
    check-cast v9, [Ljava/lang/Object;

    .line 1745
    .line 1746
    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1747
    .line 1748
    .line 1749
    move-result v9

    .line 1750
    if-eqz v9, :cond_56

    .line 1751
    .line 1752
    goto/16 :goto_30

    .line 1753
    .line 1754
    :cond_56
    iget-object v9, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1755
    .line 1756
    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1757
    .line 1758
    .line 1759
    move-result v9

    .line 1760
    const/high16 v12, 0x200000

    .line 1761
    .line 1762
    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1763
    .line 1764
    .line 1765
    move-result v9

    .line 1766
    if-eqz v9, :cond_57

    .line 1767
    .line 1768
    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 1769
    .line 1770
    const/16 v12, 0xc

    .line 1771
    .line 1772
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v9

    .line 1776
    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1777
    .line 1778
    .line 1779
    check-cast v9, [Ljava/lang/Object;

    .line 1780
    .line 1781
    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1782
    .line 1783
    .line 1784
    move-result v9

    .line 1785
    if-eqz v9, :cond_57

    .line 1786
    .line 1787
    goto/16 :goto_30

    .line 1788
    .line 1789
    :cond_57
    iget-object v9, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1790
    .line 1791
    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1792
    .line 1793
    .line 1794
    move-result v9

    .line 1795
    const/high16 v12, 0x800000

    .line 1796
    .line 1797
    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1798
    .line 1799
    .line 1800
    move-result v9

    .line 1801
    if-eqz v9, :cond_58

    .line 1802
    .line 1803
    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 1804
    .line 1805
    const/16 v12, 0xf

    .line 1806
    .line 1807
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v9

    .line 1811
    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1812
    .line 1813
    .line 1814
    check-cast v9, [Ljava/lang/Object;

    .line 1815
    .line 1816
    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1817
    .line 1818
    .line 1819
    move-result v9

    .line 1820
    if-eqz v9, :cond_58

    .line 1821
    .line 1822
    goto/16 :goto_30

    .line 1823
    .line 1824
    :cond_58
    iget-object v9, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1825
    .line 1826
    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1827
    .line 1828
    .line 1829
    move-result v9

    .line 1830
    const/high16 v12, 0x2000000

    .line 1831
    .line 1832
    invoke-static {v9, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1833
    .line 1834
    .line 1835
    move-result v9

    .line 1836
    if-eqz v9, :cond_59

    .line 1837
    .line 1838
    iget-object v9, v10, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 1839
    .line 1840
    const/16 v10, 0x11

    .line 1841
    .line 1842
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1843
    .line 1844
    .line 1845
    move-result-object v9

    .line 1846
    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1847
    .line 1848
    .line 1849
    check-cast v9, [Ljava/lang/Object;

    .line 1850
    .line 1851
    invoke-static {v9, v11}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1852
    .line 1853
    .line 1854
    move-result v9

    .line 1855
    if-eqz v9, :cond_59

    .line 1856
    .line 1857
    goto/16 :goto_30

    .line 1858
    .line 1859
    :cond_59
    iget-object v9, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1860
    .line 1861
    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1862
    .line 1863
    .line 1864
    move-result v9

    .line 1865
    const/high16 v10, 0x400000

    .line 1866
    .line 1867
    invoke-static {v9, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1868
    .line 1869
    .line 1870
    move-result v9

    .line 1871
    if-eqz v9, :cond_5a

    .line 1872
    .line 1873
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getApexModuleName()Ljava/lang/String;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v8

    .line 1877
    if-eqz v8, :cond_5a

    .line 1878
    .line 1879
    goto/16 :goto_30

    .line 1880
    .line 1881
    :cond_5a
    const/4 v8, 0x0

    .line 1882
    :goto_31
    if-eqz v8, :cond_5b

    .line 1883
    .line 1884
    const/4 v11, 0x1

    .line 1885
    goto :goto_32

    .line 1886
    :cond_5b
    add-int/lit8 v7, v7, 0x1

    .line 1887
    .line 1888
    goto/16 :goto_2d

    .line 1889
    .line 1890
    :cond_5c
    const/4 v11, 0x0

    .line 1891
    :goto_32
    if-eqz v2, :cond_5e

    .line 1892
    .line 1893
    if-nez v3, :cond_5d

    .line 1894
    .line 1895
    if-eqz v11, :cond_5e

    .line 1896
    .line 1897
    :cond_5d
    const/4 v8, 0x4

    .line 1898
    goto :goto_33

    .line 1899
    :cond_5e
    const/4 v8, 0x0

    .line 1900
    :goto_33
    iget-object v2, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1901
    .line 1902
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1903
    .line 1904
    .line 1905
    move-result v2

    .line 1906
    const/16 v3, 0x40

    .line 1907
    .line 1908
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1909
    .line 1910
    .line 1911
    move-result v2

    .line 1912
    if-eqz v2, :cond_5f

    .line 1913
    .line 1914
    and-int/lit8 v2, v27, 0x28

    .line 1915
    .line 1916
    or-int/2addr v8, v2

    .line 1917
    :cond_5f
    iget-object v2, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1918
    .line 1919
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1920
    .line 1921
    .line 1922
    move-result v2

    .line 1923
    const/16 v3, 0x20

    .line 1924
    .line 1925
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1926
    .line 1927
    .line 1928
    move-result v2

    .line 1929
    if-eqz v2, :cond_60

    .line 1930
    .line 1931
    and-int/lit8 v2, v27, 0x10

    .line 1932
    .line 1933
    or-int/2addr v8, v2

    .line 1934
    :cond_60
    iget-object v2, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1935
    .line 1936
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 1937
    .line 1938
    .line 1939
    move-result v2

    .line 1940
    const/high16 v3, 0x4000000

    .line 1941
    .line 1942
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1943
    .line 1944
    .line 1945
    move-result v2

    .line 1946
    if-eqz v2, :cond_61

    .line 1947
    .line 1948
    and-int/lit8 v2, v27, 0x18

    .line 1949
    .line 1950
    or-int/2addr v2, v8

    .line 1951
    move v6, v2

    .line 1952
    goto :goto_34

    .line 1953
    :cond_61
    move v6, v8

    .line 1954
    :goto_34
    const/4 v5, -0x1

    .line 1955
    move-object/from16 v0, p0

    .line 1956
    .line 1957
    move-object/from16 v1, p1

    .line 1958
    .line 1959
    move/from16 v2, p2

    .line 1960
    .line 1961
    move/from16 v3, p3

    .line 1962
    .line 1963
    move-object/from16 v4, p4

    .line 1964
    .line 1965
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 1966
    .line 1967
    .line 1968
    goto/16 :goto_51

    .line 1969
    .line 1970
    :cond_62
    move/from16 v27, v7

    .line 1971
    .line 1972
    iget-object v2, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 1973
    .line 1974
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 1975
    .line 1976
    .line 1977
    move-result v2

    .line 1978
    const/4 v3, 0x1

    .line 1979
    if-ne v2, v3, :cond_8d

    .line 1980
    .line 1981
    const v2, 0xfffff8

    .line 1982
    .line 1983
    .line 1984
    and-int v2, v27, v2

    .line 1985
    .line 1986
    const/high16 v4, 0x40000

    .line 1987
    .line 1988
    if-eqz v2, :cond_69

    .line 1989
    .line 1990
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 1991
    .line 1992
    .line 1993
    move-result v7

    .line 1994
    if-eqz v7, :cond_64

    .line 1995
    .line 1996
    :cond_63
    :goto_35
    const/4 v3, 0x1

    .line 1997
    goto :goto_37

    .line 1998
    :cond_64
    const/4 v3, 0x2

    .line 1999
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 2000
    .line 2001
    .line 2002
    move-result v3

    .line 2003
    if-eqz v3, :cond_65

    .line 2004
    .line 2005
    :goto_36
    const/4 v3, 0x0

    .line 2006
    goto :goto_37

    .line 2007
    :cond_65
    const/4 v3, 0x4

    .line 2008
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 2009
    .line 2010
    .line 2011
    move-result v7

    .line 2012
    if-eqz v7, :cond_66

    .line 2013
    .line 2014
    goto :goto_35

    .line 2015
    :cond_66
    const/16 v3, 0x400

    .line 2016
    .line 2017
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 2018
    .line 2019
    .line 2020
    move-result v7

    .line 2021
    if-nez v7, :cond_63

    .line 2022
    .line 2023
    const/16 v3, 0x800

    .line 2024
    .line 2025
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 2026
    .line 2027
    .line 2028
    move-result v7

    .line 2029
    if-eqz v7, :cond_67

    .line 2030
    .line 2031
    goto :goto_35

    .line 2032
    :cond_67
    invoke-static {v2, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 2033
    .line 2034
    .line 2035
    move-result v3

    .line 2036
    if-eqz v3, :cond_68

    .line 2037
    .line 2038
    goto :goto_36

    .line 2039
    :cond_68
    const/16 v3, 0x10

    .line 2040
    .line 2041
    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 2042
    .line 2043
    .line 2044
    move-result v3

    .line 2045
    :goto_37
    if-nez v3, :cond_69

    .line 2046
    .line 2047
    const/4 v3, 0x1

    .line 2048
    goto :goto_38

    .line 2049
    :cond_69
    const/4 v3, 0x0

    .line 2050
    :goto_38
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 2051
    .line 2052
    .line 2053
    move-result v7

    .line 2054
    const/16 v8, 0x2710

    .line 2055
    .line 2056
    const/4 v9, 0x0

    .line 2057
    :goto_39
    if-ge v9, v7, :cond_6b

    .line 2058
    .line 2059
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2060
    .line 2061
    .line 2062
    move-result-object v10

    .line 2063
    check-cast v10, Lcom/android/server/pm/pkg/PackageState;

    .line 2064
    .line 2065
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2066
    .line 2067
    .line 2068
    move-result-object v10

    .line 2069
    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2070
    .line 2071
    .line 2072
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 2073
    .line 2074
    .line 2075
    move-result v10

    .line 2076
    if-le v8, v10, :cond_6a

    .line 2077
    .line 2078
    move v8, v10

    .line 2079
    :cond_6a
    add-int/lit8 v9, v9, 0x1

    .line 2080
    .line 2081
    goto :goto_39

    .line 2082
    :cond_6b
    sget-boolean v7, Lcom/samsung/android/rune/PMRune;->PM_GRANT_ALL_RUNTIME_PERMISSION_UNPACK:Z

    .line 2083
    .line 2084
    const v9, 0x38000

    .line 2085
    .line 2086
    .line 2087
    if-eqz v7, :cond_6d

    .line 2088
    .line 2089
    or-int/lit16 v2, v2, 0x210

    .line 2090
    .line 2091
    :goto_3a
    move/from16 v7, p2

    .line 2092
    .line 2093
    move/from16 v10, p3

    .line 2094
    .line 2095
    move-object/from16 v11, p4

    .line 2096
    .line 2097
    :cond_6c
    :goto_3b
    move/from16 v20, v8

    .line 2098
    .line 2099
    move v0, v9

    .line 2100
    const/4 v8, 0x1

    .line 2101
    goto/16 :goto_48

    .line 2102
    .line 2103
    :cond_6d
    const/16 v7, 0x17

    .line 2104
    .line 2105
    if-ge v8, v7, :cond_70

    .line 2106
    .line 2107
    iget-object v7, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2108
    .line 2109
    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 2110
    .line 2111
    .line 2112
    move-result v7

    .line 2113
    const/16 v10, 0x2000

    .line 2114
    .line 2115
    invoke-static {v7, v10}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 2116
    .line 2117
    .line 2118
    move-result v7

    .line 2119
    if-eqz v7, :cond_6e

    .line 2120
    .line 2121
    and-int v2, v27, v9

    .line 2122
    .line 2123
    goto :goto_3a

    .line 2124
    :cond_6e
    or-int/lit16 v7, v2, 0x400

    .line 2125
    .line 2126
    if-eqz v3, :cond_6f

    .line 2127
    .line 2128
    const v3, 0x100400

    .line 2129
    .line 2130
    .line 2131
    or-int/2addr v2, v3

    .line 2132
    goto :goto_3c

    .line 2133
    :cond_6f
    move v2, v7

    .line 2134
    :goto_3c
    iget-object v3, v1, Lcom/android/server/permission/access/MutateStateScope;->oldState:Lcom/android/server/permission/access/AccessState;

    .line 2135
    .line 2136
    move/from16 v7, p2

    .line 2137
    .line 2138
    move/from16 v10, p3

    .line 2139
    .line 2140
    move-object/from16 v11, p4

    .line 2141
    .line 2142
    invoke-static {v3, v7, v10, v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 2143
    .line 2144
    .line 2145
    move-result v3

    .line 2146
    if-nez v3, :cond_6c

    .line 2147
    .line 2148
    or-int/lit16 v2, v2, 0x1000

    .line 2149
    .line 2150
    goto :goto_3b

    .line 2151
    :cond_70
    move/from16 v7, p2

    .line 2152
    .line 2153
    move/from16 v10, p3

    .line 2154
    .line 2155
    move-object/from16 v11, p4

    .line 2156
    .line 2157
    const/16 v12, 0x400

    .line 2158
    .line 2159
    invoke-static {v2, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 2160
    .line 2161
    .line 2162
    move-result v12

    .line 2163
    const/16 v13, 0x1000

    .line 2164
    .line 2165
    invoke-static {v2, v13}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 2166
    .line 2167
    .line 2168
    move-result v14

    .line 2169
    if-eqz v12, :cond_71

    .line 2170
    .line 2171
    const v2, 0xfffbf8

    .line 2172
    .line 2173
    .line 2174
    and-int v2, v27, v2

    .line 2175
    .line 2176
    if-nez v14, :cond_71

    .line 2177
    .line 2178
    or-int/lit8 v2, v2, 0x10

    .line 2179
    .line 2180
    :cond_71
    const/16 v15, 0x800

    .line 2181
    .line 2182
    invoke-static {v2, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 2183
    .line 2184
    .line 2185
    move-result v15

    .line 2186
    iget-object v4, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2187
    .line 2188
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 2189
    .line 2190
    .line 2191
    move-result-object v4

    .line 2192
    iget-boolean v4, v4, Lcom/android/server/permission/access/MutableExternalState;->isLeanback:Z

    .line 2193
    .line 2194
    if-eqz v4, :cond_72

    .line 2195
    .line 2196
    sget-object v4, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NOTIFICATIONS_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 2197
    .line 2198
    iget-object v4, v4, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 2199
    .line 2200
    invoke-virtual {v4, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 2201
    .line 2202
    .line 2203
    move-result v4

    .line 2204
    if-eqz v4, :cond_72

    .line 2205
    .line 2206
    const/4 v4, 0x1

    .line 2207
    goto :goto_3d

    .line 2208
    :cond_72
    const/4 v4, 0x0

    .line 2209
    :goto_3d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 2210
    .line 2211
    .line 2212
    move-result v9

    .line 2213
    const/4 v13, 0x0

    .line 2214
    :goto_3e
    if-ge v13, v9, :cond_74

    .line 2215
    .line 2216
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2217
    .line 2218
    .line 2219
    move-result-object v20

    .line 2220
    check-cast v20, Lcom/android/server/pm/pkg/PackageState;

    .line 2221
    .line 2222
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2223
    .line 2224
    .line 2225
    move-result-object v20

    .line 2226
    invoke-static/range {v20 .. v20}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2227
    .line 2228
    .line 2229
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    .line 2230
    .line 2231
    .line 2232
    move-result-object v0

    .line 2233
    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2234
    .line 2235
    .line 2236
    move-result v0

    .line 2237
    if-eqz v0, :cond_73

    .line 2238
    .line 2239
    const/4 v0, 0x1

    .line 2240
    goto :goto_3f

    .line 2241
    :cond_73
    add-int/lit8 v13, v13, 0x1

    .line 2242
    .line 2243
    move-object/from16 v0, p0

    .line 2244
    .line 2245
    goto :goto_3e

    .line 2246
    :cond_74
    const/4 v0, 0x0

    .line 2247
    :goto_3f
    iget-object v9, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2248
    .line 2249
    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 2250
    .line 2251
    .line 2252
    move-result-object v9

    .line 2253
    iget-object v9, v9, Lcom/android/server/permission/access/MutableExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 2254
    .line 2255
    iget-object v9, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 2256
    .line 2257
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    .line 2259
    .line 2260
    move-result-object v9

    .line 2261
    check-cast v9, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 2262
    .line 2263
    if-eqz v9, :cond_78

    .line 2264
    .line 2265
    iget-object v13, v9, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 2266
    .line 2267
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 2268
    .line 2269
    .line 2270
    move-result v13

    .line 2271
    move/from16 v20, v8

    .line 2272
    .line 2273
    const/4 v8, 0x0

    .line 2274
    :goto_40
    if-ge v8, v13, :cond_79

    .line 2275
    .line 2276
    move/from16 v21, v13

    .line 2277
    .line 2278
    iget-object v13, v9, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 2279
    .line 2280
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2281
    .line 2282
    .line 2283
    move-result-object v13

    .line 2284
    check-cast v13, Ljava/lang/String;

    .line 2285
    .line 2286
    move-object/from16 v22, v9

    .line 2287
    .line 2288
    iget-object v9, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2289
    .line 2290
    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 2291
    .line 2292
    .line 2293
    move-result-object v9

    .line 2294
    invoke-virtual {v9}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 2295
    .line 2296
    .line 2297
    move-result-object v9

    .line 2298
    iget-object v9, v9, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 2299
    .line 2300
    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2301
    .line 2302
    .line 2303
    move-result-object v9

    .line 2304
    check-cast v9, Lcom/android/server/permission/access/permission/Permission;

    .line 2305
    .line 2306
    if-eqz v9, :cond_77

    .line 2307
    .line 2308
    iget-object v9, v9, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2309
    .line 2310
    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 2311
    .line 2312
    .line 2313
    move-result v9

    .line 2314
    const/4 v13, 0x1

    .line 2315
    if-ne v9, v13, :cond_75

    .line 2316
    .line 2317
    move v9, v13

    .line 2318
    goto :goto_41

    .line 2319
    :cond_75
    const/4 v9, 0x0

    .line 2320
    :goto_41
    xor-int/2addr v9, v13

    .line 2321
    if-eqz v9, :cond_76

    .line 2322
    .line 2323
    move v8, v13

    .line 2324
    goto :goto_42

    .line 2325
    :cond_76
    add-int/lit8 v8, v8, 0x1

    .line 2326
    .line 2327
    move/from16 v13, v21

    .line 2328
    .line 2329
    move-object/from16 v9, v22

    .line 2330
    .line 2331
    goto :goto_40

    .line 2332
    :cond_77
    const-string v0, "Unknown source permission "

    .line 2333
    .line 2334
    const-string v1, " in split permissions"

    .line 2335
    .line 2336
    invoke-static {v0, v13, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2337
    .line 2338
    .line 2339
    move-result-object v0

    .line 2340
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 2341
    .line 2342
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2343
    .line 2344
    .line 2345
    move-result-object v0

    .line 2346
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2347
    .line 2348
    .line 2349
    throw v1

    .line 2350
    :cond_78
    move/from16 v20, v8

    .line 2351
    .line 2352
    :cond_79
    const/4 v8, 0x1

    .line 2353
    const/4 v13, 0x0

    .line 2354
    :goto_42
    if-nez v4, :cond_7d

    .line 2355
    .line 2356
    if-eqz v0, :cond_7a

    .line 2357
    .line 2358
    if-eqz v13, :cond_7a

    .line 2359
    .line 2360
    goto :goto_43

    .line 2361
    :cond_7a
    and-int/lit16 v3, v2, -0x801

    .line 2362
    .line 2363
    if-nez v12, :cond_7b

    .line 2364
    .line 2365
    if-eqz v15, :cond_7c

    .line 2366
    .line 2367
    :cond_7b
    const/high16 v4, 0x100000

    .line 2368
    .line 2369
    invoke-static {v3, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 2370
    .line 2371
    .line 2372
    move-result v4

    .line 2373
    if-eqz v4, :cond_7c

    .line 2374
    .line 2375
    const v3, -0x100811

    .line 2376
    .line 2377
    .line 2378
    and-int/2addr v2, v3

    .line 2379
    goto :goto_44

    .line 2380
    :cond_7c
    move v2, v3

    .line 2381
    goto :goto_44

    .line 2382
    :cond_7d
    :goto_43
    or-int/lit16 v4, v2, 0x800

    .line 2383
    .line 2384
    if-eqz v3, :cond_7e

    .line 2385
    .line 2386
    const v3, 0x100800

    .line 2387
    .line 2388
    .line 2389
    or-int/2addr v2, v3

    .line 2390
    goto :goto_44

    .line 2391
    :cond_7e
    move v2, v4

    .line 2392
    :goto_44
    if-nez v0, :cond_81

    .line 2393
    .line 2394
    if-eqz v14, :cond_81

    .line 2395
    .line 2396
    and-int/lit16 v0, v2, -0x1001

    .line 2397
    .line 2398
    sget-object v3, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NEARBY_DEVICES_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 2399
    .line 2400
    iget-object v3, v3, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 2401
    .line 2402
    invoke-virtual {v3, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 2403
    .line 2404
    .line 2405
    move-result v3

    .line 2406
    if-eqz v3, :cond_7f

    .line 2407
    .line 2408
    iget-object v3, v1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 2409
    .line 2410
    const-string v4, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 2411
    .line 2412
    invoke-static {v3, v7, v10, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 2413
    .line 2414
    .line 2415
    move-result v3

    .line 2416
    invoke-static {v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    .line 2417
    .line 2418
    .line 2419
    move-result v4

    .line 2420
    if-eqz v4, :cond_7f

    .line 2421
    .line 2422
    const/16 v4, 0x1000

    .line 2423
    .line 2424
    invoke-static {v3, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 2425
    .line 2426
    .line 2427
    move-result v3

    .line 2428
    if-nez v3, :cond_7f

    .line 2429
    .line 2430
    move v3, v8

    .line 2431
    goto :goto_45

    .line 2432
    :cond_7f
    const/4 v3, 0x0

    .line 2433
    :goto_45
    const/16 v4, 0x180

    .line 2434
    .line 2435
    invoke-static {v0, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    .line 2436
    .line 2437
    .line 2438
    move-result v4

    .line 2439
    if-nez v3, :cond_82

    .line 2440
    .line 2441
    if-eqz v4, :cond_80

    .line 2442
    .line 2443
    goto :goto_47

    .line 2444
    :cond_80
    and-int/lit16 v2, v2, -0x1071

    .line 2445
    .line 2446
    :cond_81
    :goto_46
    const v0, 0x38000

    .line 2447
    .line 2448
    .line 2449
    goto :goto_48

    .line 2450
    :cond_82
    :goto_47
    if-eqz v15, :cond_83

    .line 2451
    .line 2452
    or-int/lit8 v2, v0, 0x10

    .line 2453
    .line 2454
    goto :goto_46

    .line 2455
    :cond_83
    move v2, v0

    .line 2456
    goto :goto_46

    .line 2457
    :goto_48
    invoke-static {v2, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    .line 2458
    .line 2459
    .line 2460
    move-result v3

    .line 2461
    const/high16 v0, 0xc0000

    .line 2462
    .line 2463
    invoke-static {v2, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    .line 2464
    .line 2465
    .line 2466
    move-result v0

    .line 2467
    iget-object v4, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2468
    .line 2469
    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    .line 2470
    .line 2471
    const/4 v9, 0x4

    .line 2472
    invoke-static {v4, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 2473
    .line 2474
    .line 2475
    move-result v4

    .line 2476
    const/16 v9, 0x8

    .line 2477
    .line 2478
    if-nez v4, :cond_84

    .line 2479
    .line 2480
    iget-object v4, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2481
    .line 2482
    iget v4, v4, Landroid/content/pm/PermissionInfo;->flags:I

    .line 2483
    .line 2484
    invoke-static {v4, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 2485
    .line 2486
    .line 2487
    move-result v4

    .line 2488
    if-eqz v4, :cond_85

    .line 2489
    .line 2490
    :cond_84
    if-nez v3, :cond_85

    .line 2491
    .line 2492
    if-nez v0, :cond_85

    .line 2493
    .line 2494
    const/high16 v0, 0x20000

    .line 2495
    .line 2496
    or-int/2addr v2, v0

    .line 2497
    move v3, v8

    .line 2498
    :cond_85
    iget-object v0, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2499
    .line 2500
    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 2501
    .line 2502
    const/4 v4, 0x4

    .line 2503
    invoke-static {v0, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 2504
    .line 2505
    .line 2506
    move-result v0

    .line 2507
    if-eqz v0, :cond_86

    .line 2508
    .line 2509
    if-nez v3, :cond_86

    .line 2510
    .line 2511
    const/high16 v0, 0x40000

    .line 2512
    .line 2513
    or-int/2addr v0, v2

    .line 2514
    goto :goto_49

    .line 2515
    :cond_86
    const v0, -0x40001

    .line 2516
    .line 2517
    .line 2518
    and-int/2addr v0, v2

    .line 2519
    :goto_49
    iget-object v2, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2520
    .line 2521
    iget v2, v2, Landroid/content/pm/PermissionInfo;->flags:I

    .line 2522
    .line 2523
    invoke-static {v2, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 2524
    .line 2525
    .line 2526
    move-result v2

    .line 2527
    if-eqz v2, :cond_8c

    .line 2528
    .line 2529
    if-nez v3, :cond_8c

    .line 2530
    .line 2531
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 2532
    .line 2533
    .line 2534
    move-result v2

    .line 2535
    const/4 v3, 0x0

    .line 2536
    :goto_4a
    if-ge v3, v2, :cond_8b

    .line 2537
    .line 2538
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2539
    .line 2540
    .line 2541
    move-result-object v4

    .line 2542
    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 2543
    .line 2544
    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2545
    .line 2546
    invoke-static {v11, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2547
    .line 2548
    .line 2549
    move-result v4

    .line 2550
    if-eqz v4, :cond_87

    .line 2551
    .line 2552
    move v4, v8

    .line 2553
    goto :goto_4b

    .line 2554
    :cond_87
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2555
    .line 2556
    invoke-static {v11, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2557
    .line 2558
    .line 2559
    move-result v4

    .line 2560
    :goto_4b
    if-eqz v4, :cond_89

    .line 2561
    .line 2562
    const/16 v4, 0x1d

    .line 2563
    .line 2564
    move/from16 v5, v20

    .line 2565
    .line 2566
    if-lt v5, v4, :cond_88

    .line 2567
    .line 2568
    move v4, v8

    .line 2569
    goto :goto_4d

    .line 2570
    :cond_88
    :goto_4c
    const/4 v4, 0x0

    .line 2571
    goto :goto_4d

    .line 2572
    :cond_89
    move/from16 v5, v20

    .line 2573
    .line 2574
    goto :goto_4c

    .line 2575
    :goto_4d
    if-eqz v4, :cond_8a

    .line 2576
    .line 2577
    goto :goto_4f

    .line 2578
    :cond_8a
    add-int/lit8 v3, v3, 0x1

    .line 2579
    .line 2580
    move/from16 v20, v5

    .line 2581
    .line 2582
    goto :goto_4a

    .line 2583
    :cond_8b
    const/high16 v3, 0x80000

    .line 2584
    .line 2585
    or-int/2addr v0, v3

    .line 2586
    :goto_4e
    move v6, v0

    .line 2587
    goto :goto_50

    .line 2588
    :cond_8c
    :goto_4f
    const v2, -0x80001

    .line 2589
    .line 2590
    .line 2591
    and-int/2addr v0, v2

    .line 2592
    goto :goto_4e

    .line 2593
    :goto_50
    const/4 v5, -0x1

    .line 2594
    move-object/from16 v0, p0

    .line 2595
    .line 2596
    move-object/from16 v1, p1

    .line 2597
    .line 2598
    move/from16 v2, p2

    .line 2599
    .line 2600
    move/from16 v3, p3

    .line 2601
    .line 2602
    move-object/from16 v4, p4

    .line 2603
    .line 2604
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 2605
    .line 2606
    .line 2607
    goto :goto_51

    .line 2608
    :cond_8d
    move/from16 v7, p2

    .line 2609
    .line 2610
    move/from16 v10, p3

    .line 2611
    .line 2612
    iget-object v0, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2613
    .line 2614
    iget v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2615
    .line 2616
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2617
    .line 2618
    const-string v2, "Unknown protection level "

    .line 2619
    .line 2620
    const-string v3, "for permission "

    .line 2621
    .line 2622
    const-string v4, " while evaluating permission statefor appId "

    .line 2623
    .line 2624
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2625
    .line 2626
    .line 2627
    move-result-object v0

    .line 2628
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2629
    .line 2630
    .line 2631
    const-string v1, " and userId "

    .line 2632
    .line 2633
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2634
    .line 2635
    .line 2636
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2637
    .line 2638
    .line 2639
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2640
    .line 2641
    .line 2642
    move-result-object v0

    .line 2643
    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    .line 2645
    .line 2646
    :cond_8e
    :goto_51
    return-void
.end method

.method public final evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v6, p1

    .line 2
    .line 3
    iget-object v7, v6, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 4
    .line 5
    invoke-virtual {v7}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    invoke-virtual {v8}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 10
    .line 11
    .line 12
    move-result-object v9

    .line 13
    iget-object v0, v9, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v10

    .line 19
    const/4 v12, 0x0

    .line 20
    :goto_0
    if-ge v12, v10, :cond_4

    .line 21
    .line 22
    iget-object v0, v9, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 23
    .line 24
    invoke-virtual {v0, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 25
    .line 26
    .line 27
    move-result v13

    .line 28
    invoke-virtual {v8}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 29
    .line 30
    .line 31
    move-result-object v14

    .line 32
    iget-object v0, v14, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 35
    .line 36
    .line 37
    move-result v15

    .line 38
    const/4 v5, 0x0

    .line 39
    :goto_1
    if-ge v5, v15, :cond_3

    .line 40
    .line 41
    iget-object v0, v14, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v14, v5}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 52
    .line 53
    invoke-virtual {v7}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 69
    .line 70
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const/4 v3, 0x0

    .line 77
    :goto_2
    if-ge v3, v1, :cond_2

    .line 78
    .line 79
    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v7}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    iget-object v11, v11, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 92
    .line 93
    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 101
    .line 102
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    if-eqz v11, :cond_1

    .line 107
    .line 108
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    move-object/from16 v11, p2

    .line 120
    .line 121
    invoke-interface {v4, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_0

    .line 126
    .line 127
    const/16 v16, 0x0

    .line 128
    .line 129
    move-object/from16 v0, p0

    .line 130
    .line 131
    move-object/from16 v1, p1

    .line 132
    .line 133
    move v3, v13

    .line 134
    move-object/from16 v4, p2

    .line 135
    .line 136
    move/from16 v17, v5

    .line 137
    .line 138
    move-object/from16 v5, v16

    .line 139
    .line 140
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionState(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Lcom/android/server/pm/pkg/PackageState;)V

    .line 141
    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_0
    :goto_3
    move/from16 v17, v5

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_1
    move-object/from16 v11, p2

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 151
    .line 152
    move/from16 v5, v17

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_2
    move-object/from16 v11, p2

    .line 156
    .line 157
    move/from16 v17, v5

    .line 158
    .line 159
    :goto_5
    add-int/lit8 v5, v17, 0x1

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_3
    move-object/from16 v11, p2

    .line 163
    .line 164
    add-int/lit8 v12, v12, 0x1

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_4
    return-void
.end method

.method public final getObjectScheme()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "permission"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final getSubjectScheme()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "uid"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V
    .locals 19

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    move/from16 v8, p2

    .line 4
    .line 5
    move/from16 v9, p3

    .line 6
    .line 7
    new-instance v10, Landroid/util/ArraySet;

    .line 8
    .line 9
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v11, v7, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 13
    .line 14
    invoke-virtual {v11}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, v8}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/16 v2, 0x2710

    .line 38
    .line 39
    move v13, v2

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-ge v2, v1, :cond_2

    .line 42
    .line 43
    iget-object v3, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v11}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    iget-object v4, v4, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    .line 65
    .line 66
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-le v13, v4, :cond_0

    .line 84
    .line 85
    move v13, v4

    .line 86
    :cond_0
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getImplicitPermissions()Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_1

    .line 106
    .line 107
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v10, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 119
    .line 120
    .line 121
    move-result v14

    .line 122
    const/4 v15, 0x0

    .line 123
    :goto_2
    if-ge v15, v14, :cond_d

    .line 124
    .line 125
    invoke-static {v10, v15}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    move-object v4, v0

    .line 130
    check-cast v4, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v11}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 141
    .line 142
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    .line 147
    .line 148
    const-string v1, " in split permissions"

    .line 149
    .line 150
    if-eqz v0, :cond_c

    .line 151
    .line 152
    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    const/4 v2, 0x1

    .line 159
    if-ne v0, v2, :cond_b

    .line 160
    .line 161
    iget-object v0, v7, Lcom/android/server/permission/access/MutateStateScope;->oldState:Lcom/android/server/permission/access/AccessState;

    .line 162
    .line 163
    invoke-static {v0, v8, v9, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_b

    .line 168
    .line 169
    invoke-virtual {v11}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-object v0, v0, Lcom/android/server/permission/access/MutableExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 174
    .line 175
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 176
    .line 177
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 182
    .line 183
    if-nez v0, :cond_3

    .line 184
    .line 185
    goto/16 :goto_7

    .line 186
    .line 187
    :cond_3
    iget-object v3, v7, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 188
    .line 189
    invoke-static {v3, v8, v9, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    iget-object v6, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    const/4 v2, 0x0

    .line 200
    :goto_3
    if-ge v2, v6, :cond_9

    .line 201
    .line 202
    iget-object v12, v0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    check-cast v12, Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v11}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 211
    .line 212
    .line 213
    move-result-object v16

    .line 214
    move-object/from16 v17, v0

    .line 215
    .line 216
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 221
    .line 222
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    .line 227
    .line 228
    if-eqz v0, :cond_8

    .line 229
    .line 230
    invoke-static {v3, v8, v9, v12}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    .line 235
    .line 236
    .line 237
    move-result v12

    .line 238
    move-object/from16 v16, v3

    .line 239
    .line 240
    invoke-static {v5}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-eqz v12, :cond_4

    .line 245
    .line 246
    if-nez v3, :cond_4

    .line 247
    .line 248
    const/16 v18, 0x1

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_4
    const/16 v18, 0x0

    .line 252
    .line 253
    :goto_4
    if-eq v12, v3, :cond_5

    .line 254
    .line 255
    if-eqz v18, :cond_7

    .line 256
    .line 257
    :cond_5
    if-eqz v18, :cond_6

    .line 258
    .line 259
    const/4 v5, 0x0

    .line 260
    :cond_6
    const v3, 0xfffff8

    .line 261
    .line 262
    .line 263
    and-int/2addr v0, v3

    .line 264
    or-int/2addr v0, v5

    .line 265
    move v5, v0

    .line 266
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 267
    .line 268
    move-object/from16 v3, v16

    .line 269
    .line 270
    move-object/from16 v0, v17

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_8
    const-string v0, "Unknown source permission "

    .line 274
    .line 275
    invoke-static {v0, v12, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw v1

    .line 289
    :cond_9
    const/16 v0, 0x17

    .line 290
    .line 291
    if-lt v13, v0, :cond_a

    .line 292
    .line 293
    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->NO_IMPLICIT_FLAG_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 294
    .line 295
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 296
    .line 297
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-eqz v0, :cond_a

    .line 302
    .line 303
    and-int/lit16 v0, v5, -0x1001

    .line 304
    .line 305
    :goto_5
    move v6, v0

    .line 306
    goto :goto_6

    .line 307
    :cond_a
    or-int/lit16 v0, v5, 0x1000

    .line 308
    .line 309
    goto :goto_5

    .line 310
    :goto_6
    const/4 v5, -0x1

    .line 311
    move-object/from16 v0, p0

    .line 312
    .line 313
    move-object/from16 v1, p1

    .line 314
    .line 315
    move/from16 v2, p2

    .line 316
    .line 317
    move/from16 v3, p3

    .line 318
    .line 319
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 320
    .line 321
    .line 322
    :cond_b
    :goto_7
    add-int/lit8 v15, v15, 0x1

    .line 323
    .line 324
    goto/16 :goto_2

    .line 325
    .line 326
    :cond_c
    const-string v0, "Unknown implicit permission "

    .line 327
    .line 328
    invoke-static {v0, v4, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v1

    .line 342
    :cond_d
    return-void
.end method

.method public final migrateSystemState(Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->migration:Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-class p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    check-cast p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    .line 16
    .line 17
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getLegacyPermissions()Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissions()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissionTrees()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    :cond_0
    invoke-static {p1}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/content/pm/PackageManagerInternal;->getLegacyPermissions()Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissions()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    new-instance v2, Landroid/util/ArrayMap;

    .line 76
    .line 77
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v3, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    invoke-direct {v3, v2}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    .line 83
    .line 84
    .line 85
    check-cast v1, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->migratePermissions(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/util/Map;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p1, p1, Lcom/android/server/permission/access/MutableSystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 104
    .line 105
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/content/pm/PackageManagerInternal;->getLegacyPermissions()Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->getPermissionTrees()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    new-instance v0, Landroid/util/ArrayMap;

    .line 120
    .line 121
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v1, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda0;

    .line 125
    .line 126
    invoke-direct {v1, v0}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    .line 127
    .line 128
    .line 129
    check-cast p0, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 132
    .line 133
    .line 134
    invoke-static {p1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionMigration;->migratePermissions(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/util/Map;)V

    .line 135
    .line 136
    .line 137
    :cond_1
    return-void
.end method

.method public final migrateUserState(Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 16

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    move-object/from16 v3, p0

    .line 6
    .line 7
    iget-object v3, v3, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->migration:Lcom/android/server/permission/access/permission/AppIdPermissionMigration;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-class v3, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    .line 13
    .line 14
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    check-cast v3, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;->getLegacyPermissionStateVersion(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v5, -0x1

    .line 28
    if-le v4, v5, :cond_c

    .line 29
    .line 30
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 31
    .line 32
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 37
    .line 38
    new-instance v5, Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 41
    .line 42
    .line 43
    check-cast v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 44
    .line 45
    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 46
    .line 47
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 48
    .line 49
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 50
    .line 51
    monitor-enter v6

    .line 52
    :try_start_0
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 53
    .line 54
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 55
    .line 56
    invoke-virtual {v4, v0}, Lcom/android/server/pm/Settings;->getLegacyPermissionsState(I)Lcom/android/permission/persistence/RuntimePermissionsState;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 61
    const-class v6, Lcom/android/server/pm/PackageManagerLocal;

    .line 62
    .line 63
    invoke-static {v6}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Lcom/android/server/pm/PackageManagerLocal;

    .line 68
    .line 69
    invoke-interface {v6}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    :try_start_1
    invoke-interface {v6}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v4}, Lcom/android/permission/persistence/RuntimePermissionsState;->getPackagePermissions()Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    new-instance v9, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;

    .line 82
    .line 83
    invoke-direct {v9, v3, v7, v5, v1}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;Ljava/util/Map;Ljava/util/Map;I)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v8, v9}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {v6}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getSharedUsers()Ljava/util/Map;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v4}, Lcom/android/permission/persistence/RuntimePermissionsState;->getSharedUserPermissions()Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    new-instance v8, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;

    .line 98
    .line 99
    invoke-direct {v8, v3, v7, v5, v2}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;Ljava/util/Map;Ljava/util/Map;I)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v4, v8}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    .line 105
    invoke-interface {v6}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    .line 106
    .line 107
    .line 108
    invoke-static/range {p2 .. p2}, Lcom/android/server/permission/access/util/PackageVersionMigration;->getVersion$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    move-object/from16 v4, p1

    .line 113
    .line 114
    invoke-virtual {v4, v0, v2}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v6, v0, Lcom/android/server/permission/access/MutableUserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 122
    .line 123
    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    check-cast v6, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 128
    .line 129
    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    if-eqz v7, :cond_c

    .line 142
    .line 143
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    check-cast v7, Ljava/util/Map$Entry;

    .line 148
    .line 149
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    check-cast v8, Ljava/lang/Integer;

    .line 154
    .line 155
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    check-cast v7, Ljava/util/Map;

    .line 160
    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    invoke-virtual {v9}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    invoke-virtual {v9, v10}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    check-cast v9, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 178
    .line 179
    if-nez v9, :cond_0

    .line 180
    .line 181
    const-string v7, "AppIdPermissionMigration"

    .line 182
    .line 183
    new-instance v9, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v10, "Dropping unknown app ID "

    .line 186
    .line 187
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v8, " when migrating permission state"

    .line 194
    .line 195
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    goto/16 :goto_7

    .line 206
    .line 207
    :cond_0
    new-instance v10, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 208
    .line 209
    invoke-direct {v10}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    invoke-static {v6, v11, v10}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 217
    .line 218
    .line 219
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v11

    .line 231
    if-eqz v11, :cond_9

    .line 232
    .line 233
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v11

    .line 237
    check-cast v11, Ljava/util/Map$Entry;

    .line 238
    .line 239
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v12

    .line 243
    check-cast v12, Ljava/lang/String;

    .line 244
    .line 245
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    check-cast v11, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;

    .line 250
    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    invoke-virtual {v13}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 256
    .line 257
    .line 258
    move-result-object v13

    .line 259
    iget-object v13, v13, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 260
    .line 261
    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v13

    .line 265
    check-cast v13, Lcom/android/server/permission/access/permission/Permission;

    .line 266
    .line 267
    if-nez v13, :cond_1

    .line 268
    .line 269
    const-string v11, "AppIdPermissionMigration"

    .line 270
    .line 271
    new-instance v13, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v14, "Dropping unknown permission "

    .line 274
    .line 275
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v12, " for app ID "

    .line 282
    .line 283
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v12, " when migrating permission state"

    .line 290
    .line 291
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v12

    .line 298
    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    goto/16 :goto_5

    .line 302
    .line 303
    :cond_1
    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 304
    .line 305
    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 306
    .line 307
    .line 308
    move-result v14

    .line 309
    const/4 v15, 0x2

    .line 310
    if-nez v14, :cond_2

    .line 311
    .line 312
    iget-boolean v14, v11, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mGranted:Z

    .line 313
    .line 314
    if-eqz v14, :cond_8

    .line 315
    .line 316
    move v15, v2

    .line 317
    goto :goto_4

    .line 318
    :cond_2
    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 319
    .line 320
    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 321
    .line 322
    .line 323
    move-result v14

    .line 324
    const/4 v1, 0x4

    .line 325
    if-ne v14, v15, :cond_3

    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_3
    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 329
    .line 330
    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 331
    .line 332
    .line 333
    move-result v14

    .line 334
    if-ne v14, v1, :cond_7

    .line 335
    .line 336
    :goto_2
    iget-boolean v14, v11, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mGranted:Z

    .line 337
    .line 338
    if-eqz v14, :cond_6

    .line 339
    .line 340
    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 341
    .line 342
    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 343
    .line 344
    .line 345
    move-result v14

    .line 346
    const/16 v15, 0x20

    .line 347
    .line 348
    invoke-static {v14, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 349
    .line 350
    .line 351
    move-result v14

    .line 352
    if-nez v14, :cond_5

    .line 353
    .line 354
    iget-object v14, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 355
    .line 356
    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 357
    .line 358
    .line 359
    move-result v14

    .line 360
    const/high16 v15, 0x4000000

    .line 361
    .line 362
    invoke-static {v14, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 363
    .line 364
    .line 365
    move-result v14

    .line 366
    if-eqz v14, :cond_4

    .line 367
    .line 368
    goto :goto_3

    .line 369
    :cond_4
    move v15, v1

    .line 370
    goto :goto_4

    .line 371
    :cond_5
    :goto_3
    const/16 v15, 0x14

    .line 372
    .line 373
    goto :goto_4

    .line 374
    :cond_6
    const/4 v15, 0x0

    .line 375
    goto :goto_4

    .line 376
    :cond_7
    iget-object v1, v13, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 377
    .line 378
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-ne v1, v2, :cond_6

    .line 383
    .line 384
    iget-boolean v1, v11, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mGranted:Z

    .line 385
    .line 386
    if-eqz v1, :cond_6

    .line 387
    .line 388
    const/16 v15, 0x10

    .line 389
    .line 390
    :cond_8
    :goto_4
    iget v1, v11, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermissionState;->mFlags:I

    .line 391
    .line 392
    invoke-static {v13, v15, v1, v1}, Lcom/android/server/permission/access/permission/PermissionFlags;->updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-virtual {v10, v12, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    :goto_5
    const/4 v1, 0x0

    .line 404
    goto/16 :goto_1

    .line 405
    .line 406
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    iget-object v7, v9, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 411
    .line 412
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 413
    .line 414
    .line 415
    move-result v7

    .line 416
    const/4 v8, 0x0

    .line 417
    :goto_6
    if-ge v8, v7, :cond_a

    .line 418
    .line 419
    iget-object v10, v9, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 420
    .line 421
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v10

    .line 425
    check-cast v10, Ljava/lang/String;

    .line 426
    .line 427
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 428
    .line 429
    .line 430
    move-result-object v11

    .line 431
    invoke-virtual {v1, v10, v11}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    add-int/2addr v8, v2

    .line 435
    goto :goto_6

    .line 436
    :cond_a
    :goto_7
    const/4 v1, 0x0

    .line 437
    goto/16 :goto_0

    .line 438
    .line 439
    :catchall_0
    move-exception v0

    .line 440
    move-object v1, v0

    .line 441
    if-eqz v6, :cond_b

    .line 442
    .line 443
    :try_start_2
    invoke-interface {v6}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 444
    .line 445
    .line 446
    goto :goto_8

    .line 447
    :catchall_1
    move-exception v0

    .line 448
    move-object v2, v0

    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 450
    .line 451
    .line 452
    :cond_b
    :goto_8
    throw v1

    .line 453
    :catchall_2
    move-exception v0

    .line 454
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 455
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 456
    .line 457
    throw v0

    .line 458
    :cond_c
    return-void
.end method

.method public final onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 3

    .line 1
    iget-object p0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->keyAt(I)I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/permission/access/MutableUserState;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v2, v2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->contains(I)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-static {p0, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserStateAt$default(Lcom/android/server/permission/access/MutableAccessState;I)Lcom/android/server/permission/access/MutableUserState;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v2, v2, Lcom/android/server/permission/access/MutableUserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 48
    .line 49
    invoke-static {v2, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    .line 50
    .line 51
    .line 52
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method public final onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissionGroups(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {p0, p1, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0, p1, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x0

    .line 43
    move v3, v2

    .line 44
    :goto_0
    if-ge v3, v1, :cond_0

    .line 45
    .line 46
    iget-object v4, v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 47
    .line 48
    invoke-static {v4, v3}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p0, p1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    :goto_1
    if-ge v2, v1, :cond_1

    .line 80
    .line 81
    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 82
    .line 83
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    .line 92
    .line 93
    .line 94
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    return-void
.end method

.method public final onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V
    .locals 9

    .line 1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_7

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    iget-object v2, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iget-object v3, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    move-object v5, v3

    .line 58
    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    .line 59
    .line 60
    if-nez v5, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object v3, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 64
    .line 65
    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    .line 66
    .line 67
    const/4 v4, 0x4

    .line 68
    invoke-static {v3, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_4

    .line 73
    .line 74
    iget-object v3, v5, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 75
    .line 76
    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    .line 77
    .line 78
    const/16 v4, 0x8

    .line 79
    .line 80
    invoke-static {v3, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 102
    .line 103
    iget-object v4, v3, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    const/4 v6, 0x0

    .line 110
    :goto_1
    if-ge v6, v4, :cond_6

    .line 111
    .line 112
    iget-object v7, v3, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    check-cast v7, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    iget-object v8, v8, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 125
    .line 126
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    .line 134
    .line 135
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    if-eqz v8, :cond_5

    .line 140
    .line 141
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-eqz v8, :cond_5

    .line 146
    .line 147
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-eqz v7, :cond_5

    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_6
    const/high16 v6, 0x20000

    .line 170
    .line 171
    const/4 v7, 0x0

    .line 172
    move-object v1, p0

    .line 173
    move-object v2, p1

    .line 174
    move v3, p2

    .line 175
    move v4, p3

    .line 176
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionExemptFlags(Lcom/android/server/permission/access/MutateStateScope;IILcom/android/server/permission/access/permission/Permission;II)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_7
    :goto_2
    return-void
.end method

.method public final onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    xor-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object p2, p2, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->contains(I)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0, p1, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p2, v1, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    const/4 p3, 0x0

    .line 51
    :goto_0
    if-ge p3, p2, :cond_1

    .line 52
    .line 53
    iget-object v0, v1, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 54
    .line 55
    invoke-static {v0, p3}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 p3, p3, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    return-void

    .line 68
    :cond_2
    const-string p0, "Package "

    .line 69
    .line 70
    const-string p1, " reported as removed before disabled system package is enabled"

    .line 71
    .line 72
    invoke-static {p0, p2, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method public final onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onStateMutated()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;->onStateMutated()V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/List;Z)V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    iget-object v4, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 13
    .line 14
    if-ge v3, v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    check-cast v5, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v4, v4, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/android/server/pm/pkg/PackageState;

    .line 33
    .line 34
    if-nez v4, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-static {p1, v4, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->adoptPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissionGroups(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermissions(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {p0, p1, v5, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {p0, p1, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual {p0, p1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V

    .line 65
    .line 66
    .line 67
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    move v3, v2

    .line 77
    :goto_2
    if-ge v3, v1, :cond_2

    .line 78
    .line 79
    iget-object v5, v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 80
    .line 81
    invoke-static {v5, v3}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p0, p1, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluatePermissionStateForAllPackages(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    move v1, v2

    .line 98
    :goto_3
    if-ge v1, v0, :cond_5

    .line 99
    .line 100
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    iget-object v5, v5, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 111
    .line 112
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Lcom/android/server/pm/pkg/PackageState;

    .line 117
    .line 118
    if-nez v3, :cond_3

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_3
    if-eqz p3, :cond_4

    .line 122
    .line 123
    move-object v5, v3

    .line 124
    goto :goto_4

    .line 125
    :cond_4
    const/4 v5, 0x0

    .line 126
    :goto_4
    invoke-virtual {p0, p1, v3, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackage(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/PackageState;)V

    .line 127
    .line 128
    .line 129
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result p3

    .line 136
    move v0, v2

    .line 137
    :goto_6
    if-ge v0, p3, :cond_8

    .line 138
    .line 139
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    iget-object v3, v3, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 150
    .line 151
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 156
    .line 157
    if-nez v1, :cond_6

    .line 158
    .line 159
    goto :goto_8

    .line 160
    :cond_6
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    iget-object v5, v3, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 169
    .line 170
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    move v6, v2

    .line 175
    :goto_7
    if-ge v6, v5, :cond_7

    .line 176
    .line 177
    iget-object v7, v3, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 178
    .line 179
    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 180
    .line 181
    .line 182
    move-result v7

    .line 183
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    invoke-virtual {p0, p1, v8, v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    .line 188
    .line 189
    .line 190
    add-int/lit8 v6, v6, 0x1

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_7
    :goto_8
    add-int/lit8 v0, v0, 0x1

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_8
    return-void
.end method

.method public final onSystemReady()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->privilegedPermissionAllowlistViolations:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "We detected priv-permissions violations from below apps:"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-ge v2, v1, :cond_0

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p0, "\\nPrivileged apps MUST put their \'signature|privileged\' permissions into the allowlist.\nPlease ASSIGN this issue to above apps to apply.\n"

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p0, "AppIdPermissionPolicy"

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfo(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public final onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/android/server/pm/pkg/PackageState;

    .line 34
    .line 35
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->evaluateAllPermissionStatesForPackageAndUser(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILcom/android/server/pm/pkg/PackageState;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v2, 0x0

    .line 62
    :goto_1
    if-ge v2, v1, :cond_2

    .line 63
    .line 64
    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 75
    .line 76
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->inheritImplicitPermissionStates(Lcom/android/server/permission/access/MutateStateScope;II)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    return-void
.end method

.method public final parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string/jumbo v0, "permission-trees"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    invoke-static {p1, p2, p0}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->parsePermissions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string/jumbo v0, "permissions"

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    invoke-static {p1, p2, p0}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->parsePermissions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public final parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "app-id-permissions"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1d

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    move-object/from16 v2, p2

    .line 24
    .line 25
    move/from16 v3, p3

    .line 26
    .line 27
    invoke-virtual {v2, v3, v1}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v1, Lcom/android/server/permission/access/MutableUserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const-string v5, "Unexpected event type "

    .line 47
    .line 48
    const/4 v6, 0x2

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    if-ne v4, v6, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 55
    .line 56
    invoke-static {v4, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const/4 v7, 0x3

    .line 69
    const/4 v8, 0x1

    .line 70
    if-eq v4, v8, :cond_2

    .line 71
    .line 72
    if-eq v4, v6, :cond_2

    .line 73
    .line 74
    if-eq v4, v7, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    const-string v9, "AppIdPermissionPersistence"

    .line 82
    .line 83
    const-string v10, " when parsing permission state"

    .line 84
    .line 85
    if-eq v4, v8, :cond_1b

    .line 86
    .line 87
    if-eq v4, v6, :cond_4

    .line 88
    .line 89
    if-ne v4, v7, :cond_3

    .line 90
    .line 91
    goto/16 :goto_e

    .line 92
    .line 93
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 94
    .line 95
    invoke-static {v4, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    const-string v12, "app-id"

    .line 112
    .line 113
    invoke-static {v11, v12}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    const-string v12, ", expected "

    .line 118
    .line 119
    const-string v13, "Unexpected post-block depth "

    .line 120
    .line 121
    const-string v14, "Ignoring unknown tag "

    .line 122
    .line 123
    if-eqz v11, :cond_12

    .line 124
    .line 125
    const/4 v11, 0x0

    .line 126
    const-string v15, "id"

    .line 127
    .line 128
    invoke-virtual {v0, v11, v15}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v15

    .line 132
    new-instance v11, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 133
    .line 134
    invoke-direct {v11}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-static {v3, v15, v11}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    if-eqz v15, :cond_6

    .line 145
    .line 146
    if-ne v15, v6, :cond_5

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 150
    .line 151
    invoke-static {v15, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    if-eq v15, v8, :cond_7

    .line 164
    .line 165
    if-eq v15, v6, :cond_7

    .line 166
    .line 167
    if-eq v15, v7, :cond_7

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 171
    .line 172
    .line 173
    move-result v15

    .line 174
    if-eq v15, v8, :cond_13

    .line 175
    .line 176
    if-eq v15, v6, :cond_9

    .line 177
    .line 178
    if-ne v15, v7, :cond_8

    .line 179
    .line 180
    goto/16 :goto_9

    .line 181
    .line 182
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 183
    .line 184
    invoke-static {v15, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 193
    .line 194
    .line 195
    move-result v15

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    const-string/jumbo v7, "permission"

    .line 201
    .line 202
    .line 203
    invoke-static {v8, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    if-eqz v7, :cond_a

    .line 208
    .line 209
    const-string/jumbo v7, "name"

    .line 210
    .line 211
    .line 212
    const/4 v8, 0x0

    .line 213
    invoke-virtual {v0, v8, v7}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    invoke-virtual {v0, v7}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    const-string v6, "intern(...)"

    .line 226
    .line 227
    invoke-static {v6, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    const-string v6, "flags"

    .line 231
    .line 232
    invoke-virtual {v0, v8, v6}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-virtual {v11, v7, v6}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_a
    const/4 v8, 0x0

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-static {v14, v6, v10, v9}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-ne v6, v15, :cond_11

    .line 257
    .line 258
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    const/4 v7, 0x2

    .line 263
    if-eq v6, v7, :cond_10

    .line 264
    .line 265
    const/4 v8, 0x3

    .line 266
    if-ne v6, v8, :cond_f

    .line 267
    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    if-le v6, v15, :cond_d

    .line 273
    .line 274
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    const/4 v8, 0x1

    .line 279
    if-eq v6, v8, :cond_b

    .line 280
    .line 281
    if-eq v6, v7, :cond_b

    .line 282
    .line 283
    const/4 v7, 0x3

    .line 284
    if-eq v6, v7, :cond_c

    .line 285
    .line 286
    move v8, v7

    .line 287
    const/4 v7, 0x2

    .line 288
    goto :goto_6

    .line 289
    :cond_b
    const/4 v7, 0x3

    .line 290
    :cond_c
    const/4 v8, 0x0

    .line 291
    goto :goto_5

    .line 292
    :cond_d
    move v7, v8

    .line 293
    :goto_7
    const/4 v8, 0x1

    .line 294
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    if-eq v6, v8, :cond_e

    .line 299
    .line 300
    const/4 v8, 0x2

    .line 301
    if-eq v6, v8, :cond_e

    .line 302
    .line 303
    if-eq v6, v7, :cond_e

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_e
    const/4 v6, 0x2

    .line 307
    const/4 v7, 0x3

    .line 308
    const/4 v8, 0x1

    .line 309
    goto/16 :goto_3

    .line 310
    .line 311
    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 312
    .line 313
    invoke-static {v6, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw v0

    .line 321
    :cond_10
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    const/4 v7, 0x1

    .line 326
    if-eq v6, v7, :cond_c

    .line 327
    .line 328
    const/4 v7, 0x2

    .line 329
    if-eq v6, v7, :cond_c

    .line 330
    .line 331
    const/4 v7, 0x3

    .line 332
    if-eq v6, v7, :cond_c

    .line 333
    .line 334
    goto :goto_8

    .line 335
    :cond_11
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 336
    .line 337
    invoke-static {v6, v15, v13, v12}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw v0

    .line 345
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    invoke-static {v14, v6, v10, v9}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    :cond_13
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 353
    .line 354
    .line 355
    move-result v6

    .line 356
    if-ne v6, v4, :cond_1a

    .line 357
    .line 358
    :cond_14
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    const/4 v7, 0x2

    .line 363
    if-eq v6, v7, :cond_18

    .line 364
    .line 365
    const/4 v8, 0x3

    .line 366
    if-ne v6, v8, :cond_17

    .line 367
    .line 368
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    .line 369
    .line 370
    .line 371
    move-result v6

    .line 372
    if-le v6, v4, :cond_15

    .line 373
    .line 374
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 375
    .line 376
    .line 377
    move-result v6

    .line 378
    const/4 v9, 0x1

    .line 379
    if-eq v6, v9, :cond_14

    .line 380
    .line 381
    if-eq v6, v7, :cond_14

    .line 382
    .line 383
    if-eq v6, v8, :cond_14

    .line 384
    .line 385
    goto :goto_b

    .line 386
    :cond_15
    :goto_c
    const/4 v9, 0x1

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    if-eq v4, v9, :cond_16

    .line 392
    .line 393
    if-eq v4, v7, :cond_16

    .line 394
    .line 395
    if-eq v4, v8, :cond_16

    .line 396
    .line 397
    const/4 v7, 0x2

    .line 398
    goto :goto_c

    .line 399
    :cond_16
    const/4 v6, 0x2

    .line 400
    const/4 v7, 0x3

    .line 401
    const/4 v8, 0x1

    .line 402
    goto/16 :goto_1

    .line 403
    .line 404
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 405
    .line 406
    invoke-static {v6, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    throw v0

    .line 414
    :cond_18
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    .line 415
    .line 416
    .line 417
    move-result v6

    .line 418
    const/4 v7, 0x1

    .line 419
    if-eq v6, v7, :cond_19

    .line 420
    .line 421
    const/4 v7, 0x2

    .line 422
    const/4 v8, 0x3

    .line 423
    if-eq v6, v7, :cond_14

    .line 424
    .line 425
    if-eq v6, v8, :cond_14

    .line 426
    .line 427
    goto :goto_d

    .line 428
    :cond_19
    const/4 v7, 0x2

    .line 429
    const/4 v8, 0x3

    .line 430
    goto :goto_a

    .line 431
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 432
    .line 433
    invoke-static {v6, v4, v13, v12}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    throw v0

    .line 441
    :cond_1b
    :goto_e
    iget-object v0, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 442
    .line 443
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    const/4 v4, 0x1

    .line 448
    sub-int/2addr v0, v4

    .line 449
    :goto_f
    const/4 v4, -0x1

    .line 450
    if-ge v4, v0, :cond_1d

    .line 451
    .line 452
    iget-object v4, v3, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 453
    .line 454
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 455
    .line 456
    .line 457
    move-result v4

    .line 458
    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 463
    .line 464
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    invoke-virtual {v5}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    iget-object v5, v5, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 473
    .line 474
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->contains(I)Z

    .line 475
    .line 476
    .line 477
    move-result v5

    .line 478
    if-nez v5, :cond_1c

    .line 479
    .line 480
    const-string v5, "Dropping unknown app ID "

    .line 481
    .line 482
    invoke-static {v4, v5, v10, v9}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->removeAt$1(I)V

    .line 486
    .line 487
    .line 488
    const/4 v4, 0x1

    .line 489
    invoke-virtual {v1, v4}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    .line 490
    .line 491
    .line 492
    goto :goto_10

    .line 493
    :cond_1c
    const/4 v4, 0x1

    .line 494
    :goto_10
    add-int/lit8 v0, v0, -0x1

    .line 495
    .line 496
    goto :goto_f

    .line 497
    :cond_1d
    return-void
.end method

.method public final resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_c

    .line 42
    .line 43
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    move-object v7, v3

    .line 48
    check-cast v7, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget-object v3, v3, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 59
    .line 60
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/android/server/permission/access/permission/Permission;

    .line 65
    .line 66
    if-nez v3, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    iget-object v4, v3, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 70
    .line 71
    invoke-virtual {v4}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    const/4 v5, 0x1

    .line 76
    if-ne v4, v5, :cond_2

    .line 77
    .line 78
    iget-object v3, v3, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 79
    .line 80
    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    .line 81
    .line 82
    const/4 v4, 0x2

    .line 83
    invoke-static {v3, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3, v1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 106
    .line 107
    iget-object v4, v3, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    const/4 v5, 0x0

    .line 114
    move v6, v5

    .line 115
    :goto_1
    if-ge v6, v4, :cond_6

    .line 116
    .line 117
    iget-object v8, v3, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    check-cast v8, Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    iget-object v9, v9, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 130
    .line 131
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    .line 139
    .line 140
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    if-eqz v9, :cond_5

    .line 145
    .line 146
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    invoke-static {v9, p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-nez v9, :cond_5

    .line 155
    .line 156
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    if-eqz v8, :cond_5

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_6
    iget-object v3, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 179
    .line 180
    invoke-static {v3, v1, p3, v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    const/16 v4, 0x180

    .line 185
    .line 186
    invoke-static {v3, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_7

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_7
    const/16 v4, 0x8

    .line 195
    .line 196
    invoke-static {v3, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-nez v4, :cond_9

    .line 201
    .line 202
    const/16 v4, 0x200

    .line 203
    .line 204
    invoke-static {v3, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    if-eqz v4, :cond_8

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_8
    and-int/lit8 v3, v3, -0x11

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_9
    :goto_2
    or-int/lit8 v3, v3, 0x10

    .line 215
    .line 216
    :goto_3
    const v4, -0xf00061

    .line 217
    .line 218
    .line 219
    and-int/2addr v3, v4

    .line 220
    const/16 v4, 0x400

    .line 221
    .line 222
    invoke-static {v3, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    if-eqz v4, :cond_b

    .line 227
    .line 228
    or-int/lit16 v3, v3, 0x1000

    .line 229
    .line 230
    sget-boolean v4, Lcom/samsung/android/rune/PMRune;->PERM_CHINA_COMPAT_LOW_SDK:Z

    .line 231
    .line 232
    if-eqz v4, :cond_a

    .line 233
    .line 234
    sget-object v4, Lcom/samsung/android/rune/PMRune;->PERM_CHINA_COMPAT_LOW_SDK_EXCEPTION:Landroid/util/ArraySet;

    .line 235
    .line 236
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-nez v4, :cond_a

    .line 245
    .line 246
    const/high16 v5, 0x100000

    .line 247
    .line 248
    :cond_a
    or-int/2addr v3, v5

    .line 249
    :cond_b
    move v9, v3

    .line 250
    const/4 v8, -0x1

    .line 251
    move-object v3, p0

    .line 252
    move-object v4, p1

    .line 253
    move v5, v1

    .line 254
    move v6, p3

    .line 255
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 256
    .line 257
    .line 258
    goto/16 :goto_0

    .line 259
    .line 260
    :cond_c
    return-void
.end method

.method public final revokePermissionsOnPackageUpdate(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 16

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    move/from16 v8, p2

    .line 4
    .line 5
    iget-object v0, v7, Lcom/android/server/permission/access/MutateStateScope;->oldState:Lcom/android/server/permission/access/AccessState;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v1, v1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->contains(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_f

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, v8}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 39
    .line 40
    iget-object v2, v1, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x0

    .line 47
    move v4, v3

    .line 48
    :goto_0
    if-ge v4, v2, :cond_f

    .line 49
    .line 50
    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    iget-object v6, v6, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 63
    .line 64
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    check-cast v5, Lcom/android/server/pm/pkg/PackageState;

    .line 72
    .line 73
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-eqz v5, :cond_e

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1, v8}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 95
    .line 96
    new-instance v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;

    .line 97
    .line 98
    invoke-direct {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 99
    .line 100
    .line 101
    const/16 v4, 0x2710

    .line 102
    .line 103
    iput v4, v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    .line 104
    .line 105
    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    move v6, v3

    .line 112
    :goto_1
    if-ge v6, v5, :cond_1

    .line 113
    .line 114
    iget-object v9, v1, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    iget v10, v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    .line 121
    .line 122
    check-cast v9, Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    iget-object v11, v11, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 129
    .line 130
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    .line 138
    .line 139
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    if-eqz v11, :cond_0

    .line 144
    .line 145
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-le v10, v9, :cond_0

    .line 157
    .line 158
    move v10, v9

    .line 159
    :cond_0
    iput v10, v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    .line 160
    .line 161
    add-int/lit8 v6, v6, 0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_1
    iget v1, v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    .line 165
    .line 166
    iget-object v2, v7, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-virtual {v5}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v5, v8}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 184
    .line 185
    new-instance v6, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;

    .line 186
    .line 187
    invoke-direct {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 188
    .line 189
    .line 190
    iput v4, v6, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    .line 191
    .line 192
    iget-object v4, v5, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    move v9, v3

    .line 199
    :goto_2
    if-ge v9, v4, :cond_3

    .line 200
    .line 201
    iget-object v10, v5, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    iget v11, v6, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    .line 208
    .line 209
    check-cast v10, Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    iget-object v12, v12, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 216
    .line 217
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    check-cast v10, Lcom/android/server/pm/pkg/PackageState;

    .line 225
    .line 226
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    if-eqz v12, :cond_2

    .line 231
    .line 232
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 233
    .line 234
    .line 235
    move-result-object v10

    .line 236
    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    if-le v11, v10, :cond_2

    .line 244
    .line 245
    move v11, v10

    .line 246
    :cond_2
    iput v11, v6, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    .line 247
    .line 248
    add-int/lit8 v9, v9, 0x1

    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_3
    iget v4, v6, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    .line 252
    .line 253
    const/4 v9, 0x1

    .line 254
    const/16 v5, 0x1d

    .line 255
    .line 256
    if-lt v1, v5, :cond_4

    .line 257
    .line 258
    if-ge v4, v5, :cond_4

    .line 259
    .line 260
    move v6, v9

    .line 261
    goto :goto_3

    .line 262
    :cond_4
    move v6, v3

    .line 263
    :goto_3
    if-ge v1, v5, :cond_5

    .line 264
    .line 265
    if-lt v4, v5, :cond_5

    .line 266
    .line 267
    move v1, v9

    .line 268
    goto :goto_4

    .line 269
    :cond_5
    move v1, v3

    .line 270
    :goto_4
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-virtual {v4, v8}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 286
    .line 287
    iget-object v5, v4, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    move v10, v3

    .line 294
    :goto_5
    if-ge v10, v5, :cond_7

    .line 295
    .line 296
    iget-object v11, v4, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v11

    .line 302
    check-cast v11, Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 305
    .line 306
    .line 307
    move-result-object v12

    .line 308
    iget-object v12, v12, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 309
    .line 310
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v11

    .line 314
    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    check-cast v11, Lcom/android/server/pm/pkg/PackageState;

    .line 318
    .line 319
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 320
    .line 321
    .line 322
    move-result-object v12

    .line 323
    if-eqz v12, :cond_6

    .line 324
    .line 325
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 326
    .line 327
    .line 328
    move-result-object v11

    .line 329
    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    .line 333
    .line 334
    .line 335
    move-result v11

    .line 336
    if-eqz v11, :cond_6

    .line 337
    .line 338
    move v0, v9

    .line 339
    goto :goto_6

    .line 340
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 341
    .line 342
    goto :goto_5

    .line 343
    :cond_7
    move v0, v3

    .line 344
    :goto_6
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-virtual {v4}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {v4, v8}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 360
    .line 361
    iget-object v5, v4, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 362
    .line 363
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    move v10, v3

    .line 368
    :goto_7
    if-ge v10, v5, :cond_9

    .line 369
    .line 370
    iget-object v11, v4, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 371
    .line 372
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v11

    .line 376
    check-cast v11, Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 379
    .line 380
    .line 381
    move-result-object v12

    .line 382
    iget-object v12, v12, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 383
    .line 384
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v11

    .line 388
    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    check-cast v11, Lcom/android/server/pm/pkg/PackageState;

    .line 392
    .line 393
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 394
    .line 395
    .line 396
    move-result-object v12

    .line 397
    if-eqz v12, :cond_8

    .line 398
    .line 399
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 400
    .line 401
    .line 402
    move-result-object v11

    .line 403
    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->isRequestLegacyExternalStorage()Z

    .line 407
    .line 408
    .line 409
    move-result v11

    .line 410
    if-eqz v11, :cond_8

    .line 411
    .line 412
    move v4, v9

    .line 413
    goto :goto_8

    .line 414
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 415
    .line 416
    goto :goto_7

    .line 417
    :cond_9
    move v4, v3

    .line 418
    :goto_8
    if-nez v1, :cond_a

    .line 419
    .line 420
    if-nez v0, :cond_a

    .line 421
    .line 422
    if-eqz v4, :cond_a

    .line 423
    .line 424
    goto :goto_9

    .line 425
    :cond_a
    if-eqz v6, :cond_d

    .line 426
    .line 427
    :goto_9
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 428
    .line 429
    .line 430
    move-result-object v10

    .line 431
    iget-object v0, v10, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 432
    .line 433
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 434
    .line 435
    .line 436
    move-result v11

    .line 437
    move v12, v3

    .line 438
    :goto_a
    if-ge v12, v11, :cond_d

    .line 439
    .line 440
    iget-object v0, v10, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 441
    .line 442
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    .line 443
    .line 444
    .line 445
    move-result v13

    .line 446
    invoke-virtual {v10, v12}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    check-cast v0, Lcom/android/server/permission/access/MutableUserState;

    .line 451
    .line 452
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-virtual {v0, v8}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    move-object v14, v0

    .line 461
    check-cast v14, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 462
    .line 463
    if-eqz v14, :cond_c

    .line 464
    .line 465
    iget-object v0, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 466
    .line 467
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    sub-int/2addr v0, v9

    .line 472
    move v15, v0

    .line 473
    :goto_b
    const/4 v0, -0x1

    .line 474
    if-ge v0, v15, :cond_c

    .line 475
    .line 476
    iget-object v0, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 477
    .line 478
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    iget-object v1, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 483
    .line 484
    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    check-cast v1, Ljava/lang/Number;

    .line 489
    .line 490
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    move-object v4, v0

    .line 495
    check-cast v4, Ljava/lang/String;

    .line 496
    .line 497
    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->STORAGE_AND_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 498
    .line 499
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 500
    .line 501
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-eqz v0, :cond_b

    .line 506
    .line 507
    const/16 v0, 0x10

    .line 508
    .line 509
    invoke-static {v1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    if-eqz v0, :cond_b

    .line 514
    .line 515
    const/16 v0, 0x180

    .line 516
    .line 517
    invoke-static {v1, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    if-nez v0, :cond_b

    .line 522
    .line 523
    const-string v0, "Revoking storage permission: "

    .line 524
    .line 525
    const-string v2, " for appId:  "

    .line 526
    .line 527
    const-string v3, " and user: "

    .line 528
    .line 529
    invoke-static {v8, v0, v4, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    const-string v2, "AppIdPermissionPolicy"

    .line 534
    .line 535
    invoke-static {v0, v13, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 536
    .line 537
    .line 538
    const v0, -0xf00071

    .line 539
    .line 540
    .line 541
    and-int v6, v1, v0

    .line 542
    .line 543
    const/4 v5, -0x1

    .line 544
    move-object/from16 v0, p0

    .line 545
    .line 546
    move-object/from16 v1, p1

    .line 547
    .line 548
    move/from16 v2, p2

    .line 549
    .line 550
    move v3, v13

    .line 551
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 552
    .line 553
    .line 554
    :cond_b
    add-int/lit8 v15, v15, -0x1

    .line 555
    .line 556
    goto :goto_b

    .line 557
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 558
    .line 559
    goto :goto_a

    .line 560
    :cond_d
    return-void

    .line 561
    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 562
    .line 563
    goto/16 :goto_0

    .line 564
    .line 565
    :cond_f
    return-void
.end method

.method public final serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const-string/jumbo v0, "permission-trees"

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->serializePermissions(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;Lcom/android/server/permission/access/immutable/IndexedMap;)V

    .line 18
    .line 19
    .line 20
    const-string/jumbo p2, "permissions"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p1, p2, p0}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->serializePermissions(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;Lcom/android/server/permission/access/immutable/IndexedMap;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->persistence:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    check-cast p0, Lcom/android/server/permission/access/MutableUserState;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 p2, 0x0

    .line 24
    const-string p3, "app-id-permissions"

    .line 25
    .line 26
    invoke-virtual {p1, p2, p3}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    move v2, v1

    .line 37
    :goto_0
    if-ge v2, v0, :cond_2

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {p0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 50
    .line 51
    const-string v5, "app-id"

    .line 52
    .line 53
    invoke-virtual {p1, p2, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    .line 55
    .line 56
    const-string v6, "id"

    .line 57
    .line 58
    invoke-virtual {p1, p2, v6, v3}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    .line 60
    .line 61
    iget-object v3, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    move v6, v1

    .line 68
    :goto_1
    if-ge v6, v3, :cond_1

    .line 69
    .line 70
    iget-object v7, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    iget-object v8, v4, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 77
    .line 78
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    check-cast v8, Ljava/lang/Number;

    .line 83
    .line 84
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    check-cast v7, Ljava/lang/String;

    .line 89
    .line 90
    const-string/jumbo v9, "permission"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2, v9}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    .line 95
    .line 96
    const-string/jumbo v10, "name"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2, v10, v7}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    .line 101
    .line 102
    const/high16 v7, 0x200000

    .line 103
    .line 104
    invoke-static {v8, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_0

    .line 109
    .line 110
    and-int/lit8 v8, v8, -0x11

    .line 111
    .line 112
    :cond_0
    const-string v7, "flags"

    .line 113
    .line 114
    invoke-virtual {p1, p2, v7, v8}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2, v9}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    .line 119
    .line 120
    add-int/lit8 v6, v6, 0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {p1, p2, v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    .line 125
    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final trimPermissionStates(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 16

    .line 1
    move/from16 v7, p2

    .line 2
    .line 3
    new-instance v8, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object/from16 v9, p1

    .line 9
    .line 10
    iget-object v0, v9, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 28
    .line 29
    iget-object v2, v1, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x0

    .line 36
    move v4, v3

    .line 37
    :goto_0
    if-ge v4, v2, :cond_1

    .line 38
    .line 39
    iget-object v5, v1, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    iget-object v6, v6, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 52
    .line 53
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    check-cast v5, Lcom/android/server/pm/pkg/PackageState;

    .line 61
    .line 62
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    if-eqz v6, :cond_0

    .line 67
    .line 68
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_0

    .line 88
    .line 89
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    iget-object v0, v10, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    move v12, v3

    .line 111
    :goto_2
    if-ge v12, v11, :cond_4

    .line 112
    .line 113
    iget-object v0, v10, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 114
    .line 115
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    invoke-virtual {v10, v12}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/android/server/permission/access/MutableUserState;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0, v7}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    move-object v14, v0

    .line 134
    check-cast v14, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 135
    .line 136
    if-eqz v14, :cond_3

    .line 137
    .line 138
    iget-object v0, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    add-int/lit8 v0, v0, -0x1

    .line 145
    .line 146
    move v15, v0

    .line 147
    :goto_3
    const/4 v0, -0x1

    .line 148
    if-ge v0, v15, :cond_3

    .line 149
    .line 150
    iget-object v0, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 151
    .line 152
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v1, v14, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 157
    .line 158
    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Ljava/lang/Number;

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 165
    .line 166
    .line 167
    move-object v4, v0

    .line 168
    check-cast v4, Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v8, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-nez v0, :cond_2

    .line 175
    .line 176
    const/4 v5, -0x1

    .line 177
    const/4 v6, 0x0

    .line 178
    move-object/from16 v0, p0

    .line 179
    .line 180
    move-object/from16 v1, p1

    .line 181
    .line 182
    move/from16 v2, p2

    .line 183
    .line 184
    move v3, v13

    .line 185
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 186
    .line 187
    .line 188
    :cond_2
    add-int/lit8 v15, v15, -0x1

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_4
    return-void
.end method

.method public final trimPermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Lcom/android/server/permission/access/immutable/MutableIndexedSet;)V
    .locals 23

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    iget-object v9, v7, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 6
    .line 7
    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v10, v0

    .line 18
    check-cast v10, Lcom/android/server/pm/pkg/PackageState;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz v10, :cond_0

    .line 22
    .line 23
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    move-object v11, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v11, v0

    .line 30
    :goto_0
    if-eqz v10, :cond_1

    .line 31
    .line 32
    if-nez v11, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v1, v1, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/android/server/pm/pkg/PackageState;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    :cond_2
    move-object v12, v0

    .line 54
    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const/4 v13, 0x1

    .line 69
    sub-int/2addr v1, v13

    .line 70
    :goto_1
    const/4 v14, -0x1

    .line 71
    if-ge v14, v1, :cond_8

    .line 72
    .line 73
    iget-object v2, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 74
    .line 75
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iget-object v3, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Lcom/android/server/permission/access/permission/Permission;

    .line 86
    .line 87
    check-cast v2, Ljava/lang/String;

    .line 88
    .line 89
    iget-object v3, v3, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 90
    .line 91
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v3, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_7

    .line 98
    .line 99
    if-eqz v10, :cond_4

    .line 100
    .line 101
    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    const/4 v5, 0x0

    .line 113
    :goto_2
    if-ge v5, v4, :cond_4

    .line 114
    .line 115
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 120
    .line 121
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    if-eqz v14, :cond_3

    .line 126
    .line 127
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-static {v6, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_3

    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    if-eqz v12, :cond_6

    .line 142
    .line 143
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    if-eqz v3, :cond_6

    .line 148
    .line 149
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    const/4 v15, 0x0

    .line 154
    :goto_3
    if-ge v15, v4, :cond_6

    .line 155
    .line 156
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 161
    .line 162
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-eqz v6, :cond_5

    .line 167
    .line 168
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-static {v5, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_5

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_5
    add-int/lit8 v15, v15, 0x1

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_6
    invoke-static {v9}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    iget-object v2, v2, Lcom/android/server/permission/access/MutableSystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 187
    .line 188
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    check-cast v2, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 193
    .line 194
    iget-object v2, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 195
    .line 196
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :cond_8
    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    iget-object v0, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 212
    .line 213
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    sub-int/2addr v0, v13

    .line 218
    move v5, v0

    .line 219
    :goto_5
    if-ge v14, v5, :cond_12

    .line 220
    .line 221
    iget-object v0, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 222
    .line 223
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iget-object v1, v6, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 228
    .line 229
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    check-cast v1, Lcom/android/server/permission/access/permission/Permission;

    .line 234
    .line 235
    move-object v4, v0

    .line 236
    check-cast v4, Ljava/lang/String;

    .line 237
    .line 238
    iget v0, v1, Lcom/android/server/permission/access/permission/Permission;->type:I

    .line 239
    .line 240
    const/4 v2, 0x2

    .line 241
    if-ne v0, v2, :cond_a

    .line 242
    .line 243
    iget-object v0, v1, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 244
    .line 245
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v7, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    if-nez v0, :cond_9

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_9
    new-instance v2, Landroid/content/pm/PermissionInfo;

    .line 255
    .line 256
    iget-object v3, v1, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 257
    .line 258
    invoke-direct {v2, v3}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 259
    .line 260
    .line 261
    iget-object v3, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 262
    .line 263
    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 264
    .line 265
    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 266
    .line 267
    iget v0, v0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    .line 268
    .line 269
    invoke-static {v1, v2, v13, v0}, Lcom/android/server/permission/access/permission/Permission;->copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZI)Lcom/android/server/permission/access/permission/Permission;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    :cond_a
    :goto_6
    invoke-static {v9}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 282
    .line 283
    invoke-virtual {v0, v5, v1}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    iget-object v0, v1, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 287
    .line 288
    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 289
    .line 290
    invoke-static {v0, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    if-eqz v0, :cond_b

    .line 295
    .line 296
    if-eqz v10, :cond_d

    .line 297
    .line 298
    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    const/4 v2, 0x0

    .line 310
    :goto_7
    if-ge v2, v1, :cond_d

    .line 311
    .line 312
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 317
    .line 318
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    .line 319
    .line 320
    .line 321
    move-result v16

    .line 322
    if-nez v16, :cond_c

    .line 323
    .line 324
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    if-eqz v3, :cond_c

    .line 333
    .line 334
    :cond_b
    :goto_8
    move-object/from16 v0, p3

    .line 335
    .line 336
    move v7, v5

    .line 337
    move-object/from16 v17, v6

    .line 338
    .line 339
    goto/16 :goto_c

    .line 340
    .line 341
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_d
    if-eqz v12, :cond_f

    .line 345
    .line 346
    invoke-interface {v12}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    if-eqz v0, :cond_f

    .line 351
    .line 352
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    const/4 v2, 0x0

    .line 357
    :goto_9
    if-ge v2, v1, :cond_f

    .line 358
    .line 359
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 364
    .line 365
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->isTree()Z

    .line 366
    .line 367
    .line 368
    move-result v16

    .line 369
    if-nez v16, :cond_e

    .line 370
    .line 371
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    if-eqz v3, :cond_e

    .line 380
    .line 381
    goto :goto_8

    .line 382
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_f
    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    iget-object v0, v3, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 394
    .line 395
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    const/4 v1, 0x0

    .line 400
    :goto_a
    if-ge v1, v2, :cond_11

    .line 401
    .line 402
    iget-object v0, v3, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 403
    .line 404
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 405
    .line 406
    .line 407
    move-result v16

    .line 408
    invoke-virtual {v9}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    iget-object v13, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 417
    .line 418
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    .line 419
    .line 420
    .line 421
    move-result v13

    .line 422
    const/4 v14, 0x0

    .line 423
    :goto_b
    if-ge v14, v13, :cond_10

    .line 424
    .line 425
    iget-object v15, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 426
    .line 427
    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->keyAt(I)I

    .line 428
    .line 429
    .line 430
    move-result v15

    .line 431
    invoke-virtual {v0, v14}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 432
    .line 433
    .line 434
    move-result-object v17

    .line 435
    check-cast v17, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 436
    .line 437
    const/16 v17, -0x1

    .line 438
    .line 439
    const/16 v18, 0x0

    .line 440
    .line 441
    move-object/from16 v19, v0

    .line 442
    .line 443
    move-object/from16 v0, p0

    .line 444
    .line 445
    move/from16 v20, v1

    .line 446
    .line 447
    move-object/from16 v1, p1

    .line 448
    .line 449
    move/from16 v21, v2

    .line 450
    .line 451
    move v2, v15

    .line 452
    move-object v15, v3

    .line 453
    move/from16 v3, v16

    .line 454
    .line 455
    move-object/from16 v22, v4

    .line 456
    .line 457
    move v7, v5

    .line 458
    move/from16 v5, v17

    .line 459
    .line 460
    move-object/from16 v17, v6

    .line 461
    .line 462
    move/from16 v6, v18

    .line 463
    .line 464
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 465
    .line 466
    .line 467
    add-int/lit8 v14, v14, 0x1

    .line 468
    .line 469
    move v5, v7

    .line 470
    move-object v3, v15

    .line 471
    move-object/from16 v6, v17

    .line 472
    .line 473
    move-object/from16 v0, v19

    .line 474
    .line 475
    move/from16 v1, v20

    .line 476
    .line 477
    move/from16 v2, v21

    .line 478
    .line 479
    move-object/from16 v4, v22

    .line 480
    .line 481
    move-object/from16 v7, p1

    .line 482
    .line 483
    goto :goto_b

    .line 484
    :cond_10
    move/from16 v20, v1

    .line 485
    .line 486
    move/from16 v21, v2

    .line 487
    .line 488
    move-object v15, v3

    .line 489
    move-object/from16 v22, v4

    .line 490
    .line 491
    move v7, v5

    .line 492
    move-object/from16 v17, v6

    .line 493
    .line 494
    add-int/lit8 v1, v20, 0x1

    .line 495
    .line 496
    const/4 v13, 0x1

    .line 497
    const/4 v14, -0x1

    .line 498
    move-object/from16 v7, p1

    .line 499
    .line 500
    goto :goto_a

    .line 501
    :cond_11
    move-object/from16 v22, v4

    .line 502
    .line 503
    move v7, v5

    .line 504
    move-object/from16 v17, v6

    .line 505
    .line 506
    invoke-static {v9}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState$default(Lcom/android/server/permission/access/MutableAccessState;)Lcom/android/server/permission/access/MutableSystemState;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 515
    .line 516
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-object/from16 v0, p3

    .line 520
    .line 521
    move-object/from16 v1, v22

    .line 522
    .line 523
    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    :goto_c
    add-int/lit8 v5, v7, -0x1

    .line 527
    .line 528
    move-object/from16 v7, p1

    .line 529
    .line 530
    move-object/from16 v6, v17

    .line 531
    .line 532
    const/4 v13, 0x1

    .line 533
    const/4 v14, -0x1

    .line 534
    goto/16 :goto_5

    .line 535
    .line 536
    :cond_12
    return-void
.end method

.method public final updatePermissionExemptFlags(Lcom/android/server/permission/access/MutateStateScope;IILcom/android/server/permission/access/permission/Permission;II)V
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v0, p4

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 10
    .line 11
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, v1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 14
    .line 15
    move/from16 v6, p3

    .line 16
    .line 17
    invoke-static {v5, v2, v6, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    not-int v7, v3

    .line 22
    and-int/2addr v7, v5

    .line 23
    and-int v3, p6, v3

    .line 24
    .line 25
    or-int/2addr v3, v7

    .line 26
    if-ne v5, v3, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const v7, 0x38000

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    iget-object v8, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 37
    .line 38
    iget v8, v8, Landroid/content/pm/PermissionInfo;->flags:I

    .line 39
    .line 40
    const/4 v9, 0x4

    .line 41
    invoke-static {v8, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v11, 0x1

    .line 47
    if-eqz v8, :cond_7

    .line 48
    .line 49
    if-nez v7, :cond_7

    .line 50
    .line 51
    const/high16 v8, 0x40000

    .line 52
    .line 53
    or-int/2addr v3, v8

    .line 54
    invoke-static {v5, v11}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    if-eqz v12, :cond_2

    .line 59
    .line 60
    :cond_1
    :goto_0
    move v8, v11

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/4 v12, 0x2

    .line 63
    invoke-static {v5, v12}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    if-eqz v12, :cond_3

    .line 68
    .line 69
    :goto_1
    move v8, v10

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    invoke-static {v5, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    if-eqz v9, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const/16 v9, 0x400

    .line 79
    .line 80
    invoke-static {v5, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-nez v9, :cond_1

    .line 85
    .line 86
    const/16 v9, 0x800

    .line 87
    .line 88
    invoke-static {v5, v9}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-eqz v9, :cond_5

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    invoke-static {v5, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_6

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    const/16 v8, 0x10

    .line 103
    .line 104
    invoke-static {v5, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    :goto_2
    if-eqz v8, :cond_8

    .line 109
    .line 110
    and-int/lit16 v3, v3, -0x81

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_7
    const v8, -0x40001

    .line 114
    .line 115
    .line 116
    and-int/2addr v3, v8

    .line 117
    :cond_8
    :goto_3
    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 118
    .line 119
    iget v0, v0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 120
    .line 121
    const/16 v8, 0x8

    .line 122
    .line 123
    invoke-static {v0, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_f

    .line 128
    .line 129
    if-nez v7, :cond_f

    .line 130
    .line 131
    iget-object v0, v1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v7}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-virtual {v7, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    check-cast v7, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 149
    .line 150
    new-instance v8, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;

    .line 151
    .line 152
    invoke-direct {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 153
    .line 154
    .line 155
    const/16 v9, 0x2710

    .line 156
    .line 157
    iput v9, v8, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    .line 158
    .line 159
    iget-object v9, v7, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    move v12, v10

    .line 166
    :goto_4
    if-ge v12, v9, :cond_a

    .line 167
    .line 168
    iget-object v13, v7, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    iget v14, v8, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    .line 175
    .line 176
    check-cast v13, Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 179
    .line 180
    .line 181
    move-result-object v15

    .line 182
    iget-object v15, v15, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 183
    .line 184
    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v13

    .line 188
    invoke-static {v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    check-cast v13, Lcom/android/server/pm/pkg/PackageState;

    .line 192
    .line 193
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 194
    .line 195
    .line 196
    move-result-object v15

    .line 197
    if-eqz v15, :cond_9

    .line 198
    .line 199
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 200
    .line 201
    .line 202
    move-result-object v15

    .line 203
    invoke-static {v15}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 207
    .line 208
    .line 209
    move-result-object v15

    .line 210
    invoke-interface {v15, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v15

    .line 214
    if-eqz v15, :cond_9

    .line 215
    .line 216
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    invoke-static {v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 224
    .line 225
    .line 226
    move-result v13

    .line 227
    if-le v14, v13, :cond_9

    .line 228
    .line 229
    move v14, v13

    .line 230
    :cond_9
    iput v14, v8, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    .line 231
    .line 232
    add-int/lit8 v12, v12, 0x1

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_a
    iget v7, v8, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$IntRef;->element:I

    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    invoke-virtual {v8}, Lcom/android/server/permission/access/MutableExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    invoke-virtual {v8, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    check-cast v8, Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 253
    .line 254
    iget-object v9, v8, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 257
    .line 258
    .line 259
    move-result v9

    .line 260
    move v12, v10

    .line 261
    :goto_5
    if-ge v12, v9, :cond_e

    .line 262
    .line 263
    iget-object v13, v8, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v13

    .line 269
    check-cast v13, Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/MutableExternalState;

    .line 272
    .line 273
    .line 274
    move-result-object v14

    .line 275
    iget-object v14, v14, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 276
    .line 277
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v13

    .line 281
    invoke-static {v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    check-cast v13, Lcom/android/server/pm/pkg/PackageState;

    .line 285
    .line 286
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 287
    .line 288
    .line 289
    move-result-object v14

    .line 290
    if-eqz v14, :cond_d

    .line 291
    .line 292
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 293
    .line 294
    .line 295
    move-result-object v13

    .line 296
    invoke-static {v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 300
    .line 301
    .line 302
    move-result-object v13

    .line 303
    invoke-interface {v13, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v13

    .line 307
    if-eqz v13, :cond_d

    .line 308
    .line 309
    const-string v13, "android.permission.READ_EXTERNAL_STORAGE"

    .line 310
    .line 311
    invoke-static {v4, v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v13

    .line 315
    if-eqz v13, :cond_b

    .line 316
    .line 317
    move v13, v11

    .line 318
    goto :goto_6

    .line 319
    :cond_b
    const-string v13, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 320
    .line 321
    invoke-static {v4, v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v13

    .line 325
    :goto_6
    if-eqz v13, :cond_c

    .line 326
    .line 327
    const/16 v13, 0x1d

    .line 328
    .line 329
    if-lt v7, v13, :cond_c

    .line 330
    .line 331
    move v13, v11

    .line 332
    goto :goto_7

    .line 333
    :cond_c
    move v13, v10

    .line 334
    :goto_7
    if-eqz v13, :cond_d

    .line 335
    .line 336
    goto :goto_9

    .line 337
    :cond_d
    add-int/lit8 v12, v12, 0x1

    .line 338
    .line 339
    goto :goto_5

    .line 340
    :cond_e
    const/high16 v0, 0x80000

    .line 341
    .line 342
    or-int/2addr v0, v3

    .line 343
    :goto_8
    move v7, v0

    .line 344
    goto :goto_a

    .line 345
    :cond_f
    :goto_9
    const v0, -0x80001

    .line 346
    .line 347
    .line 348
    and-int/2addr v0, v3

    .line 349
    goto :goto_8

    .line 350
    :goto_a
    if-ne v5, v7, :cond_10

    .line 351
    .line 352
    return-void

    .line 353
    :cond_10
    const/4 v5, -0x1

    .line 354
    move-object/from16 v0, p0

    .line 355
    .line 356
    move-object/from16 v1, p1

    .line 357
    .line 358
    move/from16 v2, p2

    .line 359
    .line 360
    move/from16 v3, p3

    .line 361
    .line 362
    move v6, v7

    .line 363
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 364
    .line 365
    .line 366
    return-void
.end method

.method public final updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->contains(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "Unable to update permission flags for missing user "

    .line 17
    .line 18
    const-string p1, "AppIdPermissionPolicy"

    .line 19
    .line 20
    invoke-static {p3, p0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    check-cast v0, Lcom/android/server/permission/access/MutableUserState;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableUserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v0, p4, v2}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/Number;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    not-int v2, p5

    .line 64
    and-int/2addr v2, v0

    .line 65
    and-int/2addr p5, p6

    .line 66
    or-int/2addr p5, v2

    .line 67
    if-ne v0, p5, :cond_1

    .line 68
    .line 69
    return v1

    .line 70
    :cond_1
    iget-object p1, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 71
    .line 72
    const/4 p6, 0x1

    .line 73
    invoke-virtual {p1, p3, p6}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p1, Lcom/android/server/permission/access/MutableUserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutate(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    new-instance v2, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 96
    .line 97
    invoke-direct {v2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 101
    .line 102
    .line 103
    :goto_0
    check-cast v2, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 104
    .line 105
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v2, p4, v3, v4}, Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;->putWithDefault(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v2, v2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_3

    .line 123
    .line 124
    invoke-static {p1, p2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V

    .line 125
    .line 126
    .line 127
    :cond_3
    iget-object p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->onPermissionFlagsChangedListeners:Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    .line 128
    .line 129
    iget-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    :goto_1
    if-ge v1, p1, :cond_4

    .line 136
    .line 137
    iget-object v2, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;

    .line 144
    .line 145
    move v3, p2

    .line 146
    move v4, p3

    .line 147
    move v5, v0

    .line 148
    move v6, p5

    .line 149
    move-object v7, p4

    .line 150
    invoke-interface/range {v2 .. v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;->onPermissionFlagsChanged(IIIILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_4
    return p6
.end method

.method public final upgradePackageState(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;II)V
    .locals 23

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    move/from16 v9, p3

    .line 6
    .line 7
    move/from16 v10, p4

    .line 8
    .line 9
    move-object/from16 v0, p0

    .line 10
    .line 11
    iget-object v11, v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->upgrade:Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;

    .line 12
    .line 13
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v12

    .line 20
    iget-object v13, v7, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    const-string v14, ", version: "

    .line 24
    .line 25
    const-string v15, "AppIdPermissionUpgrade"

    .line 26
    .line 27
    iget-object v6, v11, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 28
    .line 29
    if-gt v10, v0, :cond_3

    .line 30
    .line 31
    const-string v0, "Allowlisting and upgrading background location permission for package: "

    .line 32
    .line 33
    const-string v1, ", user:"

    .line 34
    .line 35
    invoke-static {v10, v0, v12, v14, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v16

    .line 64
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    move-object v4, v0

    .line 75
    check-cast v4, Ljava/lang/String;

    .line 76
    .line 77
    sget-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LEGACY_RESTRICTED_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 80
    .line 81
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    .line 87
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const/high16 v5, 0x20000

    .line 92
    .line 93
    const/high16 v17, 0x20000

    .line 94
    .line 95
    iget-object v0, v11, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 96
    .line 97
    move-object/from16 v1, p1

    .line 98
    .line 99
    move/from16 v3, p3

    .line 100
    .line 101
    move-object/from16 v18, v6

    .line 102
    .line 103
    move/from16 v6, v17

    .line 104
    .line 105
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_0
    move-object/from16 v18, v6

    .line 110
    .line 111
    :goto_1
    move-object/from16 v6, v18

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    move-object/from16 v18, v6

    .line 115
    .line 116
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 128
    .line 129
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 143
    .line 144
    invoke-static {v13, v0, v9, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 149
    .line 150
    invoke-static {v13, v0, v9, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    invoke-static {v2}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-nez v2, :cond_2

    .line 159
    .line 160
    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_4

    .line 165
    .line 166
    :cond_2
    invoke-virtual {v11, v7, v8, v9, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_3
    move-object/from16 v18, v6

    .line 171
    .line 172
    :cond_4
    :goto_2
    const/16 v0, 0xa

    .line 173
    .line 174
    const-string v6, ", user: "

    .line 175
    .line 176
    if-gt v10, v0, :cond_5

    .line 177
    .line 178
    const-string v0, "Upgrading access media location permission for package: "

    .line 179
    .line 180
    invoke-static {v10, v0, v12, v14, v6}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const-string v1, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 206
    .line 207
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_5

    .line 212
    .line 213
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 221
    .line 222
    invoke-static {v13, v0, v9, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_5

    .line 231
    .line 232
    invoke-virtual {v11, v7, v8, v9, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_5
    const/16 v0, 0xc

    .line 236
    .line 237
    const/16 v16, 0x0

    .line 238
    .line 239
    const/16 v4, 0x21

    .line 240
    .line 241
    if-gt v10, v0, :cond_f

    .line 242
    .line 243
    const-string v0, "Upgrading scoped media and body sensor permissions for package: "

    .line 244
    .line 245
    invoke-static {v10, v0, v12, v14, v6}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-ge v1, v4, :cond_7

    .line 271
    .line 272
    :cond_6
    const/16 v5, 0x20

    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_7
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->STORAGE_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 280
    .line 281
    iget-object v2, v1, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 282
    .line 283
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    move/from16 v3, v16

    .line 288
    .line 289
    :goto_3
    if-ge v3, v2, :cond_6

    .line 290
    .line 291
    iget-object v4, v1, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 292
    .line 293
    invoke-static {v4, v3}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    check-cast v4, Ljava/lang/String;

    .line 298
    .line 299
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v17

    .line 303
    if-nez v17, :cond_9

    .line 304
    .line 305
    :cond_8
    const/16 v5, 0x20

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_9
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    invoke-static {v13, v5, v9, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    invoke-static {v4}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    .line 320
    .line 321
    .line 322
    move-result v5

    .line 323
    if-eqz v5, :cond_8

    .line 324
    .line 325
    const/16 v5, 0x20

    .line 326
    .line 327
    invoke-static {v4, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-eqz v4, :cond_b

    .line 332
    .line 333
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->AURAL_VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 334
    .line 335
    iget-object v2, v1, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 336
    .line 337
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    move/from16 v3, v16

    .line 342
    .line 343
    :goto_4
    if-ge v3, v2, :cond_c

    .line 344
    .line 345
    iget-object v4, v1, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 346
    .line 347
    invoke-static {v4, v3}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    check-cast v4, Ljava/lang/String;

    .line 352
    .line 353
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v17

    .line 357
    if-eqz v17, :cond_a

    .line 358
    .line 359
    invoke-virtual {v11, v7, v8, v9, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    .line 360
    .line 361
    .line 362
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 363
    .line 364
    goto :goto_4

    .line 365
    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 366
    .line 367
    const/16 v4, 0x21

    .line 368
    .line 369
    goto :goto_3

    .line 370
    :cond_c
    :goto_6
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    const-string v4, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 382
    .line 383
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-nez v0, :cond_d

    .line 388
    .line 389
    goto :goto_7

    .line 390
    :cond_d
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    invoke-static {v13, v3, v9, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    const v1, 0x38000

    .line 402
    .line 403
    .line 404
    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-eqz v0, :cond_e

    .line 409
    .line 410
    goto :goto_7

    .line 411
    :cond_e
    iget-object v0, v11, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 412
    .line 413
    const-string v17, "android.permission.BODY_SENSORS_BACKGROUND"

    .line 414
    .line 415
    const/high16 v19, 0x20000

    .line 416
    .line 417
    const/high16 v20, 0x20000

    .line 418
    .line 419
    move-object/from16 v1, p1

    .line 420
    .line 421
    move v2, v3

    .line 422
    move/from16 v21, v3

    .line 423
    .line 424
    move/from16 v3, p3

    .line 425
    .line 426
    move-object/from16 v22, v4

    .line 427
    .line 428
    move-object/from16 v4, v17

    .line 429
    .line 430
    move/from16 v5, v19

    .line 431
    .line 432
    move-object/from16 p0, v15

    .line 433
    .line 434
    move-object v15, v6

    .line 435
    move/from16 v6, v20

    .line 436
    .line 437
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 438
    .line 439
    .line 440
    const-string v0, "android.permission.BODY_SENSORS"

    .line 441
    .line 442
    move/from16 v1, v21

    .line 443
    .line 444
    invoke-static {v13, v1, v9, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    invoke-static {v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    if-eqz v0, :cond_10

    .line 453
    .line 454
    move-object/from16 v0, v22

    .line 455
    .line 456
    invoke-virtual {v11, v7, v8, v9, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    .line 457
    .line 458
    .line 459
    goto :goto_8

    .line 460
    :cond_f
    :goto_7
    move-object/from16 p0, v15

    .line 461
    .line 462
    move-object v15, v6

    .line 463
    :cond_10
    :goto_8
    const/16 v0, 0xe

    .line 464
    .line 465
    if-gt v10, v0, :cond_15

    .line 466
    .line 467
    const-string v0, "Upgrading visual media permission for package: "

    .line 468
    .line 469
    invoke-static {v10, v0, v12, v14, v15}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    move-object/from16 v1, p0

    .line 481
    .line 482
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .line 484
    .line 485
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    const/16 v2, 0x21

    .line 497
    .line 498
    if-ge v1, v2, :cond_11

    .line 499
    .line 500
    goto :goto_b

    .line 501
    :cond_11
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 506
    .line 507
    iget-object v2, v1, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 508
    .line 509
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    move/from16 v3, v16

    .line 514
    .line 515
    :goto_9
    if-ge v3, v2, :cond_15

    .line 516
    .line 517
    iget-object v4, v1, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->set:Landroid/util/ArraySet;

    .line 518
    .line 519
    invoke-static {v4, v3}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    check-cast v4, Ljava/lang/String;

    .line 524
    .line 525
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v5

    .line 529
    if-nez v5, :cond_13

    .line 530
    .line 531
    :cond_12
    const/16 v5, 0x20

    .line 532
    .line 533
    goto :goto_a

    .line 534
    :cond_13
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 535
    .line 536
    .line 537
    move-result v5

    .line 538
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    invoke-static {v13, v5, v9, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 542
    .line 543
    .line 544
    move-result v4

    .line 545
    invoke-static {v4}, Lcom/android/server/permission/access/permission/PermissionFlags;->isAppOpGranted(I)Z

    .line 546
    .line 547
    .line 548
    move-result v5

    .line 549
    if-eqz v5, :cond_12

    .line 550
    .line 551
    const/16 v5, 0x20

    .line 552
    .line 553
    invoke-static {v4, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 554
    .line 555
    .line 556
    move-result v4

    .line 557
    if-eqz v4, :cond_14

    .line 558
    .line 559
    const-string v1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 560
    .line 561
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-eqz v0, :cond_15

    .line 566
    .line 567
    invoke-virtual {v11, v7, v8, v9, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V

    .line 568
    .line 569
    .line 570
    goto :goto_b

    .line 571
    :cond_14
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 572
    .line 573
    goto :goto_9

    .line 574
    :cond_15
    :goto_b
    return-void
.end method
