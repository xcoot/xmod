.class public final synthetic Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/RemoteCallback;

.field public final synthetic f$3:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService$$ExternalSyntheticLambda2;->f$0:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 6
    iput-object p2, p0, Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService$$ExternalSyntheticLambda2;->f$2:Landroid/os/RemoteCallback;

    .line 10
    iput-object p4, p0, Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService$$ExternalSyntheticLambda2;->f$3:Landroid/os/RemoteCallback;

    .line 12
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService$$ExternalSyntheticLambda2;->f$0:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 3
    iget-object v1, p0, Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService$$ExternalSyntheticLambda2;->f$2:Landroid/os/RemoteCallback;

    .line 7
    iget-object p0, p0, Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService$$ExternalSyntheticLambda2;->f$3:Landroid/os/RemoteCallback;

    .line 9
    check-cast p1, Landroid/service/ambientcontext/IAmbientContextDetectionService;

    .line 11
    sget v3, Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService;->$r8$clinit:I

    .line 13
    invoke-interface {p1, v0, v1, v2, p0}, Landroid/service/ambientcontext/IAmbientContextDetectionService;->startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 16
    return-void
.end method
