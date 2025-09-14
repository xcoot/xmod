.class public final Lcom/android/server/pm/resolution/ComponentResolverSnapshot;
.super Lcom/android/server/pm/resolution/ComponentResolverBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/android/server/pm/resolution/ComponentResolverBase;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 20
    .line 21
    iget-object v1, p1, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;Lcom/android/server/pm/UserManagerService;B)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 30
    .line 31
    new-instance v0, Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    .line 32
    .line 33
    iget-object v1, p1, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 36
    .line 37
    invoke-direct {v0, v1, v2, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    .line 41
    .line 42
    new-instance p2, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 43
    .line 44
    iget-object v0, p1, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 47
    .line 48
    invoke-direct {p2, v0, v1}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;-><init>(Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;Lcom/android/server/pm/UserManagerService;)V

    .line 49
    .line 50
    .line 51
    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 52
    .line 53
    new-instance p2, Landroid/util/ArrayMap;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-direct {p2, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 58
    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 61
    .line 62
    return-void
.end method
