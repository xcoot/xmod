.class public final synthetic Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:Landroid/app/contextualsearch/IContextualSearchCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;Landroid/os/Bundle;Landroid/app/contextualsearch/IContextualSearchCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;

    .line 6
    iput-object p2, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 8
    iput-object p3, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;->f$2:Landroid/app/contextualsearch/IContextualSearchCallback;

    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;

    .line 3
    iget-object v1, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    .line 5
    iget-object p0, p0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub$$ExternalSyntheticLambda0;->f$2:Landroid/app/contextualsearch/IContextualSearchCallback;

    .line 7
    iget-object v0, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService$ContextualSearchManagerStub;->this$0:Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    .line 9
    iget-object v0, v0, Lcom/android/server/contextualsearch/ContextualSearchManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/16 v2, 0x7d0

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    const/16 v3, 0x7e3

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v3

    .line 25
    const/16 v4, 0x7e8

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v4

    .line 31
    const/16 v5, 0x7e2

    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v5

    .line 37
    invoke-static {v2, v3, v4, v5}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerInternal;->takeAssistScreenshot(Ljava/util/Set;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    .line 52
    move-result-object v0

    .line 53
    const-string v2, "android.app.contextualsearch.extra.SCREENSHOT"

    .line 55
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    :cond_0
    :try_start_0
    new-instance v0, Landroid/app/contextualsearch/ContextualSearchState;

    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-direct {v0, v2, v2, v1}, Landroid/app/contextualsearch/ContextualSearchState;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/os/Bundle;)V

    .line 64
    invoke-interface {p0, v0}, Landroid/app/contextualsearch/IContextualSearchCallback;->onResult(Landroid/app/contextualsearch/ContextualSearchState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    const-string v0, "ContextualSearchManagerService"

    .line 71
    const-string v1, "Error invoking ContextualSearchCallback"

    .line 73
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :goto_0
    return-void
.end method
