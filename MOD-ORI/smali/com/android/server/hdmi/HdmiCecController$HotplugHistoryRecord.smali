.class public final Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;
.super Lcom/android/server/hdmi/HdmiCecController$Dumpable;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConnected:Z

.field public final mPort:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController$Dumpable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mPort:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mConnected:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 3

    .line 1
    const-string v0, "[H]"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, " time="

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/Date;

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController$Dumpable;->mTime:J

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p2, " hotplug port="

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget p2, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mPort:I

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 33
    .line 34
    .line 35
    const-string p2, " connected="

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mConnected:Z

    .line 41
    .line 42
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
