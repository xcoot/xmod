.class public final Lcom/android/server/am/mars/EventRecorder$Event;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final eventType:Lcom/android/server/am/mars/EventRecorder$EventType;

.field public procStateAfterEvent:Ljava/lang/Integer;

.field public final procStateBeforeEvent:Ljava/lang/Integer;

.field public final reason:Ljava/lang/String;

.field public final time:J

.field public final uid:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(JLjava/lang/Integer;Lcom/android/server/am/mars/EventRecorder$EventType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/android/server/am/mars/EventRecorder$Event;->time:J

    .line 3
    iput-object p3, p0, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 4
    iput-object p4, p0, Lcom/android/server/am/mars/EventRecorder$Event;->eventType:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 5
    iput-object p5, p0, Lcom/android/server/am/mars/EventRecorder$Event;->procStateBeforeEvent:Ljava/lang/Integer;

    .line 6
    iput-object p6, p0, Lcom/android/server/am/mars/EventRecorder$Event;->procStateAfterEvent:Ljava/lang/Integer;

    .line 7
    iput-object p7, p0, Lcom/android/server/am/mars/EventRecorder$Event;->reason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/mars/EventRecorder$Event;->time:J

    const/4 v0, 0x1

    .line 12
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    const/4 v2, 0x2

    .line 13
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/mars/EventRecorder$EventType;->fromInt(I)Lcom/android/server/am/mars/EventRecorder$EventType;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/mars/EventRecorder$Event;->eventType:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v3, v0, :cond_1

    const/4 v0, 0x3

    if-eq v3, v2, :cond_0

    if-eq v3, v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/EventRecorder$Event;->procStateBeforeEvent:Ljava/lang/Integer;

    const/4 v0, 0x4

    .line 16
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/EventRecorder$Event;->procStateAfterEvent:Ljava/lang/Integer;

    const/4 v0, 0x5

    .line 17
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/server/am/mars/EventRecorder$Event;->reason:Ljava/lang/String;

    goto :goto_0

    .line 18
    :cond_1
    iput-object v1, p0, Lcom/android/server/am/mars/EventRecorder$Event;->procStateBeforeEvent:Ljava/lang/Integer;

    .line 19
    iput-object v1, p0, Lcom/android/server/am/mars/EventRecorder$Event;->procStateAfterEvent:Ljava/lang/Integer;

    .line 20
    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/am/mars/EventRecorder$Event;->reason:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public final toFile()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/android/server/am/mars/EventRecorder$Event;->time:J

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ","

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/am/mars/EventRecorder$Event;->eventType:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/android/server/am/mars/EventRecorder$EventType;->getNumber()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/am/mars/EventRecorder$Event;->procStateBeforeEvent:Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/am/mars/EventRecorder$Event;->procStateAfterEvent:Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/am/mars/EventRecorder$Event;->reason:Ljava/lang/String;

    .line 53
    .line 54
    const-string v1, "\n"

    .line 55
    .line 56
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "time: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/Date;

    .line 10
    .line 11
    iget-wide v2, p0, Lcom/android/server/am/mars/EventRecorder$Event;->time:J

    .line 12
    .line 13
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " uid: "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/am/mars/EventRecorder$Event;->uid:Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " type: "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/am/mars/EventRecorder$Event;->eventType:Lcom/android/server/am/mars/EventRecorder$EventType;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/android/server/am/mars/EventRecorder$EventType;->getNumber()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lcom/android/server/am/mars/EventRecorder$EventType;->-$$Nest$fgetnumber(Lcom/android/server/am/mars/EventRecorder$EventType;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/android/server/am/mars/EventRecorder$EventType;->-$$Nest$smisUnfreezeEvent(Ljava/lang/Integer;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    const-string v1, " procBefore: "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/am/mars/EventRecorder$Event;->procStateBeforeEvent:Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-static {v1}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, " procAfter: "

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/server/am/mars/EventRecorder$Event;->procStateAfterEvent:Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-static {v1}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/EventRecorder$Event;->reason:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_1

    .line 100
    .line 101
    const-string v1, " reason: "

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0
.end method
