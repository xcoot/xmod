.class public final Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;


# instance fields
.field public final mAllowlistedRestrictedPermissions:Ljava/util/List;

.field public final mAutoRevokePermissionsMode:I

.field public final mPermissionStates:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    .line 6
    .line 7
    new-instance v2, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;-><init>(Landroid/util/ArrayMap;Ljava/util/List;I)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/util/ArrayMap;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mPermissionStates:Landroid/util/ArrayMap;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->mAutoRevokePermissionsMode:I

    .line 9
    .line 10
    return-void
.end method
