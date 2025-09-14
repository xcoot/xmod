.class public final Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/permission/PermissionManagerLocal;


# instance fields
.field public final policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/AccessCheckingService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "uid"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "permission"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string/jumbo v0, "null cannot be cast to non-null type com.android.server.permission.access.permission.AppIdPermissionPolicy"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final isSignaturePermissionAllowlistForceEnforced()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSignaturePermissionAllowlistForceEnforced:Z

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "Check failed."

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final setSignaturePermissionAllowlistForceEnforced(Z)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionManagerLocalImpl;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->isSignaturePermissionAllowlistForceEnforced:Z

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string p1, "Check failed."

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method
