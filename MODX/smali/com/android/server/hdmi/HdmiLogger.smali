.class public final Lcom/android/server/hdmi/HdmiLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final sLogger:Ljava/lang/ThreadLocal;


# instance fields
.field public final mErrorTimingCache:Ljava/util/HashMap;

.field public final mWarningTimingCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "HDMI"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/hdmi/HdmiLogger;->DEBUG:Z

    .line 10
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 12
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 15
    sput-object v0, Lcom/android/server/hdmi/HdmiLogger;->sLogger:Ljava/lang/ThreadLocal;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiLogger;->mWarningTimingCache:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiLogger;->mErrorTimingCache:Ljava/util/HashMap;

    .line 18
    return-void
.end method

.method public static final varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/hdmi/HdmiLogger;->getLogger()Lcom/android/server/hdmi/HdmiLogger;

    .line 4
    array-length v0, p1

    .line 5
    if-lez v0, :cond_0

    .line 7
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    :cond_0
    sget-boolean p1, Lcom/android/server/hdmi/HdmiLogger;->DEBUG:Z

    .line 13
    if-eqz p1, :cond_1

    .line 15
    const-string p1, "HDMI"

    .line 17
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_1
    return-void
.end method

.method public static final varargs error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 7
    invoke-static {}, Lcom/android/server/hdmi/HdmiLogger;->getLogger()Lcom/android/server/hdmi/HdmiLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    array-length p1, p2

    if-lez p1, :cond_0

    .line 9
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 10
    :cond_0
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiLogger;->mErrorTimingCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->updateLog(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    const-string p1, "HDMI"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static final varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/hdmi/HdmiLogger;->getLogger()Lcom/android/server/hdmi/HdmiLogger;

    move-result-object v0

    .line 2
    array-length v1, p1

    if-lez v1, :cond_0

    .line 3
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4
    :cond_0
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiLogger;->mErrorTimingCache:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->updateLog(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    const-string p1, "HDMI"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static getLogger()Lcom/android/server/hdmi/HdmiLogger;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/hdmi/HdmiLogger;->sLogger:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/server/hdmi/HdmiLogger;

    .line 9
    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/android/server/hdmi/HdmiLogger;

    .line 13
    invoke-direct {v1}, Lcom/android/server/hdmi/HdmiLogger;-><init>()V

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 19
    :cond_0
    return-object v1
.end method

.method public static updateLog(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Landroid/util/Pair;

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_2

    .line 14
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 16
    check-cast v4, Ljava/lang/Long;

    .line 18
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 21
    move-result-wide v4

    .line 22
    sub-long v4, v0, v4

    .line 24
    const-wide/16 v6, 0x4e20

    .line 26
    cmp-long v4, v4, v6

    .line 28
    if-lez v4, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/util/Pair;

    .line 37
    if-eqz v0, :cond_1

    .line 39
    new-instance v1, Landroid/util/Pair;

    .line 41
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 43
    check-cast v2, Ljava/lang/Long;

    .line 45
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 47
    check-cast v0, Ljava/lang/Integer;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result v0

    .line 53
    add-int/2addr v0, v3

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v0

    .line 58
    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_1
    const-string p0, ""

    .line 66
    return-object p0

    .line 67
    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    const-string v5, "["

    .line 71
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    if-nez v2, :cond_3

    .line 76
    move v2, v3

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 80
    check-cast v2, Ljava/lang/Integer;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 85
    move-result v2

    .line 86
    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    const-string v2, "]:"

    .line 91
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v2

    .line 101
    new-instance v4, Landroid/util/Pair;

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    move-result-object v0

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    move-result-object v1

    .line 111
    invoke-direct {v4, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p1, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-object v2
.end method

.method public static final varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/hdmi/HdmiLogger;->getLogger()Lcom/android/server/hdmi/HdmiLogger;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, p1

    .line 6
    if-lez v1, :cond_0

    .line 8
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    :cond_0
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiLogger;->mWarningTimingCache:Ljava/util/HashMap;

    .line 14
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->updateLog(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 24
    const-string p1, "HDMI"

    .line 26
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_1
    return-void
.end method
