.class public abstract Lcom/samsung/android/server/pm/install/ThermalInstallThrottlingUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getInstallDelayByThermal(I)J
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return-wide v1

    .line 7
    :cond_0
    const-string p0, "dev.ssrm.app.install.standby"

    .line 8
    .line 9
    invoke-static {p0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    cmp-long p0, v3, v1

    .line 14
    .line 15
    if-lez p0, :cond_1

    .line 16
    .line 17
    const-string p0, "Have install standby: "

    .line 18
    .line 19
    const-string v0, "PackageManager"

    .line 20
    .line 21
    invoke-static {p0, v3, v4, v0}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-wide v1, v3

    .line 25
    :cond_1
    return-wide v1
.end method
