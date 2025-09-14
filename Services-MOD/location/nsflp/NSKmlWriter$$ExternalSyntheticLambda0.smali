.class public final synthetic Lcom/android/server/location/nsflp/NSKmlWriter$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lcom/android/server/location/nsflp/NSKmlWriter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    check-cast p1, Ljava/lang/String;

    .line 8
    new-instance p0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    return-object p0

    .line 14
    :pswitch_0
    check-cast p1, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 16
    new-instance p0, Ljava/util/LinkedList;

    .line 18
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 21
    return-object p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
