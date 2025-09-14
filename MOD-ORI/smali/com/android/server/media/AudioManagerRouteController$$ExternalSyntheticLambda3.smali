.class public final synthetic Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/AudioManager$OnDevicesForAttributesChangedListener;


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
    iput-object p1, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDevicesForAttributesChanged(Landroid/media/AudioAttributes;Ljava/util/List;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/media/AudioManagerRouteController;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 p2, 0x1

    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/media/AudioManagerRouteController;->rebuildAvailableRoutesAndNotify()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
