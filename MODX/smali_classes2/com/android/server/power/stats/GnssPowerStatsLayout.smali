.class public final Lcom/android/server/power/stats/GnssPowerStatsLayout;
.super Lcom/android/server/power/stats/BinaryStatePowerStatsLayout;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDeviceSignalLevelTimePosition:I

.field public mUidSignalLevelTimePosition:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/server/power/stats/BinaryStatePowerStatsLayout;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const-string v1, "level"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/power/stats/PowerStatsLayout;->addDeviceSection(IILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    iput v3, p0, Lcom/android/server/power/stats/GnssPowerStatsLayout;->mDeviceSignalLevelTimePosition:I

    .line 13
    .line 14
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/power/stats/PowerStatsLayout;->addUidSection(IILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/android/server/power/stats/GnssPowerStatsLayout;->mUidSignalLevelTimePosition:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final fromExtras(Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsLayout;->fromExtras(Landroid/os/PersistableBundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "dt-sig"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/android/server/power/stats/GnssPowerStatsLayout;->mDeviceSignalLevelTimePosition:I

    .line 11
    .line 12
    const-string/jumbo v0, "ut-sig"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/android/server/power/stats/GnssPowerStatsLayout;->mUidSignalLevelTimePosition:I

    .line 20
    .line 21
    return-void
.end method

.method public final toExtras(Landroid/os/PersistableBundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "dt-sig"

    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/power/stats/GnssPowerStatsLayout;->mDeviceSignalLevelTimePosition:I

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "ut-sig"

    .line 12
    .line 13
    .line 14
    iget p0, p0, Lcom/android/server/power/stats/GnssPowerStatsLayout;->mUidSignalLevelTimePosition:I

    .line 15
    .line 16
    invoke-virtual {p1, v0, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
