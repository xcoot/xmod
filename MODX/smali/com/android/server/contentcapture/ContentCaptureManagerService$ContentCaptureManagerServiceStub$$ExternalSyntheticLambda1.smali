.class public final synthetic Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 10
    const-string/jumbo v0, "isContentCaptureFeatureEnabled()"

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isCalledByServiceLocked(Ljava/lang/String;)Z

    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 22
    const-string/jumbo v0, "caller is not user\'s ContentCapture service"

    .line 25
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0

    .line 29
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 31
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
