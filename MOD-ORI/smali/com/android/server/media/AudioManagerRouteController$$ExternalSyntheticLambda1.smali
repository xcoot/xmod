.class public final synthetic Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/media/AudioManagerRouteController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    .line 7
    .line 8
    iget-object p0, p1, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;->mMediaRoute2Info:Landroid/media/MediaRoute2Info;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    check-cast p1, Landroid/media/MediaRoute2Info;

    .line 12
    .line 13
    new-instance p0, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/media/AudioManagerRouteController$MediaRoute2InfoHolder;-><init>(Landroid/media/MediaRoute2Info;IZ)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
