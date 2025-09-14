.class public final synthetic Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda7;->f$0:Landroid/util/IndentingPrintWriter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda7;->f$0:Landroid/util/IndentingPrintWriter;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, Landroid/util/LongArrayQueue;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_1

    .line 15
    .line 16
    invoke-static {p1, p3, p4}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p1, ":"

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p2, p1}, Landroid/util/LongArrayQueue;->get(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide p3

    .line 36
    invoke-virtual {p0, p3, p4}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    :goto_0
    invoke-virtual {p2}, Landroid/util/LongArrayQueue;->size()I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-ge p1, p3, :cond_0

    .line 45
    .line 46
    const-string p3, ", "

    .line 47
    .line 48
    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/util/LongArrayQueue;->get(I)J

    .line 52
    .line 53
    .line 54
    move-result-wide p3

    .line 55
    invoke-virtual {p0, p3, p4}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 p1, p1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void

    .line 68
    :pswitch_0
    check-cast p2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    .line 69
    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    invoke-static {p1, p3, p4}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string p1, ":"

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
