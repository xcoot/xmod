.class public final Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;
.super Lcom/android/server/hdmi/HdmiCecController$Dumpable;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIsReceived:Z

.field public final mMessage:Lcom/android/server/hdmi/HdmiCecMessage;

.field public final mSendResults:Ljava/util/List;


# direct methods
.method public constructor <init>(ZLcom/android/server/hdmi/HdmiCecMessage;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController$Dumpable;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mIsReceived:Z

    .line 6
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 8
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mSendResults:Ljava/util/List;

    .line 10
    return-void
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mIsReceived:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v1, "[R]"

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v1, "[S]"

    .line 10
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 13
    const-string v1, " time="

    .line 15
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 18
    new-instance v1, Ljava/util/Date;

    .line 20
    iget-wide v2, p0, Lcom/android/server/hdmi/HdmiCecController$Dumpable;->mTime:J

    .line 22
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 25
    invoke-virtual {p2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 32
    const-string p2, " message="

    .line 34
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 39
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mSendResults:Ljava/util/List;

    .line 51
    if-eqz v0, :cond_1

    .line 53
    const-string v0, " ("

    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v0, ", "

    .line 60
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;->mSendResults:Ljava/util/List;

    .line 62
    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string p0, ")"

    .line 71
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 77
    return-void
.end method
