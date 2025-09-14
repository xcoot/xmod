.class public final Lcom/android/server/media/MediaRoute2ProviderWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRoute2ProviderWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher$1;->this$0:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    sget-boolean p1, Lcom/android/server/media/MediaRoute2ProviderWatcher;->DEBUG:Z

    .line 3
    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    const-string v0, "Received package manager broadcast: "

    .line 9
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    const-string p2, "MR2ProviderWatcher"

    .line 21
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher$1;->this$0:Lcom/android/server/media/MediaRoute2ProviderWatcher;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance p1, Lcom/android/server/media/MediaRoute2ProviderWatcher$$ExternalSyntheticLambda0;

    .line 31
    invoke-direct {p1, p0}, Lcom/android/server/media/MediaRoute2ProviderWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V

    .line 34
    iget-object p2, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 36
    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 42
    new-instance p1, Lcom/android/server/media/MediaRoute2ProviderWatcher$$ExternalSyntheticLambda0;

    .line 44
    invoke-direct {p1, p0}, Lcom/android/server/media/MediaRoute2ProviderWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V

    .line 47
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    :cond_1
    return-void
.end method
