.class public final synthetic Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaRoute2Provider$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaRoute2Provider$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 3
    check-cast p1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 5
    check-cast p2, Ljava/lang/Long;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 10
    move-result-wide v0

    .line 11
    check-cast p3, Landroid/media/RoutingSessionInfo;

    .line 13
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 15
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->onSessionCreated(Lcom/android/server/media/MediaRoute2Provider;JLandroid/media/RoutingSessionInfo;)V

    .line 18
    return-void
.end method
