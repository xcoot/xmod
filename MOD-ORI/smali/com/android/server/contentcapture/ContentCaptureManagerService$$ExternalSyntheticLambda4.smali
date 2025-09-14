.class public final synthetic Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/ContentCaptureOptions;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/ContentCaptureOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda4;->f$1:Landroid/content/ContentCaptureOptions;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda4;->f$1:Landroid/content/ContentCaptureOptions;

    .line 4
    .line 5
    check-cast p1, Landroid/view/contentcapture/IContentCaptureOptionsCallback;

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-interface {p1, p0}, Landroid/view/contentcapture/IContentCaptureOptionsCallback;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string p1, "Unable to send setContentCaptureOptions(): "

    .line 19
    .line 20
    const-string p2, "ContentCaptureManagerService"

    .line 21
    .line 22
    invoke-static {p1, p0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method
