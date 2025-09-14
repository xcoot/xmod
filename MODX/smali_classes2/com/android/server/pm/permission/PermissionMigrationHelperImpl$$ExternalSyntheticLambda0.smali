.class public final synthetic Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl$$ExternalSyntheticLambda0;->f$0:Ljava/util/Map;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/pm/permission/LegacyPermission;

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 8
    .line 9
    iget p1, p1, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void
.end method
