.class public final synthetic Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/BroadcastProcessQueue$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 7
    .line 8
    aget p0, p0, p2

    .line 9
    .line 10
    const/4 p1, 0x6

    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0

    .line 17
    :pswitch_0
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 18
    .line 19
    aget p0, p0, p2

    .line 20
    .line 21
    const/4 p1, 0x6

    .line 22
    if-ne p0, p1, :cond_1

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    :goto_1
    return p0

    .line 28
    :pswitch_1
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 29
    .line 30
    aget p0, p0, p2

    .line 31
    .line 32
    if-nez p0, :cond_2

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/4 p0, 0x0

    .line 37
    :goto_2
    return p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
