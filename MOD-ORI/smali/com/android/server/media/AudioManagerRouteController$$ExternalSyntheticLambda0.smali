.class public final synthetic Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


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
    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 2
    .line 3
    check-cast p1, Landroid/media/MediaRoute2Info;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController;->mRouteIdToAvailableDeviceRoutes:Ljava/util/Map;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    xor-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    return p0
.end method
