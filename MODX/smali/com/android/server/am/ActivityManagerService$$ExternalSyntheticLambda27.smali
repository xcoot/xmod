.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda27;->f$0:Ljava/io/PrintWriter;

    .line 6
    iput-wide p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda27;->f$1:J

    .line 8
    iput-wide p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda27;->f$2:J

    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda27;->f$0:Ljava/io/PrintWriter;

    .line 3
    iget-wide v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda27;->f$1:J

    .line 5
    iget-wide v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda27;->f$2:J

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 9
    check-cast p2, Landroid/util/Pair;

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    const-string v5, "    "

    .line 15
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p1

    .line 22
    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string p1, ": "

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 43
    check-cast p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    const-string v5, " duration="

    .line 49
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-wide v5, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mDuration:J

    .line 54
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    const-string v5, " callingUid="

    .line 59
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget v5, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    .line 64
    invoke-static {v5}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v5, " reasonCode="

    .line 73
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v5, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReasonCode:I

    .line 78
    invoke-static {v5}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v5, " reason="

    .line 87
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mReason:Ljava/lang/String;

    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    const-string p0, " expiration="

    .line 104
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    sub-long p0, v1, v3

    .line 109
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 111
    check-cast p2, Ljava/lang/Long;

    .line 113
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 116
    move-result-wide v3

    .line 117
    add-long/2addr v3, p0

    .line 118
    invoke-static {v0, v3, v4, v1, v2}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 121
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 124
    return-void
.end method
