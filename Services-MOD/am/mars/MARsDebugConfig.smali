.class public abstract Lcom/android/server/am/mars/MARsDebugConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static DEBUG_DATABASE:Z

.field public static final DEBUG_ENG:Z

.field public static DEBUG_FILTER:Z

.field public static DEBUG_FREECESS:Z

.field public static final DEBUG_HIGH:Z

.field public static DEBUG_MARs:Z

.field public static final DEBUG_MID:Z

.field public static DEBUG_NETLINK:Z

.field public static DEBUG_OLAF:Z

.field public static final ENABLE_ALARM_WAKEUP_BLOCK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string/jumbo v0, "ro.boot.debug_level"

    .line 4
    const-string v1, ""

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 10
    const-string v3, "0x494d"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v2

    .line 16
    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MID:Z

    .line 18
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "0x4948"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    sput-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_HIGH:Z

    .line 30
    const-string/jumbo v1, "ro.build.type"

    .line 33
    const-string/jumbo v2, "user"

    .line 36
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x1

    .line 45
    const/4 v3, 0x0

    .line 46
    if-eqz v1, :cond_1

    .line 48
    const-string v1, "0x4f4c"

    .line 50
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move v0, v3

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    move v0, v2

    .line 64
    :goto_1
    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    .line 66
    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->ENABLE_ALARM_WAKEUP_BLOCK:Z

    .line 68
    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 70
    sput-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 72
    sput-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 74
    sput-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    .line 76
    sput-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    .line 78
    sput-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    .line 80
    return-void
.end method
