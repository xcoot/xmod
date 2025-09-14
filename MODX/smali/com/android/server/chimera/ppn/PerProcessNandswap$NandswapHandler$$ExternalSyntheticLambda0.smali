.class public final synthetic Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;
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
    iput p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    sget p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->$r8$clinit:I

    .line 10
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p0

    .line 17
    const/16 v0, 0x64

    .line 19
    if-lt p0, v0, :cond_0

    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result p0

    .line 25
    const/16 v0, 0xfa

    .line 27
    if-le p0, v0, :cond_2

    .line 29
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result p0

    .line 33
    const/16 v0, -0x2bc

    .line 35
    if-eq p0, v0, :cond_2

    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result p0

    .line 41
    const/16 v0, -0x320

    .line 43
    if-eq p0, v0, :cond_2

    .line 45
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result p0

    .line 49
    const/16 p1, -0x3e8

    .line 51
    if-ne p0, p1, :cond_1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p0, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 57
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
