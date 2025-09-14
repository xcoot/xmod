.class public final Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mMaxDuration:J

.field public final mQuotaBuffer:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    .line 10
    .line 11
    const-wide/32 v0, 0x5265c00

    .line 12
    .line 13
    .line 14
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mMaxDuration:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;J)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/content/pm/UserPackage;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;

    .line 28
    .line 29
    iget-object v3, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v3, ", u"

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v1, v1, Landroid/content/pm/UserPackage;->userId:I

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 42
    .line 43
    .line 44
    const-string v1, ": "

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    const-string v1, "--"

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const-string/jumbo v1, "quota: "

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget v1, v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->remainingQuota:I

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 66
    .line 67
    .line 68
    const-string v1, ", expiration: "

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-wide v3, v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->expirationTime:J

    .line 74
    .line 75
    invoke-static {v3, v4, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 76
    .line 77
    .line 78
    const-string v1, " last used: "

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-wide v1, v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->lastUsage:J

    .line 84
    .line 85
    invoke-static {v1, v2, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 95
    .line 96
    .line 97
    return-void
.end method
