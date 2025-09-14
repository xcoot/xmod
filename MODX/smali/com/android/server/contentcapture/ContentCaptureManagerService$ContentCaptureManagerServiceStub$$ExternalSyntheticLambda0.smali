.class public final synthetic Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

.field public final synthetic f$1:Landroid/content/pm/ParceledListSlice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;Landroid/content/pm/ParceledListSlice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    .line 6
    iput-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ParceledListSlice;

    .line 8
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    .line 3
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ParceledListSlice;

    .line 5
    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 7
    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->createRemoteContentProtectionService()Lcom/android/server/contentprotection/RemoteContentProtectionService;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v1, v2, p0}, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    const-string v0, "ContentCaptureManagerService"

    .line 27
    const-string v1, "Failed to call remote service"

    .line 29
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    :goto_0
    return-void
.end method
