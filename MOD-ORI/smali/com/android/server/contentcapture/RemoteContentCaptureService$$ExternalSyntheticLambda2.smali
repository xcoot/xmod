.class public final synthetic Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/view/contentcapture/ContentCaptureContext;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/internal/os/IResultReceiver;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;->f$0:Landroid/view/contentcapture/ContentCaptureContext;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;->f$3:Lcom/android/internal/os/IResultReceiver;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;->f$0:Landroid/view/contentcapture/ContentCaptureContext;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget v3, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;->f$3:Lcom/android/internal/os/IResultReceiver;

    .line 8
    .line 9
    iget v5, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda2;->f$4:I

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Landroid/service/contentcapture/IContentCaptureService;

    .line 13
    .line 14
    invoke-interface/range {v0 .. v5}, Landroid/service/contentcapture/IContentCaptureService;->onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
