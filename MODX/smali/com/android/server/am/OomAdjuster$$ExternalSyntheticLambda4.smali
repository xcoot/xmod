.class public final synthetic Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ServiceThread;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ServiceThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/ServiceThread;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/ServiceThread;

    .line 3
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadId()I

    .line 6
    move-result p0

    .line 7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const/16 v0, 0xa

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x5

    .line 15
    :goto_0
    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 18
    return-void
.end method
