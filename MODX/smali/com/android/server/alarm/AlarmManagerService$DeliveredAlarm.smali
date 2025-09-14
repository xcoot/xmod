.class public final Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHash:Ljava/lang/String;

.field public final mOrigWhen:J

.field public final mTag:Ljava/lang/String;

.field public final mWhenDeliveredElapsed:J

.field public final mWhenDeliveredRtc:J


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/Alarm;JJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mTag:Ljava/lang/String;

    .line 8
    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->origWhen:J

    .line 10
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mOrigWhen:J

    .line 12
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "PI:"

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 25
    invoke-virtual {p1}, Landroid/app/PendingIntent;->hashCode()I

    .line 28
    move-result p1

    .line 29
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "L:"

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 50
    invoke-interface {p1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    .line 57
    move-result p1

    .line 58
    goto :goto_0

    .line 59
    :goto_1
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mHash:Ljava/lang/String;

    .line 61
    iput-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mWhenDeliveredRtc:J

    .line 63
    iput-wide p4, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mWhenDeliveredElapsed:J

    .line 65
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 3

    .line 1
    const-string v0, "[tag"

    .line 3
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mTag:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 8
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mOrigWhen:J

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    move-result-object v0

    .line 14
    const-string/jumbo v1, "origWhen"

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 20
    const-string v0, "H"

    .line 22
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mHash:Ljava/lang/String;

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 27
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mWhenDeliveredElapsed:J

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    move-result-object v0

    .line 33
    const-string/jumbo v1, "elapsed"

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 39
    const-string/jumbo v0, "rtc="

    .line 42
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/Date;

    .line 47
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->mWhenDeliveredRtc:J

    .line 49
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 52
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 59
    const-string p0, "]"

    .line 61
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 64
    return-void
.end method
