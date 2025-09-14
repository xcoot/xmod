.class public abstract Lcom/android/server/pm/CrossProfileResolver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileResolver;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    return-void
.end method

.method public static filterIfNotSystemUser(ILjava/util/List;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    add-int/lit8 p0, p0, -0x1

    .line 9
    .line 10
    :goto_0
    if-ltz p0, :cond_2

    .line 11
    .line 12
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/pm/CrossProfileDomainInfo;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/pm/CrossProfileDomainInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 19
    .line 20
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 21
    .line 22
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 23
    .line 24
    const/high16 v1, 0x20000000

    .line 25
    .line 26
    and-int/2addr v0, v1

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method


# virtual methods
.method public abstract filterResolveInfoWithDomainPreferredActivity(ILjava/util/List;)Ljava/util/List;
.end method

.method public final isUserEnabled(I)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    return p0

    .line 28
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public abstract resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IIJLjava/lang/String;Ljava/util/List;ZLjava/util/function/Function;)Ljava/util/List;
.end method
