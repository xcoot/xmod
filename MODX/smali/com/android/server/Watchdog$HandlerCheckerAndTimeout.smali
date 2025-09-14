.class public final Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCustomTimeoutMillis:Ljava/util/Optional;

.field public final mHandler:Lcom/android/server/Watchdog$HandlerChecker;


# direct methods
.method public constructor <init>(Lcom/android/server/Watchdog$HandlerChecker;Ljava/util/Optional;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    .line 6
    iput-object p2, p0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mCustomTimeoutMillis:Ljava/util/Optional;

    .line 8
    return-void
.end method

.method public static withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    .line 3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;-><init>(Lcom/android/server/Watchdog$HandlerChecker;Ljava/util/Optional;)V

    .line 10
    return-object v0
.end method
