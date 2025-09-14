.class public final Lcom/android/server/tracing/TracingServiceProxy;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCachedReporterServices:Landroid/util/LruCache;

.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mServicePublished:Z

.field public final mTracingServiceProxy:Lcom/android/server/tracing/TracingServiceProxy$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mServicePublished:Z

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/tracing/TracingServiceProxy$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/tracing/TracingServiceProxy$1;-><init>(Lcom/android/server/tracing/TracingServiceProxy;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mTracingServiceProxy:Lcom/android/server/tracing/TracingServiceProxy$1;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    new-instance p1, Landroid/util/LruCache;

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    invoke-direct {p1, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy;->mCachedReporterServices:Landroid/util/LruCache;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final getOrCreateReporterService(Landroid/content/ComponentName;)Lcom/android/internal/infra/ServiceConnector;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mCachedReporterServices:Landroid/util/LruCache;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/internal/infra/ServiceConnector;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/android/server/tracing/TracingServiceProxy$2;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/tracing/TracingServiceProxy;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    new-instance v6, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    move-object v1, p1

    .line 37
    move-object v2, p0

    .line 38
    move-object v4, v0

    .line 39
    invoke-direct/range {v1 .. v6}, Lcom/android/server/tracing/TracingServiceProxy$2;-><init>(Lcom/android/server/tracing/TracingServiceProxy;Landroid/content/Context;Landroid/content/Intent;ILcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda0;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mCachedReporterServices:Landroid/util/LruCache;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-object v0, p1

    .line 52
    :cond_0
    return-object v0
.end method

.method public final hasPermission(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "Trace reporting service "

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, " does not have "

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " permission"

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p1, "TracingServiceProxy"

    .line 45
    .line 46
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return p0

    .line 51
    :cond_0
    const/4 p0, 0x1

    .line 52
    return p0
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/server/tracing/TracingServiceProxy;->mServicePublished:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy;->mTracingServiceProxy:Lcom/android/server/tracing/TracingServiceProxy$1;

    .line 6
    .line 7
    const-string/jumbo v0, "tracing.proxy"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/android/server/tracing/TracingServiceProxy;->mServicePublished:Z

    .line 15
    .line 16
    :cond_0
    return-void
.end method
