.class final Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/ambientcontext/RemoteAmbientDetectionService;


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService;

    .line 3
    return-void
.end method


# virtual methods
.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 3
    return-wide v0
.end method

.method public final queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Query status for "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "DefaultRemoteAmbientContextDetectionService"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService$$ExternalSyntheticLambda3;

    .line 22
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService$$ExternalSyntheticLambda3;-><init>([ILjava/lang/String;Landroid/os/RemoteCallback;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 28
    return-void
.end method

.method public final startDetection(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Start detection for "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/app/ambientcontext/AmbientContextEventRequest;->getEventTypes()Ljava/util/Set;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "DefaultRemoteAmbientContextDetectionService"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService$$ExternalSyntheticLambda2;

    .line 26
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService$$ExternalSyntheticLambda2;-><init>(Landroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 32
    return-void
.end method

.method public final stopDetection(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Stop detection for "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "DefaultRemoteAmbientContextDetectionService"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService$$ExternalSyntheticLambda1;

    .line 22
    invoke-direct {v0, p1}, Lcom/android/server/ambientcontext/DefaultRemoteAmbientContextDetectionService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    .line 28
    return-void
.end method
