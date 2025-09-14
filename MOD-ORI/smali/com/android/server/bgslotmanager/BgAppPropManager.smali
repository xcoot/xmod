.class public final Lcom/android/server/bgslotmanager/BgAppPropManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static TOTAL_MEMORY_2ND:I

.field public static final TOTAL_MEMORY_3RD:I

.field public static final mTotalMemMb:J


# instance fields
.field public mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public mProcessList:Lcom/android/server/am/ProcessList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x100000

    .line 6
    .line 7
    .line 8
    div-long/2addr v0, v2

    .line 9
    sput-wide v0, Lcom/android/server/bgslotmanager/BgAppPropManager;->mTotalMemMb:J

    .line 10
    .line 11
    const-string/jumbo v0, "ro.slmk.dha_2ndprop_thMB"

    .line 12
    .line 13
    .line 14
    const-string v1, "4096"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sput v0, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    .line 25
    .line 26
    const-string/jumbo v0, "ro.slmk.3rd.over_thMB"

    .line 27
    .line 28
    .line 29
    const-string v1, "9999999"

    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sput v0, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_3RD:I

    .line 40
    .line 41
    return-void
.end method

.method public static getSlmkPropertyBool(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static getSlmkPropertyInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static getSlmkPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string/jumbo v0, "ro.slmk."

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget v0, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    .line 13
    .line 14
    int-to-long v0, v0

    .line 15
    sget-wide v2, Lcom/android/server/bgslotmanager/BgAppPropManager;->mTotalMemMb:J

    .line 16
    .line 17
    cmp-long v0, v2, v0

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    const-string/jumbo v0, "ro.slmk.2nd."

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_0
    sget v0, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_3RD:I

    .line 33
    .line 34
    int-to-long v0, v0

    .line 35
    cmp-long v0, v2, v0

    .line 36
    .line 37
    if-lez v0, :cond_1

    .line 38
    .line 39
    const-string/jumbo v0, "ro.slmk.3rd."

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :cond_1
    return-object p1
.end method
