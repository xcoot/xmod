.class public final Lcom/android/server/wm/DisplayRotation$RotationHistory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRecords:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayDeque;

    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
