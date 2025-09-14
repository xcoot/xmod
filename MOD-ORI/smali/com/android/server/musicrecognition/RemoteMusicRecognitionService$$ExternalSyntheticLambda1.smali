.class public final synthetic Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/musicrecognition/RemoteMusicRecognitionService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CompletableFuture;

    .line 4
    .line 5
    check-cast p1, Landroid/media/musicrecognition/IMusicRecognitionService;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/android/server/musicrecognition/RemoteMusicRecognitionService$1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Landroid/media/musicrecognition/IMusicRecognitionService;->getAttributionTag(Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
