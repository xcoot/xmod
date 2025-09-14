.class public final Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mListener:Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda8;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda8;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->mContext:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->mListener:Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda8;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object p1

    .line 13
    const-string/jumbo p2, "restricted_networking_mode"

    .line 16
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    move-result-object p2

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->mListener:Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda8;

    .line 3
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p0

    .line 9
    const-string/jumbo v0, "restricted_networking_mode"

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_0
    iget-object p0, p1, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 22
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 24
    monitor-enter p1

    .line 25
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    .line 27
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictedModeAllowlistUL()V

    .line 30
    monitor-exit p1

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method
