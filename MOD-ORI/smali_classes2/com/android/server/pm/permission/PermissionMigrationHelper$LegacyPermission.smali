.class public final Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPermissionInfo:Landroid/content/pm/PermissionInfo;

.field public final mType:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PermissionInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->mType:I

    .line 7
    .line 8
    return-void
.end method
