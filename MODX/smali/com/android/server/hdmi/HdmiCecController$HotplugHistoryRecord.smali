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

    .line 4
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mPort:I

    .line 6
    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mConnected:Z

    .line 8
    return-void
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 3

    .line 1
    const-string v0, "[H]"

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 6
    const-string v0, " time="

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/util/Date;

    .line 13
    iget-wide v1, p0, Lcom/android/server/hdmi/HdmiCecController$Dumpable;->mTime:J

    .line 15
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 18
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 25
    const-string p2, " hotplug port="

    .line 27
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 30
    iget p2, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mPort:I

    .line 32
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 35
    const-string p2, " connected="

    .line 37
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 40
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;->mConnected:Z

    .line 42
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 45
    return-void
.end method
