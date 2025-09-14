.class public final Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final mapAppPackages:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Ljava/com/android/server/am/mars/database/MARsListManager$ListManagerHolder;->INSTANCE:Ljava/com/android/server/am/mars/database/MARsListManager;

    .line 6
    iget-object v0, v0, Ljava/com/android/server/am/mars/database/MARsListManager;->mLocationPackages:Ljava/util/Set;

    .line 8
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;->mapAppPackages:Ljava/util/Set;

    .line 10
    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 4

    .line 1
    sget-boolean p3, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 3
    sget-boolean p3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 5
    sget-object p3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 7
    invoke-virtual {p3, p2}, Lcom/android/server/am/MARsPolicyManager;->getForegroundServiceStartTime(I)J

    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 13
    cmp-long v0, v0, v2

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 23
    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object p2

    .line 29
    iget-object v2, v2, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    if-eqz v2, :cond_3

    .line 33
    invoke-virtual {v2, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_3

    .line 39
    const/16 p2, 0xf

    .line 41
    if-eqz v0, :cond_2

    .line 43
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 49
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;->mapAppPackages:Ljava/util/Set;

    .line 51
    check-cast p0, Ljava/util/HashSet;

    .line 53
    invoke-virtual {p0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_2

    .line 59
    :cond_1
    return p2

    .line 60
    :cond_2
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 63
    move-result p0

    .line 64
    if-eqz p0, :cond_3

    .line 66
    invoke-virtual {p3, p1, p4}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_3

    .line 72
    return p2

    .line 73
    :cond_3
    return v1
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method
