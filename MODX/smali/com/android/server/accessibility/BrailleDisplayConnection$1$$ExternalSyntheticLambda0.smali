.class public final synthetic Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/accessibility/BrailleDisplayConnection$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    move-result p1

    .line 14
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;->getHidrawUniq(I)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result p1

    .line 23
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;->getHidrawBusType(I)I

    .line 26
    move-result p0

    .line 27
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result p1

    .line 36
    invoke-interface {p0, p1}, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;->getHidrawName(I)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v0

    .line 45
    invoke-interface {p0, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;->getHidrawDescSize(I)I

    .line 48
    move-result v0

    .line 49
    if-lez v0, :cond_0

    .line 51
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 54
    move-result p1

    .line 55
    invoke-interface {p0, p1, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$NativeInterface;->getHidrawDesc(II)[B

    .line 58
    move-result-object p0

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 p0, 0x0

    .line 61
    :goto_0
    return-object p0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
