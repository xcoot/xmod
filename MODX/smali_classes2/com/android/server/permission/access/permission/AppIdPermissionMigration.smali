.class public final Lcom/android/server/permission/access/permission/AppIdPermissionMigration;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static migratePermissions(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/util/Map;)V
    .locals 4

    .line 1
    check-cast p1, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;

    .line 28
    .line 29
    new-instance v1, Lcom/android/server/permission/access/permission/Permission;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 32
    .line 33
    iget v0, v0, Lcom/android/server/pm/permission/PermissionMigrationHelper$LegacyPermission;->mType:I

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-direct {v1, v2, v3, v0, v3}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII)V

    .line 37
    .line 38
    .line 39
    iget-object v0, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method
