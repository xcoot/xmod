.class public final synthetic Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/GentleUpdateHelper;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroid/content/pm/PackageInstaller$InstallConstraints;

.field public final synthetic f$3:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/GentleUpdateHelper;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Ljava/util/concurrent/CompletableFuture;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/GentleUpdateHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$2:Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$3:Ljava/util/concurrent/CompletableFuture;

    .line 11
    .line 12
    iput-wide p5, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$4:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/GentleUpdateHelper;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 4
    .line 5
    iget-object v7, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$2:Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$3:Ljava/util/concurrent/CompletableFuture;

    .line 8
    .line 9
    iget-wide v5, p0, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda2;->f$4:J

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance p0, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;

    .line 15
    .line 16
    move-object v1, p0

    .line 17
    move-object v3, v7

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;-><init>(Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Ljava/util/concurrent/CompletableFuture;J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller$InstallConstraints;->isDeviceIdleRequired()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lcom/android/server/pm/GentleUpdateHelper;->mPendingIdleFutures:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/server/pm/GentleUpdateHelper;->scheduleIdleJob()V

    .line 38
    .line 39
    .line 40
    iget-object v2, v0, Lcom/android/server/pm/GentleUpdateHelper;->mHandler:Landroid/os/Handler;

    .line 41
    .line 42
    new-instance v3, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    invoke-direct {v3, v4, v1}, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-wide v4, Lcom/android/server/pm/GentleUpdateHelper;->PENDING_CHECK_MILLIS:J

    .line 49
    .line 50
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :goto_0
    new-instance v2, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda4;

    .line 61
    .line 62
    invoke-direct {v2, v0, p0}, Lcom/android/server/pm/GentleUpdateHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/GentleUpdateHelper;Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 66
    .line 67
    .line 68
    return-void
.end method
