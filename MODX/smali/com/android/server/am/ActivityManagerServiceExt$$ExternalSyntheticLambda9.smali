.class public final synthetic Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(ILjava/io/PrintWriter;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda9;->f$0:Ljava/io/PrintWriter;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda9;->f$0:Ljava/io/PrintWriter;

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    check-cast p2, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;

    .line 12
    const-string v0, "        action="

    .line 14
    const-string v1, " cnt="

    .line 16
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object p1

    .line 20
    iget v0, p2, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mCnt:I

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string v0, " max="

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v0, p2, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mMaxCnt:I

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v0, " total="

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-wide v0, p2, Lcom/android/server/am/ActivityManagerServiceExt$BrCountInfo;->mTotalCnt:J

    .line 42
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    return-void

    .line 53
    :pswitch_0
    check-cast p2, Landroid/util/ArrayMap;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "    Package ["

    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string p1, "]"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    new-instance p1, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda9;

    .line 79
    const/4 v0, 0x2

    .line 80
    invoke-direct {p1, v0, p0}, Lcom/android/server/am/ActivityManagerServiceExt$$ExternalSyntheticLambda9;-><init>(ILjava/io/PrintWriter;)V

    .line 83
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 86
    return-void

    .line 87
    :pswitch_1
    check-cast p2, Ljava/util/List;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "Action ["

    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string p1, "]"

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    const-string p1, "  Packages :"

    .line 113
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 119
    move-result-object p1

    .line 120
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    move-result p2

    .line 124
    if-eqz p2, :cond_0

    .line 126
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    move-result-object p2

    .line 130
    check-cast p2, Ljava/lang/String;

    .line 132
    const-string v0, "   - "

    .line 134
    invoke-static {p0, v0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    goto :goto_0

    .line 138
    :cond_0
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
