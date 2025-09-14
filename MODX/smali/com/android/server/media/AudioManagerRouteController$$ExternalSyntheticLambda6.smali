.class public final synthetic Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/AudioManagerRouteController;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/AudioManagerRouteController;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 6
    iput-object p2, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Runnable;

    .line 8
    iput-object p3, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 3
    iget-object v1, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Runnable;

    .line 5
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    const-string v3, "Unexpected exception while transferring to route id: "

    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    const-string v2, "MR2SystemProvider"

    .line 31
    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    iget-object p0, v0, Lcom/android/server/media/AudioManagerRouteController;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v1, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda9;

    .line 38
    invoke-direct {v1, v0}, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/media/AudioManagerRouteController;)V

    .line 41
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    :goto_0
    return-void
.end method
