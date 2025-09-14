.class public final synthetic Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

.field public final synthetic f$1:Landroid/service/rotationresolver/RotationResolutionRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;Landroid/service/rotationresolver/RotationResolutionRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda0;->f$1:Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$$ExternalSyntheticLambda0;->f$1:Landroid/service/rotationresolver/RotationResolutionRequest;

    .line 4
    .line 5
    check-cast p1, Landroid/service/rotationresolver/IRotationResolverService;

    .line 6
    .line 7
    sget v1, Lcom/android/server/rotationresolver/RemoteRotationResolverService;->$r8$clinit:I

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest;->mIRotationResolverCallback:Lcom/android/server/rotationresolver/RemoteRotationResolverService$RotationRequest$RotationResolverCallback;

    .line 10
    .line 11
    invoke-interface {p1, v0, p0}, Landroid/service/rotationresolver/IRotationResolverService;->resolveRotation(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolutionRequest;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
