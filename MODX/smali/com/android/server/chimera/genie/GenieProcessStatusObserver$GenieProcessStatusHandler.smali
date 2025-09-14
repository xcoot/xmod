.class public final Lcom/android/server/chimera/genie/GenieProcessStatusObserver$GenieProcessStatusHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/genie/GenieProcessStatusObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/genie/GenieProcessStatusObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver$GenieProcessStatusHandler;->this$0:Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    .line 3
    iget-object p1, p1, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mServiceThread:Lcom/android/server/ServiceThread;

    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    if-eqz p1, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver$GenieProcessStatusHandler;->this$0:Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    .line 8
    iget-object p1, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mContext:Landroid/content/Context;

    .line 10
    const-string v0, "GenieProcessStatusObserver"

    .line 12
    if-nez p1, :cond_1

    .line 14
    const-string p0, "Context is null"

    .line 16
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    move-result-object p1

    .line 24
    const-string/jumbo v1, "is_llm_running"

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2

    .line 34
    iput-boolean v2, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mIsLLMStatusCheck:Z

    .line 36
    const-string p0, "Timer expired, statuscheck is false"

    .line 38
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_2
    :goto_0
    return-void
.end method
