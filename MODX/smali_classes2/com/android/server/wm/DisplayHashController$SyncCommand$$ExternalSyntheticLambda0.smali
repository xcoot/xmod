.class public final synthetic Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/DisplayHashController$Command;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayHashController$SyncCommand;

.field public final synthetic f$1:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayHashController$SyncCommand;Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayHashController$SyncCommand;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BiConsumer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run(Landroid/service/displayhash/IDisplayHashingService;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BiConsumer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/DisplayHashController$SyncCommand;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/os/RemoteCallback;

    .line 9
    .line 10
    new-instance v2, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayHashController$SyncCommand;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
