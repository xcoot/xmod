.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/SystemServer;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/SystemServer;

    .line 3
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v0, "SystemServer"

    .line 10
    const-string v1, "WebViewFactoryPreparation"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 24
    const-string v2, "Zygote preload"

    .line 26
    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 32
    iget-object p0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 40
    move-result-wide v1

    .line 41
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceInterface;

    .line 43
    invoke-interface {p0}, Lcom/android/server/webkit/WebViewUpdateServiceInterface;->prepareWebViewInSystemServer()V

    .line 46
    sget-object p0, Lcom/android/server/webkit/WebViewUpdateService;->sPrepareWebViewInSystemServerLatency:Lcom/android/modules/expresslog/Histogram;

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 51
    move-result-wide v3

    .line 52
    sub-long/2addr v3, v1

    .line 53
    long-to-float v1, v3

    .line 54
    invoke-virtual {p0, v1}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 57
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 60
    return-void
.end method
