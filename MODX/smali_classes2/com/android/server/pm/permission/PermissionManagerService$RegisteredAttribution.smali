.class public final Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeathRecipient:Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;

.field public final mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    move-object v2, v0

    .line 15
    move-object v3, p0

    .line 16
    move-object v4, p1

    .line 17
    move v5, p2

    .line 18
    move-object v6, p3

    .line 19
    move v7, p4

    .line 20
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;Landroid/content/Context;ILandroid/content/AttributionSource;Z)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mDeathRecipient:Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mToken:Landroid/os/IBinder;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mDeathRecipient:Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;->binderDied()V

    .line 40
    .line 41
    .line 42
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final unregister()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mToken:Landroid/os/IBinder;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mDeathRecipient:Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    :cond_0
    return v2

    .line 21
    :cond_1
    return v1
.end method
