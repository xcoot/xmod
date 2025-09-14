.class public final Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;
.super Lcom/android/server/hdmi/HdmiCecController$Dumpable;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

.field public final mCaller:Ljava/lang/String;

.field public final mIsActiveSource:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController$Dumpable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mIsActiveSource:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mCaller:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "time="

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/Date;

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController$Dumpable;->mTime:J

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p2, " active source="

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mActiveSource:Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const-string p2, " isActiveSource="

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-boolean p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mIsActiveSource:Z

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 39
    .line 40
    .line 41
    const-string p2, " from="

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSourceHistoryRecord;->mCaller:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
