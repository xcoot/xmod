.class public final synthetic Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/media/MediaRoute2Provider$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaRoute2Provider$Callback;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 5
    check-cast p1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 7
    check-cast p2, Landroid/media/RoutingSessionInfo;

    .line 9
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 17
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;

    .line 19
    const/4 v1, 0x4

    .line 20
    invoke-direct {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;-><init>(I)V

    .line 23
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    return-void

    .line 31
    :pswitch_0
    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;

    .line 33
    const/4 v1, 0x5

    .line 34
    invoke-direct {v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda3;-><init>(I)V

    .line 37
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
