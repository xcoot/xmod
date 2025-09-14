.class public final synthetic Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/InstallingSession;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallingSession;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/InstallingSession;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/InstallingSession;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/pm/InstallRequest;

    .line 11
    .line 12
    iget v1, v0, Lcom/android/server/pm/InstallingSession;->mRet:I

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0, v2}, Lcom/android/server/pm/InstallingSession;->processInstallRequests(Ljava/util/List;Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/InstallingSession;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Ljava/util/List;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/InstallingSession;->processApkInstallRequests(Ljava/util/List;Z)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/InstallingSession;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Ljava/util/List;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const-wide/32 v1, 0x40000

    .line 48
    .line 49
    .line 50
    :try_start_0
    const-string v3, "installApexPackages"

    .line 51
    .line 52
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p0}, Lcom/android/server/pm/InstallingSession;->installApexPackages(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
