.class public final Lcom/android/server/wm/ActivityEmbeddedController;
.super Lcom/android/server/wm/PackagesChange;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChange;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 5
    .line 6
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->EMBED_ACTIVITY_DIRECTORY:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "EmbedActivityPackageSetting"

    .line 9
    .line 10
    const/16 v2, 0x400

    .line 11
    .line 12
    invoke-direct {p1, v2, v0, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final findTargetUserId(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 36
    .line 37
    iget p1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_2
    return p1
.end method

.method public final getEnabled(ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityEmbeddedController;->findTargetUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method
