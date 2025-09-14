.class public final synthetic Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/service/contentcapture/SnapshotData;


# direct methods
.method public synthetic constructor <init>(ILandroid/service/contentcapture/SnapshotData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda5;->f$0:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda5;->f$1:Landroid/service/contentcapture/SnapshotData;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda5;->f$0:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda5;->f$1:Landroid/service/contentcapture/SnapshotData;

    .line 4
    .line 5
    check-cast p1, Landroid/service/contentcapture/IContentCaptureService;

    .line 6
    .line 7
    invoke-interface {p1, v0, p0}, Landroid/service/contentcapture/IContentCaptureService;->onActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
