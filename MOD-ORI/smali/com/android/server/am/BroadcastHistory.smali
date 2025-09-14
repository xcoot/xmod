.class public final Lcom/android/server/am/BroadcastHistory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MAX_ABORTED_BROADCAST_HISTORY:I


# instance fields
.field public final MAX_BROADCAST_HISTORY:I

.field public final MAX_BROADCAST_SUMMARY_HISTORY:I

.field public final mAbortedBroadcastHistory:[Ljava/lang/String;

.field public mAbortedHistoryNext:I

.field public mBCBrHistoryRef:Ljava/lang/ref/SoftReference;

.field public final mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

.field public final mBroadcastSummaryHistory:[Landroid/content/Intent;

.field public final mBroadcastSummaryHistoryToString:[Ljava/lang/String;

.field public final mFrozenBroadcasts:Ljava/util/ArrayList;

.field public mHistoryNext:I

.field public final mPendingBroadcasts:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mSummaryHistoryDispatchTime:[J

.field public final mSummaryHistoryEnqueueTime:[J

.field public final mSummaryHistoryFinishTime:[J

.field public mSummaryHistoryNext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_ABORTED_BROADCAST:I

    .line 2
    .line 3
    sget v0, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_ABORTED_BROADCAST:I

    .line 4
    .line 5
    sput v0, Lcom/android/server/am/BroadcastHistory;->MAX_ABORTED_BROADCAST_HISTORY:I

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastConstants;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mFrozenBroadcasts:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mHistoryNext:I

    .line 20
    .line 21
    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryNext:I

    .line 22
    .line 23
    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->mAbortedHistoryNext:I

    .line 24
    .line 25
    iget v0, p2, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_COMPLETE_SIZE:I

    .line 26
    .line 27
    iput v0, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_HISTORY:I

    .line 28
    .line 29
    iget p2, p2, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_SUMMARY_SIZE:I

    .line 30
    .line 31
    iput p2, p0, Lcom/android/server/am/BroadcastHistory;->MAX_BROADCAST_SUMMARY_HISTORY:I

    .line 32
    .line 33
    new-array v0, v0, [Lcom/android/server/am/BroadcastRecord;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastHistory:[Lcom/android/server/am/BroadcastRecord;

    .line 36
    .line 37
    new-array v0, p2, [Landroid/content/Intent;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistory:[Landroid/content/Intent;

    .line 40
    .line 41
    new-array v0, p2, [J

    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryEnqueueTime:[J

    .line 44
    .line 45
    new-array v0, p2, [J

    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryDispatchTime:[J

    .line 48
    .line 49
    new-array v0, p2, [J

    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/am/BroadcastHistory;->mSummaryHistoryFinishTime:[J

    .line 52
    .line 53
    new-array p2, p2, [Ljava/lang/String;

    .line 54
    .line 55
    iput-object p2, p0, Lcom/android/server/am/BroadcastHistory;->mBroadcastSummaryHistoryToString:[Ljava/lang/String;

    .line 56
    .line 57
    sget p2, Lcom/android/server/am/BroadcastHistory;->MAX_ABORTED_BROADCAST_HISTORY:I

    .line 58
    .line 59
    new-array p2, p2, [Ljava/lang/String;

    .line 60
    .line 61
    iput-object p2, p0, Lcom/android/server/am/BroadcastHistory;->mAbortedBroadcastHistory:[Ljava/lang/String;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/android/server/am/BroadcastHistory;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 64
    .line 65
    return-void
.end method

.method public static dumpBroadcastList(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, " broadcasts:"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string p1, "    <empty>"

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    :goto_0
    if-ltz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    .line 39
    .line 40
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v2, "  broadcast #"

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 49
    .line 50
    .line 51
    const-string v2, ":"

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p0, p1}, Lcom/android/server/am/BroadcastRecord;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v0, v0, -0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    :goto_1
    return-void
.end method

.method public static ringAdvance(III)I
    .locals 0

    .line 1
    add-int/2addr p0, p1

    .line 2
    if-gez p0, :cond_0

    .line 3
    .line 4
    add-int/lit8 p2, p2, -0x1

    .line 5
    .line 6
    return p2

    .line 7
    :cond_0
    if-lt p0, p2, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    :cond_1
    return p0
.end method
