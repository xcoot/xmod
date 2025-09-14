.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Ljava/util/List;

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 12
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$flatten$10(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Landroid/util/IndentingPrintWriter;

    .line 18
    check-cast p1, Ljava/lang/String;

    .line 20
    check-cast p2, Ljava/lang/String;

    .line 22
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$dumpAssociations$7(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void

    .line 26
    :pswitch_1
    check-cast p0, Landroid/util/IndentingPrintWriter;

    .line 28
    check-cast p1, Ljava/lang/String;

    .line 30
    check-cast p2, Ljava/lang/Integer;

    .line 32
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$dumpAssociations$6(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    return-void

    .line 36
    :pswitch_2
    check-cast p0, Landroid/util/IndentingPrintWriter;

    .line 38
    check-cast p1, Ljava/lang/String;

    .line 40
    check-cast p2, Ljava/lang/Integer;

    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$dumpAssociations$5(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    return-void

    .line 46
    :pswitch_3
    check-cast p0, Landroid/util/IndentingPrintWriter;

    .line 48
    check-cast p1, Ljava/lang/String;

    .line 50
    check-cast p2, Ljava/lang/String;

    .line 52
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$dumpAssociations$9(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .line 56
    :pswitch_4
    check-cast p0, Landroid/util/IndentingPrintWriter;

    .line 58
    check-cast p1, Ljava/lang/String;

    .line 60
    check-cast p2, Ljava/lang/String;

    .line 62
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$dumpAssociations$8(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 66
    :pswitch_5
    check-cast p0, Landroid/util/IndentingPrintWriter;

    .line 68
    check-cast p1, Ljava/lang/String;

    .line 70
    check-cast p2, Ljava/lang/String;

    .line 72
    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$dump$4(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 76
    nop

    .line 77
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
