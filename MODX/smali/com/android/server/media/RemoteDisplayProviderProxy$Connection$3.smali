.class public final Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

.field public final synthetic val$state:Landroid/media/RemoteDisplayState;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;Landroid/media/RemoteDisplayState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;->this$1:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 6
    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;->val$state:Landroid/media/RemoteDisplayState;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;->this$1:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 3
    iget-object v1, v0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 5
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;->val$state:Landroid/media/RemoteDisplayState;

    .line 7
    iget-object v2, v1, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 9
    if-ne v2, v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    const-string v2, ": State changed, state="

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const-string v2, "RemoteDisplayProvider"

    .line 33
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, v1, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    .line 38
    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 44
    iput-object p0, v1, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    .line 46
    iget-boolean p0, v1, Lcom/android/server/media/RemoteDisplayProviderProxy;->mScheduledDisplayStateChangedCallback:Z

    .line 48
    if-nez p0, :cond_0

    .line 50
    const/4 p0, 0x1

    .line 51
    iput-boolean p0, v1, Lcom/android/server/media/RemoteDisplayProviderProxy;->mScheduledDisplayStateChangedCallback:Z

    .line 53
    iget-object p0, v1, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    .line 55
    iget-object v0, v1, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateChanged:Lcom/android/server/media/RemoteDisplayProviderProxy$1;

    .line 57
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    :cond_0
    return-void
.end method
