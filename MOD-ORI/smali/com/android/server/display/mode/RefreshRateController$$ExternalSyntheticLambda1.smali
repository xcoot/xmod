.class public final synthetic Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/mode/RefreshRateController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Integer;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/16 p1, 0x3c

    .line 13
    .line 14
    if-lt p0, p1, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0

    .line 20
    :pswitch_0
    check-cast p1, Lcom/android/server/display/mode/RefreshRateToken;

    .line 21
    .line 22
    instance-of p0, p1, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMinLimitToken;

    .line 23
    .line 24
    return p0

    .line 25
    :pswitch_1
    check-cast p1, Lcom/android/server/display/mode/RefreshRateToken;

    .line 26
    .line 27
    instance-of p0, p1, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken;

    .line 28
    .line 29
    return p0

    .line 30
    :pswitch_2
    check-cast p1, Lcom/android/server/display/mode/RefreshRateToken;

    .line 31
    .line 32
    instance-of p0, p1, Lcom/android/server/display/mode/RefreshRateController$LowRefreshRateToken;

    .line 33
    .line 34
    return p0

    .line 35
    :pswitch_3
    check-cast p1, Lcom/android/server/display/mode/RefreshRateToken;

    .line 36
    .line 37
    instance-of p0, p1, Lcom/android/server/display/mode/RefreshRateController$LowRefreshRateToken;

    .line 38
    .line 39
    return p0

    .line 40
    :pswitch_4
    check-cast p1, Lcom/android/server/display/mode/RefreshRateToken;

    .line 41
    .line 42
    instance-of p0, p1, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;

    .line 43
    .line 44
    return p0

    .line 45
    :pswitch_5
    check-cast p1, Lcom/android/server/display/mode/RefreshRateToken;

    .line 46
    .line 47
    instance-of p0, p1, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken;

    .line 48
    .line 49
    return p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
