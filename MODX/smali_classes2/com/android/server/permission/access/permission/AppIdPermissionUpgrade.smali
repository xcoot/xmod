.class public final Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AURAL_VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

.field public static final LEGACY_RESTRICTED_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

.field public static final STORAGE_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

.field public static final VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;


# instance fields
.field public final policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v9, "android.permission.WRITE_CALL_LOG"

    .line 2
    .line 3
    const-string v10, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 4
    .line 5
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 6
    .line 7
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 8
    .line 9
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 10
    .line 11
    const-string v3, "android.permission.SEND_SMS"

    .line 12
    .line 13
    const-string v4, "android.permission.RECEIVE_SMS"

    .line 14
    .line 15
    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    .line 16
    .line 17
    const-string v6, "android.permission.RECEIVE_MMS"

    .line 18
    .line 19
    const-string v7, "android.permission.READ_CELL_BROADCASTS"

    .line 20
    .line 21
    const-string v8, "android.permission.READ_CALL_LOG"

    .line 22
    .line 23
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->LEGACY_RESTRICTED_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 32
    .line 33
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 34
    .line 35
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 36
    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->STORAGE_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 46
    .line 47
    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    .line 48
    .line 49
    const-string v1, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 50
    .line 51
    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    .line 52
    .line 53
    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    .line 54
    .line 55
    const-string v4, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 56
    .line 57
    filled-new-array {v0, v2, v3, v4, v1}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->AURAL_VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 66
    .line 67
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

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
    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->VISUAL_MEDIA_PERMISSIONS:Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 76
    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final grantRuntimePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;)V
    .locals 9

    .line 1
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Granting runtime permission for package: "

    .line 6
    .line 7
    const-string v2, ", permission: "

    .line 8
    .line 9
    const-string v3, ", userId: "

    .line 10
    .line 11
    invoke-static {v1, v0, v2, p4, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "AppIdPermissionUpgrade"

    .line 16
    .line 17
    invoke-static {v0, p3, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p1, Lcom/android/server/permission/access/MutateStateScope;->newState:Lcom/android/server/permission/access/MutableAccessState;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    .line 40
    .line 41
    invoke-interface {p2, p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/16 v2, 0x1000

    .line 58
    .line 59
    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iget-object v0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iget-object v0, p1, Lcom/android/server/permission/access/GetStateScope;->state:Lcom/android/server/permission/access/AccessState;

    .line 76
    .line 77
    invoke-static {v0, v4, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/AccessState;IILjava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/16 v2, 0x1e0

    .line 82
    .line 83
    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string p2, "Not allowed to grant "

    .line 96
    .line 97
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p2, " to package "

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_1
    or-int/lit8 p2, v0, 0x10

    .line 120
    .line 121
    const v0, -0x701401

    .line 122
    .line 123
    .line 124
    and-int v8, p2, v0

    .line 125
    .line 126
    const/4 v7, -0x1

    .line 127
    iget-object v2, p0, Lcom/android/server/permission/access/permission/AppIdPermissionUpgrade;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 128
    .line 129
    move-object v3, p1

    .line 130
    move v5, p3

    .line 131
    move-object v6, p4

    .line 132
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;II)Z

    .line 133
    .line 134
    .line 135
    return-void
.end method
