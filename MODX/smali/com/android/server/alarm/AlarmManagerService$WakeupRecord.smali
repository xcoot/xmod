.class public final Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mTag:Ljava/lang/String;

.field public final mUid:I

.field public final mWakeupRtc:J

.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;JILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 6
    iput-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mWakeupRtc:J

    .line 8
    iput p4, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mUid:I

    .line 10
    iput-object p5, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mTag:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 3
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mWakeupRtc:J

    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 8
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 12
    const-string/jumbo v0, "rtc"

    .line 15
    invoke-virtual {p1, v0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 18
    iget p2, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mUid:I

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p2

    .line 24
    const-string/jumbo v0, "uid"

    .line 27
    invoke-virtual {p1, v0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 30
    const-string/jumbo p2, "tag"

    .line 33
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->mTag:Ljava/lang/String;

    .line 35
    invoke-virtual {p1, p2, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 38
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 41
    return-void
.end method
