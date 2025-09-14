.class public final synthetic Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken$$ExternalSyntheticLambda1;
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
    iput p1, p0, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/mode/RefreshRateController$RefreshRateMaxLimitToken$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    check-cast p1, Lcom/android/server/display/mode/RefreshRateToken;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    iget-object p0, p1, Lcom/android/server/display/mode/RefreshRateToken;->mInfo:Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    .line 10
    iget p0, p0, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mRefreshRate:I

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    iget-object p0, p1, Lcom/android/server/display/mode/RefreshRateToken;->mInfo:Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;

    .line 19
    iget p0, p0, Lcom/android/server/display/mode/RefreshRateToken$RefreshRateTokenInfo;->mRefreshRate:I

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
