.class public final synthetic Lcom/samsung/android/server/audio/MicModeType$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/server/audio/MicModeType$2$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput p1, p0, Lcom/samsung/android/server/audio/MicModeType$2$$ExternalSyntheticLambda0;->f$0:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/samsung/android/server/audio/MicModeType$2$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/server/audio/MicModeType$2$$ExternalSyntheticLambda0;->f$0:I

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    packed-switch v2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget v2, Lcom/samsung/android/server/audio/MicModeType$6;->$r8$clinit:I

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-ne p0, p1, :cond_0

    .line 19
    .line 20
    move v0, v1

    .line 21
    :cond_0
    return v0

    .line 22
    :pswitch_0
    sget v2, Lcom/samsung/android/server/audio/MicModeType$5;->$r8$clinit:I

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-ne p0, p1, :cond_1

    .line 29
    .line 30
    move v0, v1

    .line 31
    :cond_1
    return v0

    .line 32
    :pswitch_1
    sget v2, Lcom/samsung/android/server/audio/MicModeType$2;->$r8$clinit:I

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-ne p0, p1, :cond_2

    .line 39
    .line 40
    move v0, v1

    .line 41
    :cond_2
    return v0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
