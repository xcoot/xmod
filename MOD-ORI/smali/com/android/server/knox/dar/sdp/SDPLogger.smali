.class public abstract Lcom/android/server/knox/dar/sdp/SDPLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.build.type"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string/jumbo v1, "eng"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-boolean v0, Lcom/android/server/knox/dar/sdp/SDPLogger;->DEBUG:Z

    .line 16
    .line 17
    new-instance v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/Thread;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    .line 23
    .line 24
    return-void
.end method

.method public static enqMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->cLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mState:I

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    sput v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mState:I

    .line 10
    .line 11
    new-instance v2, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/Thread;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v2, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->-$$Nest$madd(Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method
