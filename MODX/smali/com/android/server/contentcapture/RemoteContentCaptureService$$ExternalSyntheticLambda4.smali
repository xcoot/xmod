.class public final synthetic Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/view/contentcapture/DataShareRequest;

.field public final synthetic f$1:Landroid/service/contentcapture/IDataShareCallback$Stub;


# direct methods
.method public synthetic constructor <init>(Landroid/view/contentcapture/DataShareRequest;Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda4;->f$0:Landroid/view/contentcapture/DataShareRequest;

    .line 6
    iput-object p2, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda4;->f$1:Landroid/service/contentcapture/IDataShareCallback$Stub;

    .line 8
    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda4;->f$0:Landroid/view/contentcapture/DataShareRequest;

    .line 3
    iget-object p0, p0, Lcom/android/server/contentcapture/RemoteContentCaptureService$$ExternalSyntheticLambda4;->f$1:Landroid/service/contentcapture/IDataShareCallback$Stub;

    .line 5
    check-cast p1, Landroid/service/contentcapture/IContentCaptureService;

    .line 7
    invoke-interface {p1, v0, p0}, Landroid/service/contentcapture/IContentCaptureService;->onDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    .line 10
    return-void
.end method
