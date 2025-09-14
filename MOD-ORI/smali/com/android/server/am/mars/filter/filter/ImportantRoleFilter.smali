.class public final Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mSystemGalleryHolderList:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mSystemGalleryHolderList:Landroid/util/ArrayMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mSystemGalleryHolderList:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mSystemGalleryHolderList:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/16 p0, 0x16

    .line 22
    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final getSystemGalleryHolder(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v1, "role"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/app/role/RoleManager;

    .line 11
    .line 12
    const-string v1, "android.app.role.SYSTEM_GALLERY"

    .line 13
    .line 14
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mSystemGalleryHolderList:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mSystemGalleryHolderList:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v0, "Exception "

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v0, "MARs:ImportantRoleFilter"

    .line 66
    .line 67
    invoke-static {p0, p1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    :goto_0
    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->getSystemGalleryHolder(I)V

    .line 8
    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string/jumbo v0, "persona"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxId(IZ)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/16 v0, 0x96

    .line 32
    .line 33
    if-lt p1, v0, :cond_0

    .line 34
    .line 35
    const/16 v0, 0xa0

    .line 36
    .line 37
    if-gt p1, v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->getSystemGalleryHolder(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
