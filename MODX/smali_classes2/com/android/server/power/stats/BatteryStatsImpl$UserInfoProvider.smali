.class public abstract Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public userIds:[I


# virtual methods
.method public exists(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;->userIds:[I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x1

    .line 11
    :goto_0
    return p0
.end method

.method public final refreshUserIds()V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/android/server/am/BatteryStatsService$3;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$3;->umi:Lcom/android/server/pm/UserManagerInternal;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/android/server/am/BatteryStatsService$3;->umi:Lcom/android/server/pm/UserManagerInternal;

    .line 17
    .line 18
    :cond_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService$3;->umi:Lcom/android/server/pm/UserManagerInternal;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$UserInfoProvider;->userIds:[I

    .line 29
    .line 30
    return-void
.end method
