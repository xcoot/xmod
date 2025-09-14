.class public final synthetic Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

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
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-wide/32 v1, 0x40000

    .line 16
    .line 17
    .line 18
    const-string/jumbo v3, "queueInstall"

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "start"

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    new-instance v3, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    move v5, v4

    .line 43
    :goto_0
    if-ge v5, v0, :cond_0

    .line 44
    .line 45
    iget-object v6, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Lcom/android/server/pm/InstallingSession;

    .line 52
    .line 53
    new-instance v7, Lcom/android/server/pm/InstallRequest;

    .line 54
    .line 55
    invoke-direct {v7, v6}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/server/pm/InstallingSession;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v7}, Lcom/android/server/pm/InstallingSession;->handleStartCopy(Lcom/android/server/pm/InstallRequest;)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    :goto_1
    if-ge v4, v0, :cond_1

    .line 68
    .line 69
    iget-object v5, p0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->mChildInstallingSessions:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Lcom/android/server/pm/InstallingSession;

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    check-cast v6, Lcom/android/server/pm/InstallRequest;

    .line 82
    .line 83
    invoke-virtual {v5, v6}, Lcom/android/server/pm/InstallingSession;->handleReturnCode(Lcom/android/server/pm/InstallRequest;)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    new-instance v0, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;

    .line 97
    .line 98
    const/4 v1, 0x1

    .line 99
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;->run()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
