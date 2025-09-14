.class public final Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final constraints:Landroid/content/pm/PackageInstaller$InstallConstraints;

.field public final future:Ljava/util/concurrent/CompletableFuture;

.field public final mFinishTime:J

.field public final packageNames:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Ljava/util/concurrent/CompletableFuture;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->packageNames:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->constraints:Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->future:Ljava/util/concurrent/CompletableFuture;

    .line 9
    .line 10
    const-wide/32 p1, 0x240c8400

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2, p4, p5}, Ljava/lang/Math;->min(JJ)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    const-wide/16 p3, 0x0

    .line 18
    .line 19
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide p3

    .line 27
    add-long/2addr p3, p1

    .line 28
    iput-wide p3, p0, Lcom/android/server/pm/GentleUpdateHelper$PendingInstallConstraintsCheck;->mFinishTime:J

    .line 29
    .line 30
    return-void
.end method
