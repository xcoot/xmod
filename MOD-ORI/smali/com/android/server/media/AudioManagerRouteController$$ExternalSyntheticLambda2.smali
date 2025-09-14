.class public final synthetic Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/AudioManagerRouteController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/AudioManagerRouteController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast p0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method
