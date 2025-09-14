.class public final Lcom/android/server/utils/SnapshotCache$Auto;
.super Lcom/android/server/utils/SnapshotCache;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/utils/SnapshotCache$Auto;->$r8$classId:I

    invoke-direct {p0}, Lcom/android/server/utils/SnapshotCache;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;I)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/android/server/utils/SnapshotCache$Auto;->$r8$classId:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createSnapshot()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/utils/SnapshotCache$Auto;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    const-string v0, "cannot snapshot a sealed snaphot"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0

    .line 14
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lcom/android/server/utils/Snappable;

    .line 17
    .line 18
    invoke-interface {p0}, Lcom/android/server/utils/Snappable;->snapshot()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/server/utils/Snappable;

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
