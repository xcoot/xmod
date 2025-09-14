.class public final synthetic Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/SystemMediaRoute2Provider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBluetoothRoutesUpdated()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateProviderState()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider;->notifySessionInfoUpdated()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
