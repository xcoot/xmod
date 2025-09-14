.class public final Lcom/android/server/utils/ManagedApplicationService$LogEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$LogFormattable;


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final event:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p2, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->timestamp:J

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    .line 7
    .line 8
    iput p4, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final toLogString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/Date;

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->timestamp:J

    .line 9
    .line 10
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, "   "

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iget v1, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    .line 27
    .line 28
    if-eq v1, p1, :cond_3

    .line 29
    .line 30
    const/4 p1, 0x2

    .line 31
    if-eq v1, p1, :cond_2

    .line 32
    .line 33
    const/4 p1, 0x3

    .line 34
    if-eq v1, p1, :cond_1

    .line 35
    .line 36
    const/4 p1, 0x4

    .line 37
    if-eq v1, p1, :cond_0

    .line 38
    .line 39
    const-string p1, "Unknown Event Occurred"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p1, "Permanently Stopped"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string p1, "Binding Died For"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string p1, "Disconnected"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const-string p1, "Connected"

    .line 52
    .line 53
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, " Managed Service: "

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    .line 62
    .line 63
    if-nez p0, :cond_4

    .line 64
    .line 65
    const-string p0, "None"

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method
