.class public final synthetic Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->getAccesesTimeHelper:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->visitor:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;

    .line 6
    .line 7
    const-string v1, "ForegroundServiceMgr"

    .line 8
    .line 9
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->accessTimePerOp:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string/jumbo v5, "op ["

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v5, "] access time"

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget v4, v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->filterUid:I

    .line 58
    .line 59
    invoke-virtual {p0, v4, v3}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->getAccessTimeOfOp(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    const-string/jumbo v0, "exception"

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method
