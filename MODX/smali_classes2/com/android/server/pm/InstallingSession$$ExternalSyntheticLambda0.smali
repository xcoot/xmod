.class public final synthetic Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/InstallingSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallingSession;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstallingSession;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/InstallingSession;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;->run()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-wide/32 v1, 0x40000

    .line 26
    .line 27
    .line 28
    const-string/jumbo v3, "queueInstall"

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    const-string/jumbo v0, "startInstall"

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/android/server/pm/InstallRequest;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/server/pm/InstallingSession;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->handleStartCopy(Lcom/android/server/pm/InstallRequest;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->handleReturnCode(Lcom/android/server/pm/InstallRequest;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
