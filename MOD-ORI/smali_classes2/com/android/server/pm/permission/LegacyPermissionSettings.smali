.class public final Lcom/android/server/pm/permission/LegacyPermissionSettings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mPermissionTrees:Landroid/util/ArrayMap;

.field public final mPermissions:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 25
    .line 26
    return-void
.end method

.method public static readPermissions(Landroid/util/ArrayMap;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 9

    .line 4
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_a

    :cond_1
    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 8
    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x5

    if-nez v1, :cond_3

    goto/16 :goto_3

    .line 9
    :cond_3
    const-string/jumbo v1, "name"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    const-string/jumbo v5, "package"

    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11
    const-string/jumbo v6, "type"

    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_9

    if-nez v5, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    const-string v3, "dynamic"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 13
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/LegacyPermission;

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    .line 14
    iget v8, v6, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    if-eq v8, v2, :cond_7

    .line 15
    :cond_5
    new-instance v6, Lcom/android/server/pm/permission/LegacyPermission;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_6

    const/4 v2, 0x2

    goto :goto_1

    :cond_6
    move v2, v7

    .line 16
    :goto_1
    invoke-direct {v6, v2, v1, v5}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_7
    iget-object v1, v6, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 18
    const-string/jumbo v2, "protection"

    invoke-interface {p1, v4, v2, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 19
    iput v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 20
    iget-object v1, v6, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v2}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v2

    iput v2, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eqz v3, :cond_8

    .line 21
    iget-object v1, v6, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 22
    const-string v2, "icon"

    invoke-interface {p1, v4, v2, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 23
    iput v2, v1, Landroid/content/pm/PermissionInfo;->icon:I

    .line 24
    iget-object v1, v6, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    const-string v2, "label"

    invoke-interface {p1, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 25
    :cond_8
    iget-object v1, v6, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 26
    :cond_9
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in package manager settings: permissions has no name at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {p1, v1}, Lcom/android/server/pm/CrossProfileIntentFilter$$ExternalSyntheticOutline0;->m(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 28
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 29
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 30
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown element reading permissions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 34
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 35
    :goto_4
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method


# virtual methods
.method public final getPermissionTrees()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 22
    .line 23
    throw p0
.end method

.method public final getPermissions()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 22
    .line 23
    throw p0
.end method

.method public final readPermissionTrees(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-static {p0, p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->readPermissions(Landroid/util/ArrayMap;Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 16
    .line 17
    throw p0
.end method

.method public final readPermissions(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-static {p0, p1}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->readPermissions(Landroid/util/ArrayMap;Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    throw p0
.end method

.method public final replacePermissionTrees(Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

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
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/android/server/pm/permission/LegacyPermission;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 27
    .line 28
    iget-object v5, v3, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 29
    .line 30
    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 42
    .line 43
    return-void

    .line 44
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 46
    .line 47
    throw p0
.end method

.method public final replacePermissions(Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 9
    .line 10
    .line 11
    check-cast p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

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
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/android/server/pm/permission/LegacyPermission;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    .line 27
    .line 28
    iget-object v5, v3, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 29
    .line 30
    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 42
    .line 43
    return-void

    .line 44
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 46
    .line 47
    throw p0
.end method

.method public final writePermissionTrees(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/pm/permission/LegacyPermission;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/LegacyPermission;->write(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 36
    .line 37
    return-void

    .line 38
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 40
    .line 41
    throw p0
.end method

.method public final writePermissions(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 2
    .line 3
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/pm/permission/LegacyPermission;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/LegacyPermission;->write(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 36
    .line 37
    return-void

    .line 38
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 40
    .line 41
    throw p0
.end method
