.class Lcom/android/server/rotationresolver/RemoteRotationResolverService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private final mIdleUnbindTimeoutMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 8

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.service.rotationresolver.RotationResolverService"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    new-instance v7, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda2;

    .line 13
    .line 14
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const v5, 0x4001000

    .line 18
    .line 19
    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    move v6, p3

    .line 23
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 24
    .line 25
    .line 26
    const-wide/32 p1, 0xea60

    .line 27
    .line 28
    .line 29
    iput-wide p1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->mIdleUnbindTimeoutMs:J

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    return-wide v0
.end method

.method public final resolveRotation(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p1, v0}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;Landroid/service/rotationresolver/RotationResolutionRequest;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->getJobHandler()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p1, v1}, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mRemoteRequest:Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/service/rotationresolver/RotationResolutionRequest;->getTimeoutMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
