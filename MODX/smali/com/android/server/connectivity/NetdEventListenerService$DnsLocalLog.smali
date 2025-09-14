.class public final Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLog:Ljava/util/Deque;

.field public final mMaxLines:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mMaxLines:I

    .line 13
    new-instance v1, Ljava/util/ArrayDeque;

    .line 15
    invoke-direct {v1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 18
    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    .line 20
    return-void
.end method


# virtual methods
.method public final declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    .line 4
    check-cast v0, Ljava/util/ArrayDeque;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 22
    const-string v2, ""

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 28
    move-result v4

    .line 29
    if-ge v3, v4, :cond_1

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 34
    move-result v4

    .line 35
    add-int/lit8 v4, v4, 0x36

    .line 37
    rem-int/lit8 v4, v4, 0x7f

    .line 39
    const/16 v5, 0x60

    .line 41
    if-ge v4, v5, :cond_0

    .line 43
    add-int/lit8 v4, v4, 0x20

    .line 45
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    int-to-char v2, v4

    .line 54
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v2

    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    monitor-exit p0

    .line 71
    return-void

    .line 72
    :goto_2
    monitor-exit p0

    .line 73
    throw p1
.end method
